export class Vector2D {
  private x: number;
  private y: number;

  constructor(x: number, y: number) {
    this.x = x;
    this.y = y;
  }

  Magnitude(): number {
    return Math.sqrt(this.x * this.x + this.y * this.y);
  }
}

