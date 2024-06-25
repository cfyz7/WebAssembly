const fs = require('fs');
const bytes = fs.readFileSync(__dirname + '/two_complement.wasm');

const val = parseInt(process.argv[2]);
(async () => {
  const obj = await WebAssembly.instantiate(new Uint8Array(bytes));
  let result = obj.instance.exports.two_complement(val)
  console.log(result)
}) ()