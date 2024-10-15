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
    vec3 f5 = f3.xyz * (f3.w * 120.0);
    float f6 = f4.x;
    float f7 = f4.y;
    vec4 f8 = vec4(CB3[0].w);
    vec4 f9 = ((mix(texture2D(NormalMap1Texture, VARYING2), texture2D(NormalMap2Texture, VARYING2), f8) * VARYING0.x) + (mix(texture2D(NormalMap1Texture, VARYING3), texture2D(NormalMap2Texture, VARYING3), f8) * VARYING0.y)) + (mix(texture2D(NormalMap1Texture, VARYING4), texture2D(NormalMap2Texture, VARYING4), f8) * VARYING0.z);
    vec2 f10 = f9.wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = f9.x;
    vec3 f13 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f14 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f13) * f11.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f13) * f11.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0)))), f12);
    vec3 f15 = f14.xyz;
    vec3 f16 = mix(VARYING6.xyz, f15, vec3(0.25));
    vec3 f17 = VARYING7.xyz / vec3(sqrt(dot(VARYING7.xyz, VARYING7.xyz)));
    vec3 f18 = reflect(-f17, f16);
    vec3 f19 = f15 * f15;
    bvec3 f20 = lessThan(f15, vec3(0.0));
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
    vec2 f33 = (f29 + (f14.xz * 0.0500000007450580596923828125)) + f31;
    vec2 f34 = (vec2(clamp(f32.x, 0.0, 1.0), clamp(f32.y, 0.0, 1.0)) * CB0[50].zw) - f30;
    vec2 f35 = (vec2(clamp(f33.x, 0.0, 1.0), clamp(f33.y, 0.0, 1.0)) * CB0[50].zw) - f30;
    float f36 = texture2D(GBufferDepthTexture, f35).x * 500.0;
    float f37 = clamp(f36 - VARYING8.w, 0.0, 1.0);
    vec3 f38 = mix(texture2D(GBufferColorTexture, f34).xyz, texture2D(GBufferColorTexture, f35).xyz, vec3(f37));
    float f39 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f40 = vec4(f18, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f41 = (f40.xy * 0.5) + vec2(0.5 * f40.w);
    vec4 f42 = f40;
    f42.x = f41.x;
    vec4 f43 = f42;
    f43.y = f41.y;
    float f44 = VARYING8.w * (-0.20000000298023223876953125);
    float f45 = 1.0 + clamp(0.0, f44, f39);
    vec4 f46 = VARYING8 + (f43 * f45);
    float f47 = f46.w;
    vec2 f48 = (f46.xy / vec2(f47)) + f31;
    float f49 = f45 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f48.x, 0.0, 1.0), clamp(f48.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f47, f44, f39);
    vec4 f50 = VARYING8 + (f43 * f49);
    float f51 = f50.w;
    vec2 f52 = (f50.xy / vec2(f51)) + f31;
    float f53 = f49 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f52.x, 0.0, 1.0), clamp(f52.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f51, f44, f39);
    vec4 f54 = VARYING8 + (f43 * f53);
    float f55 = f54.w;
    vec2 f56 = (f54.xy / vec2(f55)) + f31;
    float f57 = f53 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f56.x, 0.0, 1.0), clamp(f56.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f55, f44, f39);
    vec4 f58 = VARYING8 + (f43 * f57);
    float f59 = f58.w;
    vec2 f60 = (f58.xy / vec2(f59)) + f31;
    float f61 = f57 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f60.x, 0.0, 1.0), clamp(f60.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f59, f44, f39);
    vec4 f62 = VARYING8 + (f43 * f61);
    float f63 = f62.w;
    vec2 f64 = (f62.xy / vec2(f63)) + f31;
    float f65 = f61 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f64.x, 0.0, 1.0), clamp(f64.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f63, f44, f39);
    vec4 f66 = VARYING8 + (f43 * f65);
    float f67 = f66.w;
    vec2 f68 = (f66.xy / vec2(f67)) + f31;
    float f69 = f65 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f68.x, 0.0, 1.0), clamp(f68.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f67, f44, f39);
    vec4 f70 = VARYING8 + (f43 * f69);
    float f71 = f70.w;
    vec2 f72 = (f70.xy / vec2(f71)) + f31;
    vec4 f73 = VARYING8 + (f43 * (f69 + clamp((texture2D(GBufferDepthTexture, (vec2(clamp(f72.x, 0.0, 1.0), clamp(f72.y, 0.0, 1.0)) * CB0[50].zw) - f30).x * 500.0) - f71, f44, f39)));
    float f74 = f73.w;
    vec2 f75 = (f73.xy / vec2(f74)) + f31;
    vec2 f76 = (vec2(clamp(f75.x, 0.0, 1.0), clamp(f75.y, 0.0, 1.0)) * CB0[50].zw) - f30;
    vec3 f77 = texture2D(GBufferColorTexture, f76).xyz;
    vec3 f78 = textureCube(EnvMapTexture, f18).xyz;
    float f79 = 0.08900000154972076416015625 + (f12 * 0.9110000133514404296875);
    vec3 f80 = -CB0[16].xyz;
    vec3 f81 = normalize(f17 + f80);
    float f82 = f79 * f79;
    float f83 = max(0.001000000047497451305389404296875, dot(f15, f81));
    float f84 = dot(f80, f81);
    float f85 = 1.0 - f84;
    float f86 = f85 * f85;
    float f87 = (f86 * f86) * f85;
    float f88 = f82 * f82;
    float f89 = (((f83 * f88) - f83) * f83) + 1.0;
    vec3 f90 = mix(mix((f38 * f38) * CB0[20].x, ((min(f5 + (CB0[32].xyz + (CB0[33].xyz * f6)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f23) + (CB0[42].xyz * f24)) + (CB0[44].xyz * f25)) + (CB0[41].xyz * f26)) + (CB0[43].xyz * f27)) + (CB0[45].xyz * f28)) + (((((((CB0[34].xyz * f23) + (CB0[36].xyz * f24)) + (CB0[38].xyz * f25)) + (CB0[35].xyz * f26)) + (CB0[37].xyz * f27)) + (CB0[39].xyz * f28)) * f6))) + (CB0[15].xyz * f7)) * CB3[1].xyz, vec3(clamp(clamp(((mix(texture2D(GBufferDepthTexture, f34).x * 500.0, f36, f37) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(((f78 * f78) * CB0[20].x) * f6, (f77 * f77) * CB0[20].x, vec3((((float(abs(f76.x - 0.5) < 0.550000011920928955078125) * float(abs(f76.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f74) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, f76).x * 500.0) - f74) < 10.0)) * float(f40.w > 0.0))) + (f5 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f16, f17))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f87) + (vec3(0.0199999995529651641845703125) * (1.0 - f87))) * (((f88 + (f88 * f88)) / (((f89 * f89) * ((f84 * 3.0) + 0.5)) * ((f83 * 0.75) + 0.25))) * clamp(dot(f15, f80) * f7, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f91 = vec4(0.0);
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec4 f94 = f93;
    f94.w = 1.0;
    vec3 f95 = mix(CB0[19].xyz, f94.xyz, vec3(VARYING6.w));
    vec4 f96 = f94;
    f96.x = f95.x;
    vec4 f97 = f96;
    f97.y = f95.y;
    vec4 f98 = f97;
    f98.z = f95.z;
    vec3 f99 = sqrt(clamp(f98.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f100 = f98;
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec4 f102 = f101;
    f102.z = f99.z;
    gl_FragData[0] = f102;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
