#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[57];
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
    vec2 f29 = f28 + (f13.xz * 0.0500000007450580596923828125);
    float f30 = texture2D(GBufferDepthTexture, f29).x * 500.0;
    float f31 = clamp(f30 - VARYING8.w, 0.0, 1.0);
    vec3 f32 = mix(texture2D(GBufferColorTexture, f28).xyz, texture2D(GBufferColorTexture, f29).xyz, vec3(f31));
    float f33 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f34 = vec4(f17, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f35 = (f34.xy * 0.5) + vec2(0.5 * f34.w);
    vec4 f36 = f34;
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    float f38 = VARYING8.w * (-0.20000000298023223876953125);
    float f39 = 1.0 + clamp(0.0, f38, f33);
    vec4 f40 = VARYING8 + (f37 * f39);
    float f41 = f40.w;
    float f42 = f39 + clamp((texture2D(GBufferDepthTexture, f40.xy / vec2(f41)).x * 500.0) - f41, f38, f33);
    vec4 f43 = VARYING8 + (f37 * f42);
    float f44 = f43.w;
    float f45 = f42 + clamp((texture2D(GBufferDepthTexture, f43.xy / vec2(f44)).x * 500.0) - f44, f38, f33);
    vec4 f46 = VARYING8 + (f37 * f45);
    float f47 = f46.w;
    float f48 = f45 + clamp((texture2D(GBufferDepthTexture, f46.xy / vec2(f47)).x * 500.0) - f47, f38, f33);
    vec4 f49 = VARYING8 + (f37 * f48);
    float f50 = f49.w;
    float f51 = f48 + clamp((texture2D(GBufferDepthTexture, f49.xy / vec2(f50)).x * 500.0) - f50, f38, f33);
    vec4 f52 = VARYING8 + (f37 * f51);
    float f53 = f52.w;
    float f54 = f51 + clamp((texture2D(GBufferDepthTexture, f52.xy / vec2(f53)).x * 500.0) - f53, f38, f33);
    vec4 f55 = VARYING8 + (f37 * f54);
    float f56 = f55.w;
    float f57 = f54 + clamp((texture2D(GBufferDepthTexture, f55.xy / vec2(f56)).x * 500.0) - f56, f38, f33);
    vec4 f58 = VARYING8 + (f37 * f57);
    float f59 = f58.w;
    vec4 f60 = VARYING8 + (f37 * (f57 + clamp((texture2D(GBufferDepthTexture, f58.xy / vec2(f59)).x * 500.0) - f59, f38, f33)));
    float f61 = f60.w;
    vec2 f62 = f60.xy / vec2(f61);
    vec3 f63 = textureCube(EnvMapTexture, f17).xyz;
    vec3 f64 = texture2D(GBufferColorTexture, f62).xyz;
    float f65 = 0.08900000154972076416015625 + (f11 * 0.9110000133514404296875);
    vec3 f66 = -CB0[16].xyz;
    vec3 f67 = normalize(f16 + f66);
    float f68 = f65 * f65;
    float f69 = max(0.001000000047497451305389404296875, dot(f14, f67));
    float f70 = dot(f66, f67);
    float f71 = 1.0 - f70;
    float f72 = f71 * f71;
    float f73 = (f72 * f72) * f71;
    float f74 = f68 * f68;
    float f75 = (((f69 * f74) - f69) * f69) + 1.0;
    vec3 f76 = mix(mix((f32 * f32) * CB0[20].x, ((min((f3.xyz * (f3.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f5)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f22) + (CB0[42].xyz * f23)) + (CB0[44].xyz * f24)) + (CB0[41].xyz * f25)) + (CB0[43].xyz * f26)) + (CB0[45].xyz * f27)) + (((((((CB0[34].xyz * f22) + (CB0[36].xyz * f23)) + (CB0[38].xyz * f24)) + (CB0[35].xyz * f25)) + (CB0[37].xyz * f26)) + (CB0[39].xyz * f27)) * f5))) + (CB0[15].xyz * f6)) * CB3[1].xyz, vec3(clamp(clamp(((mix(texture2D(GBufferDepthTexture, f28).x * 500.0, f30, f31) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(((f63 * f63) * CB0[20].x) * f5, (f64 * f64) * CB0[20].x, vec3((((float(abs(f62.x - 0.5) < 0.550000011920928955078125) * float(abs(f62.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f61) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, f62).x * 500.0) - f61) < 10.0)) * float(f34.w > 0.0))), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f15, f16))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f73) + (vec3(0.0199999995529651641845703125) * (1.0 - f73))) * (((f74 + (f74 * f74)) / (((f75 * f75) * ((f70 * 3.0) + 0.5)) * ((f69 * 0.75) + 0.25))) * clamp(dot(f14, f66) * f6, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f77 = vec4(0.0);
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec4 f80 = f79;
    f80.w = 1.0;
    vec3 f81 = mix(CB0[19].xyz, f80.xyz, vec3(VARYING6.w));
    vec4 f82 = f80;
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec4 f84 = f83;
    f84.z = f81.z;
    vec3 f85 = sqrt(clamp(f84.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f86 = f84;
    f86.x = f85.x;
    vec4 f87 = f86;
    f87.y = f85.y;
    vec4 f88 = f87;
    f88.z = f85.z;
    gl_FragData[0] = f88;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
