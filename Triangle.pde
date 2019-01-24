class Triangle {
  ArrayList<PVector> ps;
  PVector pos;
  float rotation;

  Triangle() {
    ps = new ArrayList<PVector>();
    ps.add(new PVector(-20, 0));
    ps.add(ps.get(ps.size() - 1).copy().rotate(TWO_PI / 3));
    ps.add(ps.get(ps.size() - 1).copy().rotate(TWO_PI / 3));
    pos = new PVector(0, 0);
    rotation = 0;
  }

  void display() {
    stroke(200);
    noFill();
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(rotation);
    beginShape();
    for (PVector p : ps) {
      vertex(p.x, p.y);
    }
    endShape(CLOSE);
    popMatrix();
  }
}
