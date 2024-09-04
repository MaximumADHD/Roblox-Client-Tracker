#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[58];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube EnvMapTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec3 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying vec4 VARYING8;

void main()
{
    float f0 = clamp(dot(step(CB0[24].xyz, abs(VARYING5 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture3D(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture3D(LightGridSkylightTexture, f1), vec4(1.0), f2);
    float f5 = f4.x;
    float f6 = f4.y;
    vec4 f7 = vec4(CB3[0].w);
    vec4 f8 = ((mix(texture2D(NormalMap1Texture, VARYING2), texture2D(NormalMap2Texture, VARYING2), f7) * VARYING0.x) + (mix(texture2D(NormalMap1Texture, VARYING3), texture2D(NormalMap2Texture, VARYING3), f7) * VARYING0.y)) + (mix(texture2D(NormalMap1Texture, VARYING4), texture2D(NormalMap2Texture, VARYING4), f7) * VARYING0.z);
    vec2 f9 = f8.wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    float f11 = f8.x;
    vec3 f12 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f13 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f12) * f10.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f12) * f10.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0)))), f11);
    vec3 f14 = f13.xyz;
    vec3 f15 = mix(VARYING6.xyz, f14, vec3(0.25));
    vec3 f16 = VARYING7.xyz / vec3(sqrt(dot(VARYING7.xyz, VARYING7.xyz)));
    vec3 f17 = reflect(-f16, f15);
    vec3 f18 = f14 * f14;
    bvec3 f19 = lessThan(f14, vec3(0.0));
    vec3 f20 = vec3(f19.x ? f18.x : vec3(0.0).x, f19.y ? f18.y : vec3(0.0).y, f19.z ? f18.z : vec3(0.0).z);
    vec3 f21 = f18 - f20;
    float f22 = f21.x;
    float f23 = f21.y;
    float f24 = f21.z;
    float f25 = f20.x;
    float f26 = f20.y;
    float f27 = f20.z;
    vec2 f28 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f29 = CB0[50].xy * 0.5;
    vec2 f30 = f29 / CB0[50].zw;
    vec2 f31 = f28 + f30;
    vec2 f32 = (f28 + (f13.xz * 0.0500000007450580596923828125)) + f30;
    vec2 f33 = (vec2(clamp(f31.x, 0.0, 1.0), clamp(f31.y, 0.0, 1.0)) * CB0[50].zw) - f29;
    vec2 f34 = (vec2(clamp(f32.x, 0.0, 1.0), clamp(f32.y, 0.0, 1.0)) * CB0[50].zw) - f29;
    float f35 = texture2D(GBufferDepthTexture, f34).x * 500.0;
    float f36 = clamp(f35 - VARYING8.w, 0.0, 1.0);
    vec3 f37 = mix(texture2D(GBufferColorTexture, f33).xyz, texture2D(GBufferColorTexture, f34).xyz, vec3(f36));
    float f38 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f39 = vec4(f17, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f40 = (f39.xy * 0.5) + vec2(0.5 * f39.w);
    vec4 f41 = f39;
    f41.x = f40.x;
    vec4 f42 = f41;
    f42.y = f40.y;
    float f43 = VARYING8.w * (-0.20000000298023223876953125);
    float f44 = 1.0 + clamp(0.0, f43, f38);
    vec4 f45 = VARYING8 + (f42 * f44);
    float f46 = f45.w;
    vec2 f47 = (f45.xy / vec2(f46)) + f30;
    float f48 = f44 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f47.x, 0.0, 1.0), clamp(f47.y, 0.0, 1.0)) * CB0[50].zw) - f29).x * 500.0) - f46, f43, f38);
    vec4 f49 = VARYING8 + (f42 * f48);
    float f50 = f49.w;
    vec2 f51 = (f49.xy / vec2(f50)) + f30;
    float f52 = f48 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f51.x, 0.0, 1.0), clamp(f51.y, 0.0, 1.0)) * CB0[50].zw) - f29).x * 500.0) - f50, f43, f38);
    vec4 f53 = VARYING8 + (f42 * f52);
    float f54 = f53.w;
    vec2 f55 = (f53.xy / vec2(f54)) + f30;
    float f56 = f52 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f55.x, 0.0, 1.0), clamp(f55.y, 0.0, 1.0)) * CB0[50].zw) - f29).x * 500.0) - f54, f43, f38);
    vec4 f57 = VARYING8 + (f42 * f56);
    float f58 = f57.w;
    vec2 f59 = (f57.xy / vec2(f58)) + f30;
    float f60 = f56 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f59.x, 0.0, 1.0), clamp(f59.y, 0.0, 1.0)) * CB0[50].zw) - f29).x * 500.0) - f58, f43, f38);
    vec4 f61 = VARYING8 + (f42 * f60);
    float f62 = f61.w;
    vec2 f63 = (f61.xy / vec2(f62)) + f30;
    float f64 = f60 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f63.x, 0.0, 1.0), clamp(f63.y, 0.0, 1.0)) * CB0[50].zw) - f29).x * 500.0) - f62, f43, f38);
    vec4 f65 = VARYING8 + (f42 * f64);
    float f66 = f65.w;
    vec2 f67 = (f65.xy / vec2(f66)) + f30;
    float f68 = f64 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f67.x, 0.0, 1.0), clamp(f67.y, 0.0, 1.0)) * CB0[50].zw) - f29).x * 500.0) - f66, f43, f38);
    vec4 f69 = VARYING8 + (f42 * f68);
    float f70 = f69.w;
    vec2 f71 = (f69.xy / vec2(f70)) + f30;
    vec4 f72 = VARYING8 + (f42 * (f68 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f71.x, 0.0, 1.0), clamp(f71.y, 0.0, 1.0)) * CB0[50].zw) - f29).x * 500.0) - f70, f43, f38)));
    float f73 = f72.w;
    vec2 f74 = (f72.xy / vec2(f73)) + f30;
    vec2 f75 = (vec2(clamp(f74.x, 0.0, 1.0), clamp(f74.y, 0.0, 1.0)) * CB0[50].zw) - f29;
    vec3 f76 = texture2D(GBufferColorTexture, f75).xyz;
    vec3 f77 = textureCube(EnvMapTexture, f17).xyz;
    float f78 = 0.08900000154972076416015625 + (f11 * 0.9110000133514404296875);
    vec3 f79 = -CB0[16].xyz;
    vec3 f80 = normalize(f16 + f79);
    float f81 = f78 * f78;
    float f82 = max(0.001000000047497451305389404296875, dot(f14, f80));
    float f83 = dot(f79, f80);
    float f84 = 1.0 - f83;
    float f85 = f84 * f84;
    float f86 = (f85 * f85) * f84;
    float f87 = f81 * f81;
    float f88 = (((f82 * f87) - f82) * f82) + 1.0;
    vec3 f89 = mix(mix((f37 * f37) * CB0[20].x, ((min((f3.xyz * (f3.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f5)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f22) + (CB0[42].xyz * f23)) + (CB0[44].xyz * f24)) + (CB0[41].xyz * f25)) + (CB0[43].xyz * f26)) + (CB0[45].xyz * f27)) + (((((((CB0[34].xyz * f22) + (CB0[36].xyz * f23)) + (CB0[38].xyz * f24)) + (CB0[35].xyz * f25)) + (CB0[37].xyz * f26)) + (CB0[39].xyz * f27)) * f5))) + (CB0[15].xyz * f6)) * CB3[1].xyz, vec3(clamp(clamp(((mix(texture2D(GBufferDepthTexture, f33).x * 500.0, f35, f36) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(((f77 * f77) * CB0[20].x) * f5, (f76 * f76) * CB0[20].x, vec3((((float(abs(f75.x - 0.5) < 0.550000011920928955078125) * float(abs(f75.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f73) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, f75).x * 500.0) - f73) < 10.0)) * float(f39.w > 0.0))), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f15, f16))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f86) + (vec3(0.0199999995529651641845703125) * (1.0 - f86))) * (((f87 + (f87 * f87)) / (((f88 * f88) * ((f83 * 3.0) + 0.5)) * ((f82 * 0.75) + 0.25))) * clamp(dot(f14, f79) * f6, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f90 = vec4(0.0);
    f90.x = f89.x;
    vec4 f91 = f90;
    f91.y = f89.y;
    vec4 f92 = f91;
    f92.z = f89.z;
    vec4 f93 = f92;
    f93.w = 1.0;
    vec3 f94 = mix(CB0[19].xyz, f93.xyz, vec3(VARYING6.w));
    vec4 f95 = f93;
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    vec3 f98 = sqrt(clamp(f97.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f99 = f97;
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    gl_FragData[0] = f101;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
