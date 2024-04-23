#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
#include <SAParams.h>
uniform vec4 CB0[57];
uniform vec4 CB4[24];
uniform vec4 CB3[1];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    vec4 f2 = mix(vec4(f0.xyz, VARYING2.w * f1), vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w), vec4(CB3[0].x));
    vec4 f3 = texture(NormalMapTexture, VARYING0);
    vec2 f4 = f3.wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    vec3 f6 = mix(vec3(0.0, 0.0, 1.0), vec3(f5, sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f7 = texture(SpecularMapTexture, VARYING0);
    float f8 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f9 = VARYING6.xyz * f8;
    vec3 f10 = VARYING5.xyz * f8;
    vec3 f11 = normalize(((f9 * f6.x) + ((cross(f10, f9) * VARYING6.w) * f6.y)) + (f10 * f6.z));
    vec3 f12 = -CB0[16].xyz;
    float f13 = dot(f11, f12);
    vec3 f14 = f2.xyz;
    vec3 f15 = f14 * f14;
    vec4 f16 = f2;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    float f19 = length(VARYING4.xyz);
    vec3 f20 = VARYING4.xyz / vec3(f19);
    float f21 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f22 = 0.08900000154972076416015625 + (f7.y * 0.9110000133514404296875);
    vec3 f23 = -f20;
    vec3 f24 = reflect(f23, f11);
    float f25 = f7.x * f21;
    vec3 f26 = mix(vec3(0.039999999105930328369140625), f18.xyz, vec3(f25));
    vec3 f27 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f28 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f29 = VARYING3.yzx - (VARYING3.yzx * f28);
    vec4 f30 = texture(LightMapTexture, f29);
    vec4 f31 = texture(LightGridSkylightTexture, f29);
    vec4 f32 = vec4(clamp(f28, 0.0, 1.0));
    vec4 f33 = mix(f30, vec4(0.0), f32);
    vec4 f34 = mix(f31, vec4(1.0), f32);
    vec3 f35 = f33.xyz * (f33.w * 120.0);
    float f36 = f34.x;
    float f37 = f34.y;
    vec3 f38 = f27 - CB0[46].xyz;
    vec3 f39 = f27 - CB0[47].xyz;
    vec3 f40 = f27 - CB0[48].xyz;
    vec4 f41 = vec4(f27, 1.0) * mat4(CB4[((dot(f38, f38) < CB0[46].w) ? 0 : ((dot(f39, f39) < CB0[47].w) ? 1 : ((dot(f40, f40) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB4[((dot(f38, f38) < CB0[46].w) ? 0 : ((dot(f39, f39) < CB0[47].w) ? 1 : ((dot(f40, f40) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB4[((dot(f38, f38) < CB0[46].w) ? 0 : ((dot(f39, f39) < CB0[47].w) ? 1 : ((dot(f40, f40) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB4[((dot(f38, f38) < CB0[46].w) ? 0 : ((dot(f39, f39) < CB0[47].w) ? 1 : ((dot(f40, f40) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f42 = textureLod(ShadowAtlasTexture, f41.xy, 0.0);
    vec2 f43 = vec2(0.0);
    f43.x = CB0[51].z;
    vec2 f44 = f43;
    f44.y = CB0[51].w;
    float f45 = (2.0 * f41.z) - 1.0;
    float f46 = exp(CB0[51].z * f45);
    float f47 = -exp((-CB0[51].w) * f45);
    vec2 f48 = (f44 * CB0[52].y) * vec2(f46, f47);
    vec2 f49 = f48 * f48;
    float f50 = f42.x;
    float f51 = max(f42.y - (f50 * f50), f49.x);
    float f52 = f46 - f50;
    float f53 = f42.z;
    float f54 = max(f42.w - (f53 * f53), f49.y);
    float f55 = f47 - f53;
    float f56 = (f13 * CB0[14].w) * (((f13 * CB0[52].x) > 0.0) ? mix(min((f46 <= f50) ? 1.0 : clamp(((f51 / (f51 + (f52 * f52))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f47 <= f53) ? 1.0 : clamp(((f54 / (f54 + (f55 * f55))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f37, clamp((length(f27 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f37);
    vec3 f57;
    vec3 f58;
    if (f56 > 0.0)
    {
        vec3 f59 = normalize(f20 + f12);
        float f60 = clamp(f56, 0.0, 1.0);
        float f61 = f22 * f22;
        float f62 = max(0.001000000047497451305389404296875, dot(f11, f59));
        float f63 = dot(f12, f59);
        float f64 = 1.0 - f63;
        float f65 = f64 * f64;
        float f66 = (f65 * f65) * f64;
        vec3 f67 = vec3(f66) + (f26 * (1.0 - f66));
        float f68 = f61 * f61;
        float f69 = (((f62 * f68) - f62) * f62) + 1.0;
        float f70 = 1.0 - f25;
        f58 = f35 + (((vec3(f70) - (f67 * (f21 * f70))) * CB0[15].xyz) * f60);
        f57 = ((f67 * (((f68 + (f68 * f68)) / (((f69 * f69) * ((f63 * 3.0) + 0.5)) * ((f62 * 0.75) + 0.25))) * f60)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f58 = f35;
        f57 = vec3(0.0);
    }
    float f71 = f22 * 5.0;
    vec3 f72 = vec4(f24, f71).xyz;
    vec3 f73 = textureLod(PrefilteredEnvIndoorTexture, f72, f71).xyz;
    vec3 f74;
    if (CB0[32].w == 0.0)
    {
        f74 = f73;
    }
    else
    {
        f74 = mix(f73, textureLod(PrefilteredEnvBlendTargetTexture, f72, f71).xyz, vec3(CB0[32].w));
    }
    vec4 f75 = texture(PrecomputedBRDFTexture, vec2(f22, max(9.9999997473787516355514526367188e-05, dot(f11, f20))));
    float f76 = f75.x;
    float f77 = f75.y;
    vec3 f78 = ((f26 * f76) + vec3(f77)) / vec3(f76 + f77);
    float f79 = 1.0 - f25;
    vec3 f80 = f11 * f11;
    bvec3 f81 = lessThan(f11, vec3(0.0));
    vec3 f82 = vec3(f81.x ? f80.x : vec3(0.0).x, f81.y ? f80.y : vec3(0.0).y, f81.z ? f80.z : vec3(0.0).z);
    vec3 f83 = f80 - f82;
    float f84 = f83.x;
    float f85 = f83.y;
    float f86 = f83.z;
    float f87 = f82.x;
    float f88 = f82.y;
    float f89 = f82.z;
    vec3 f90 = (((f58 + (((vec3(f79) - (f78 * (f21 * f79))) * (((((((CB0[40].xyz * f84) + (CB0[42].xyz * f85)) + (CB0[44].xyz * f86)) + (CB0[41].xyz * f87)) + (CB0[43].xyz * f88)) + (CB0[45].xyz * f89)) + (((((((CB0[34].xyz * f84) + (CB0[36].xyz * f85)) + (CB0[38].xyz * f86)) + (CB0[35].xyz * f87)) + (CB0[37].xyz * f88)) + (CB0[39].xyz * f89)) * f36))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f36 * (2.0 - CB0[14].w)))) * 1.0)) * f18.xyz) + (f57 + ((mix(f74, textureLod(PrefilteredEnvTexture, f72, f71).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f24.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f36)) * f78) * f21));
    vec4 f91 = vec4(0.0);
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    float f94 = f2.w;
    vec4 f95 = f93;
    f95.w = f94;
    float f96 = clamp(exp2((CB0[18].z * f19) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f97 = textureLod(PrefilteredEnvTexture, vec4(f23, 0.0).xyz, max(CB0[18].y, f96) * 5.0).xyz;
    bvec3 f98 = bvec3(!(CB0[18].w == 0.0));
    vec3 f99 = mix(vec3(f98.x ? CB0[19].xyz.x : f97.x, f98.y ? CB0[19].xyz.y : f97.y, f98.z ? CB0[19].xyz.z : f97.z), f95.xyz, vec3(f96));
    vec4 f100 = f95;
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec4 f102 = f101;
    f102.z = f99.z;
    vec3 f103 = sqrt(clamp(f102.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f104 = f102;
    f104.x = f103.x;
    vec4 f105 = f104;
    f105.y = f103.y;
    vec4 f106 = f105;
    f106.z = f103.z;
    vec4 f107 = f106;
    f107.w = f94;
    _entryPointOutput = f107;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
