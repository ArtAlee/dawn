#version 310 es
#extension GL_AMD_gpu_shader_half_float: require

f16vec3 tint_float_modulo(f16vec3 x, f16vec3 y) {
  return (x - (y * trunc((x / y))));
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  f16vec3 a = f16vec3(1.0hf, 2.0hf, 3.0hf);
  float16_t b = 4.0hf;
  f16vec3 r = tint_float_modulo(a, f16vec3(b));
}
