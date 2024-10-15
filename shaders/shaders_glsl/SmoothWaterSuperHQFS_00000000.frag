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
    vec2 f30 = f29 + (f14.xz * 0.0500000007450580596923828125);
    float f31 = texture2D(GBufferDepthTexture, f30).x * 500.0;
    float f32 = clamp(f31 - VARYING8.w, 0.0, 1.0);
    vec3 f33 = mix(texture2D(GBufferColorTexture, f29).xyz, texture2D(GBufferColorTexture, f30).xyz, vec3(f32));
    float f34 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f35 = vec4(f18, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f36 = (f35.xy * 0.5) + vec2(0.5 * f35.w);
    vec4 f37 = f35;
    f37.x = f36.x;
    vec4 f38 = f37;
    f38.y = f36.y;
    float f39 = VARYING8.w * (-0.20000000298023223876953125);
    float f40 = 1.0 + clamp(0.0, f39, f34);
    vec4 f41 = VARYING8 + (f38 * f40);
    float f42 = f41.w;
    float f43 = f40 + clamp((texture2D(GBufferDepthTexture, f41.xy / vec2(f42)).x * 500.0) - f42, f39, f34);
    vec4 f44 = VARYING8 + (f38 * f43);
    float f45 = f44.w;
    float f46 = f43 + clamp((texture2D(GBufferDepthTexture, f44.xy / vec2(f45)).x * 500.0) - f45, f39, f34);
    vec4 f47 = VARYING8 + (f38 * f46);
    float f48 = f47.w;
    float f49 = f46 + clamp((texture2D(GBufferDepthTexture, f47.xy / vec2(f48)).x * 500.0) - f48, f39, f34);
    vec4 f50 = VARYING8 + (f38 * f49);
    float f51 = f50.w;
    float f52 = f49 + clamp((texture2D(GBufferDepthTexture, f50.xy / vec2(f51)).x * 500.0) - f51, f39, f34);
    vec4 f53 = VARYING8 + (f38 * f52);
    float f54 = f53.w;
    float f55 = f52 + clamp((texture2D(GBufferDepthTexture, f53.xy / vec2(f54)).x * 500.0) - f54, f39, f34);
    vec4 f56 = VARYING8 + (f38 * f55);
    float f57 = f56.w;
    float f58 = f55 + clamp((texture2D(GBufferDepthTexture, f56.xy / vec2(f57)).x * 500.0) - f57, f39, f34);
    vec4 f59 = VARYING8 + (f38 * f58);
    float f60 = f59.w;
    vec4 f61 = VARYING8 + (f38 * (f58 + clamp((texture2D(GBufferDepthTexture, f59.xy / vec2(f60)).x * 500.0) - f60, f39, f34)));
    float f62 = f61.w;
    vec2 f63 = f61.xy / vec2(f62);
    vec3 f64 = texture2D(GBufferColorTexture, f63).xyz;
    vec3 f65 = textureCube(EnvMapTexture, f18).xyz;
    float f66 = 0.08900000154972076416015625 + (f12 * 0.9110000133514404296875);
    vec3 f67 = -CB0[16].xyz;
    vec3 f68 = normalize(f17 + f67);
    float f69 = f66 * f66;
    float f70 = max(0.001000000047497451305389404296875, dot(f15, f68));
    float f71 = dot(f67, f68);
    float f72 = 1.0 - f71;
    float f73 = f72 * f72;
    float f74 = (f73 * f73) * f72;
    float f75 = f69 * f69;
    float f76 = (((f70 * f75) - f70) * f70) + 1.0;
    vec3 f77 = mix(mix((f33 * f33) * CB0[20].x, ((min(f5 + (CB0[32].xyz + (CB0[33].xyz * f6)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f23) + (CB0[42].xyz * f24)) + (CB0[44].xyz * f25)) + (CB0[41].xyz * f26)) + (CB0[43].xyz * f27)) + (CB0[45].xyz * f28)) + (((((((CB0[34].xyz * f23) + (CB0[36].xyz * f24)) + (CB0[38].xyz * f25)) + (CB0[35].xyz * f26)) + (CB0[37].xyz * f27)) + (CB0[39].xyz * f28)) * f6))) + (CB0[15].xyz * f7)) * CB3[1].xyz, vec3(clamp(clamp(((mix(texture2D(GBufferDepthTexture, f29).x * 500.0, f31, f32) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(((f65 * f65) * CB0[20].x) * f6, (f64 * f64) * CB0[20].x, vec3((((float(abs(f63.x - 0.5) < 0.550000011920928955078125) * float(abs(f63.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f62) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, f63).x * 500.0) - f62) < 10.0)) * float(f35.w > 0.0))) + (f5 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f16, f17))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f74) + (vec3(0.0199999995529651641845703125) * (1.0 - f74))) * (((f75 + (f75 * f75)) / (((f76 * f76) * ((f71 * 3.0) + 0.5)) * ((f70 * 0.75) + 0.25))) * clamp(dot(f15, f67) * f7, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f78 = vec4(0.0);
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec4 f81 = f80;
    f81.w = 1.0;
    vec3 f82 = mix(CB0[19].xyz, f81.xyz, vec3(VARYING6.w));
    vec4 f83 = f81;
    f83.x = f82.x;
    vec4 f84 = f83;
    f84.y = f82.y;
    vec4 f85 = f84;
    f85.z = f82.z;
    vec3 f86 = sqrt(clamp(f85.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f87 = f85;
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec4 f89 = f88;
    f89.z = f86.z;
    gl_FragData[0] = f89;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
