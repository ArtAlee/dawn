#version 310 es


struct S {
  int m;
  uint n[4];
};

uint f() {
  S a = S(0, uint[4](0u, 0u, 0u, 0u));
  return a.n[2u];
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
}
