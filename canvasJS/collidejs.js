var animate_callback;
const out_tag = document.getElementById('out');
const cnvs_size = 1024 | 0;

const noh_color = 0xff00ff00 | 0;
const hit_color = 0xff0000ff | 0;

const obj_start = cnvs_size * cnvs_size * 4;
const obj_size = 8 | 0;
const obj_cnt = 3000;

const canvas = document.getElementById("canvas");
const ctx = canvas.getContext("2d");

class Collider {
  constructor() {
    this.x = Math.random() * cnvs_size;
    this.y = Math.random() * cnvs_size;
    this.xv = (Math.round(Math.random() * 4) - 2);
    this.yv = (Math.round(Math.random() * 4) - 2);
    this.color = "green";
  }

  move = () => {
    this.x += this.xv;
    this.y += this.yv;
    this.x %= 1024;
    this.y %= 1024;
  }

  draw = () => {
    ctx.beginPath();
    ctx.fillStyle = this.color;
    ctx.fillRect(this.x, this.y, obj_size, obj_size)
    ctx.stroke();
  }

  hitTest = (c2) => {
    let x_dist = this.x - c2.x;
    let y_dist = this.y - c2.y;
    if (Math.abs(x_dist) <= obj_size && Math.abs(y_dist) <= obj_size) {
      this.color = "red";
      return true
    }
    else {
      this.color = "green";
    }
    return false
  }
}

let collider_array = new Array();
for (let i = 0; i < obj_cnt; i++) {
  collider_array.push(new Collider())
}

let animate_count = 0;

function animate() {
  ctx.clearRect(0, 0, canvas.width, canvas.height)
  for (let i = 0; i < collider_array.length; i++) {
    collider_array[i].move();
  }
  for (let i = 0; i < collider_array.length; i++) {
    for (let j = 0; j < collider_array.length; j++) {
      if (i === j) {
        continue;
      }
      if (collider_array[i].hitTest(collider_array[j])) {
        break;
      }
    }
    collider_array[i].draw()
  }
  requestAnimationFrame(animate)
}
requestAnimationFrame(animate)