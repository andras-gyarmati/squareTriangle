Triangle t;
Square s;

void setup() {
  size(1000, 1000);
  t = new Triangle();
  s = new Square();
}

void draw() {
  background(20);
  translate(width / 2, height / 2);
  t.display();
  s.display();
}
