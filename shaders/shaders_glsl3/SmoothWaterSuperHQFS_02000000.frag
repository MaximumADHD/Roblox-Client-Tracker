#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[58];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec2 VARYING2;
in vec2 VARYING3;
in vec2 VARYING4;
in vec3 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(dot(step(CB0[24].xyz, abs(VARYING5 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture(LightGridSkylightTexture, f1), vec4(1.0), f2);
    float f5 = f4.x;
    float f6 = f4.y;
    vec4 f7 = vec4(CB3[0].w);
    vec4 f8 = ((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), f7) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), f7) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), f7) * VARYING0.z);
    vec2 f9 = f8.wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    float f11 = f8.x;
    vec3 f12 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f13 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f12) * f10.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f12) * f10.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0)))), f11);
    vec3 f14 = f13.xyz;
    vec3 f15 = mix(VARYING6.xyz, f14, vec3(0.25));
    vec3 f16 = VARYING7.xyz / vec3(sqrt(dot(VARYING7.xyz, VARYING7.xyz)));
    vec3 f17 = -f16;
    vec3 f18 = reflect(f17, f15);
    vec3 f19 = f14 * f14;
    bvec3 f20 = lessThan(f14, vec3(0.0));
    vec3 f21 = vec3(f20.x ? f19.x : vec3(0.0).x, f20.y ? f19.y : vec3(0.0).y, f20.z ? f19.z : vec3(0.0).z);
    vec3 f22 = f19 - f21;
    float f23 = f22.x;
    float f24 = f22.y;
    float f25 = f22.z;
    float f26 = f21.x;
    float f27 = f21.y;
    float f28 = f21.z;
    vec2 f29 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f30 = CB0[50].xy * 0.5;
    vec2 f31 = f30 / CB0[50].zw;
    vec2 f32 = f29 + f31;
    vec2 f33 = (f29 + (f13.xz * 0.0500000007450580596923828125)) + f31;
    vec2 f34 = (vec2(clamp(f32.x, 0.0, 1.0), clamp(f32.y, 0.0, 1.0)) * CB0[50].zw) - f30;
    vec2 f35 = (vec2(clamp(f33.x, 0.0, 1.0), clamp(f33.y, 0.0, 1.0)) * CB0[50].zw) - f30;
    float f36 = texture(GBufferDepthTexture, f35).x * 500.0;
    float f37 = clamp(f36 - VARYING8.w, 0.0, 1.0);
    vec3 f38 = mix(texture(GBufferColorTexture, f34).xyz, texture(GBufferColorTexture, f35).xyz, vec3(f37));
    float f39 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f40 = vec4(f18, 0.0);
    vec4 f41 = f40 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f42 = (f41.xy * 0.5) + vec2(0.5 * f41.w);
    vec4 f43 = f41;
    f43.x = f42.x;
    vec4 f44 = f43;
    f44.y = f42.y;
    float f45 = VARYING8.w * (-0.20000000298023223876953125);
    float f46 = 1.0 + clamp(0.0, f45, f39);
    vec4 f47 = VARYING8 + (f44 * f46);
    float f48 = f47.w;
    vec2 f49 = (f47.xy / vec2(f48)) + f31;
    float f50 = f46 + clamp((texture(GBufferDepthTexture, (vec2(clamp(f49.x, 0.0, 1.0), clamp(f49.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f48, f45, f39);
    vec4 f51 = VARYING8 + (f44 * f50);
    float f52 = f51.w;
    vec2 f53 = (f51.xy / vec2(f52)) + f31;
    float f54 = f50 + clamp((texture(GBufferDepthTexture, (vec2(clamp(f53.x, 0.0, 1.0), clamp(f53.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f52, f45, f39);
    vec4 f55 = VARYING8 + (f44 * f54);
    float f56 = f55.w;
    vec2 f57 = (f55.xy / vec2(f56)) + f31;
    float f58 = f54 + clamp((texture(GBufferDepthTexture, (vec2(clamp(f57.x, 0.0, 1.0), clamp(f57.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f56, f45, f39);
    vec4 f59 = VARYING8 + (f44 * f58);
    float f60 = f59.w;
    vec2 f61 = (f59.xy / vec2(f60)) + f31;
    float f62 = f58 + clamp((texture(GBufferDepthTexture, (vec2(clamp(f61.x, 0.0, 1.0), clamp(f61.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f60, f45, f39);
    vec4 f63 = VARYING8 + (f44 * f62);
    float f64 = f63.w;
    vec2 f65 = (f63.xy / vec2(f64)) + f31;
    float f66 = f62 + clamp((texture(GBufferDepthTexture, (vec2(clamp(f65.x, 0.0, 1.0), clamp(f65.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f64, f45, f39);
    vec4 f67 = VARYING8 + (f44 * f66);
    float f68 = f67.w;
    vec2 f69 = (f67.xy / vec2(f68)) + f31;
    float f70 = f66 + clamp((texture(GBufferDepthTexture, (vec2(clamp(f69.x, 0.0, 1.0), clamp(f69.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f68, f45, f39);
    vec4 f71 = VARYING8 + (f44 * f70);
    float f72 = f71.w;
    vec2 f73 = (f71.xy / vec2(f72)) + f31;
    vec4 f74 = VARYING8 + (f44 * (f70 + clamp((texture(GBufferDepthTexture, (vec2(clamp(f73.x, 0.0, 1.0), clamp(f73.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f72, f45, f39)));
    float f75 = f74.w;
    vec2 f76 = (f74.xy / vec2(f75)) + f31;
    vec2 f77 = (vec2(clamp(f76.x, 0.0, 1.0), clamp(f76.y, 0.0, 1.0)) * CB0[50].zw) - f30;
    vec3 f78 = texture(GBufferColorTexture, f77).xyz;
    float f79 = 0.08900000154972076416015625 + (f11 * 0.9110000133514404296875);
    vec3 f80 = -CB0[16].xyz;
    vec3 f81 = normalize(f16 + f80);
    float f82 = f79 * f79;
    float f83 = max(0.001000000047497451305389404296875, dot(f14, f81));
    float f84 = dot(f80, f81);
    float f85 = 1.0 - f84;
    float f86 = f85 * f85;
    float f87 = (f86 * f86) * f85;
    float f88 = f82 * f82;
    float f89 = (((f83 * f88) - f83) * f83) + 1.0;
    vec3 f90 = mix(mix((f38 * f38) * CB0[20].x, ((min((f3.xyz * (f3.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f5)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f23) + (CB0[42].xyz * f24)) + (CB0[44].xyz * f25)) + (CB0[41].xyz * f26)) + (CB0[43].xyz * f27)) + (CB0[45].xyz * f28)) + (((((((CB0[34].xyz * f23) + (CB0[36].xyz * f24)) + (CB0[38].xyz * f25)) + (CB0[35].xyz * f26)) + (CB0[37].xyz * f27)) + (CB0[39].xyz * f28)) * f5))) + (CB0[15].xyz * f6)) * CB3[1].xyz, vec3(clamp(clamp(((mix(texture(GBufferDepthTexture, f34).x * 500.0, f36, f37) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f40.xyz, 0.0).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f18.y * 1.58823525905609130859375, 0.0, 1.0)))) * f5, (f78 * f78) * CB0[20].x, vec3((((float(abs(f77.x - 0.5) < 0.550000011920928955078125) * float(abs(f77.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f75) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f77).x * 500.0) - f75) < 10.0)) * float(f41.w > 0.0))), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f15, f16))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f87) + (vec3(0.0199999995529651641845703125) * (1.0 - f87))) * (((f88 + (f88 * f88)) / (((f89 * f89) * ((f84 * 3.0) + 0.5)) * ((f83 * 0.75) + 0.25))) * clamp(dot(f14, f80) * f6, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f91 = vec4(0.0);
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec4 f94 = f93;
    f94.w = 1.0;
    vec3 f95 = textureLod(PrefilteredEnvTexture, vec4(f17, 0.0).xyz, max(CB0[18].y, VARYING6.w) * 5.0).xyz;
    bvec3 f96 = bvec3(!(CB0[18].w == 0.0));
    vec3 f97 = mix(vec3(f96.x ? CB0[19].xyz.x : f95.x, f96.y ? CB0[19].xyz.y : f95.y, f96.z ? CB0[19].xyz.z : f95.z), f94.xyz, vec3(VARYING6.w));
    vec4 f98 = f94;
    f98.x = f97.x;
    vec4 f99 = f98;
    f99.y = f97.y;
    vec4 f100 = f99;
    f100.z = f97.z;
    vec3 f101 = sqrt(clamp(f100.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f102 = f100;
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    _entryPointOutput = f104;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
