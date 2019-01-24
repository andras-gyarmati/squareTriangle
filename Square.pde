class Square {
  ArrayList<PVector> ps;
  PVector pos;
  float rotation;

  Square() {
    ps = new ArrayList<PVector>();
    ps.add(new PVector(-20, -20));
    ps.add(ps.get(ps.size() - 1).copy().rotate(PI / 2));
    ps.add(ps.get(ps.size() - 1).copy().rotate(PI / 2));
    ps.add(ps.get(ps.size() - 1).copy().rotate(PI / 2));
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
