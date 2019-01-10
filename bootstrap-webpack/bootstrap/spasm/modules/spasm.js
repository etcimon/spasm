function abort(what,file,line) {
    throw `ABORT: $what @ $file:$line`;
}

const utf8Decoder = new TextDecoder('utf-8');
const utf8Encoder = new TextEncoder();
const memory = new WebAssembly.Memory({initial:16*16, maximum:16*16});

let lastPtr = 3;
let objects = {1: document, 2: window};
const spasm = {
    memory: memory,
    heapi32s: new Int32Array(memory.buffer),
    heapi32u: new Uint32Array(memory.buffer),
    heapi16s: new Int16Array(memory.buffer),
    heapi16u: new Uint16Array(memory.buffer),
    heapi8s: new Int8Array(memory.buffer),
    heapi8u: new Uint8Array(memory.buffer),
    heapf32: new Float32Array(memory.buffer),
    heapf64: new Float64Array(memory.buffer),
    instance: null,
    init: (modules) => {
        let exports = {env: Object.assign.apply(null,Object.keys(modules).map(key=>modules[key].jsExports).filter(a=>!!a))};
        spasm.encode = Object.assign.apply(spasm.encoders, Objects.keys(modules).map(key=>modules[key].encoders).filter(a=>!!a));
        spasm.decode = Object.assign.apply(spasm.decoders, Objects.keys(modules).map(key=>modules[key].decoders).filter(a=>!!a));
        WebAssembly.instantiateStreaming(fetch('@@targetProjectName@@'), exports)
            .then(obj => {
                spasm.instance = obj.instance;
                obj.instance.exports._start();
            });
    },
    objects,
    addObject: (obj) => {
        if (obj === null) return 0;
        if (obj.wasmPtr !== undefined) return obj.wasmPtr;
        objects[++lastPtr] = obj;
        obj.wasmId = lastPtr;
        return lastPtr;
    }
}

spasm.encoders = {
    string: (ptr, val) => {
        const encodedString = utf8Encoder.encode(val);
        const buffer = spasm.instance.exports.allocString(encodedString.length);
        const asBytes = new Uint8Array(spasm.memory.buffer, buffer, encodedString.length);
        spasm.heapi32u[u8ptr / 4] = encodedString.length;
        spasm.heapi32u[(u8ptr / 4)+1] = buffer;
        asBytes.set(encodedString);
        return u8ptr;
    }
}
spasm.decoders = {
    string: (len, offset) => {
        return utf8Decoder.decode(new DataView(spasm.memory.buffer,offset,len));
    }
}
spasm.jsExports = {
    onOutOfMemoryError: () => abort("Out of memory exception"),
    _d_assert: (file,line) => abort("assert",file,line),
    doLog: arg => console.log(arg),
    memory: spasm.base,
    __assert: function(){},
    _Unwind_Resume: function() {
        console.log(arguments);
    },
    _d_dynamic_cast: function() {
        console.log(arguments)
    }
};

export default spasm;
