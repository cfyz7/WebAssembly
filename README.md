wat2wasm test.wat
wasm-opt test.wasm -O3 -o test-opt.wasm
wasm-opt tets.wasm -Oz -o test-z.wasm ---------- делает файл меньшего обьёма
wasm2wat test-opt.wasm
node --print-bytecode --print-bytecode-filter=bytecode_test print_bytecode.js

asc as_add.ts -Oz -o as_add.wat
npm install @assemblyscript/loader --save
asc as_concat.ts --exportRuntime -Oz -o as_concat.wasm --------- exportRuntime нужен для передачи строк в модуль WebAssembly
asc vector_loader.ts -o vector_loader.wasm
