const memory = new WebAssembly.Memory({ initial: 1});
var output = null;

var setOutput = (number) => {
  console.log('function not available');
  return 0;
};

function setNumbers(number) {
  if (output == null) {
    return;
  }
  let len = setOutput(number);
  let bytes = new Uint8Array(memory.buffer, 1024, len);
  output.innerHTML = new TextDecoder('utf-8').decode(bytes);
};

function onPageLoad() {
  output = document.getElementById('output');
  var message_num = 0;
}

let importObject = {
  env: {
    buffer: memory
  }
};

(async () => {
  let obj = await WebAssembly.instantiateStreaming(fetch('hex_and_binary.wasm'),importObject);
  setOutput = obj.instance.exports.setOutput;
  let btn = document.getElementById("set_numbers_button");
  btn.style.display = 'block';
}) ();