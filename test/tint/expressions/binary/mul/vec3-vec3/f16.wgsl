// flags:  --hlsl-shader-model 62
enable f16;
@compute @workgroup_size(1)
fn f() {
    let a = vec3<f16>(1.h, 2.h, 3.h);
    let b = vec3<f16>(4.h, 5.h, 6.h);
    let r : vec3<f16> = a * b;
}
