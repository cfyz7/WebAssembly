const sleep = m => new Promise(r => setTimeout(r, m));
var output = null;
var add_message;

var log_add_message = (a, b, sum) => {
  if (output == null) {
    console.log('page load not complete: log_add_message');
    return
  }
  output.innerHTML += `${a} + ${b} = ${sum}<br>`
};

let importObject = {
  env: {
    log_add_message,
  }
};

(async () => {
  await sleep(5000);
  let obj = await WebAssembly.instantiateStreaming(fetch('add_message.wasm'), importObject);
  add_message_function = obj.instance.exports.add_message;
  let btn = document.getElementById("add_message_button");
  btn.style.display = "block";
}) ();

function onPageLoad() {
  (async () => {
    await sleep(5000)
    output = document.getElementById("output")
  }) ();
}


// const btn = document.getElementById('add_message_button');
// btn.addEventListener('click', add_message_function(
//   document.getElementById('a_val').value,
//   document.getElementById('b_val').value)
// ) 
  
