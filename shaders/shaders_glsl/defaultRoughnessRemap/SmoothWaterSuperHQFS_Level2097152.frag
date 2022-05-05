#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[53];
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
    float f0 = clamp(dot(step(CB0[19].xyz, abs(VARYING5 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
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
    vec3 f17 = normalize(VARYING7.xyz);
    vec3 f18 = f15 * f15;
    bvec3 f19 = lessThan(f15, vec3(0.0));
    vec3 f20 = vec3(f19.x ? f18.x : vec3(0.0).x, f19.y ? f18.y : vec3(0.0).y, f19.z ? f18.z : vec3(0.0).z);
    vec3 f21 = f18 - f20;
    float f22 = f21.x;
    float f23 = f21.y;
    float f24 = f21.z;
    float f25 = f20.x;
    float f26 = f20.y;
    float f27 = f20.z;
    vec2 f28 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f29 = f28 + (f14.xz * 0.0500000007450580596923828125);
    vec4 f30 = texture2D(GBufferColorTexture, f28);
    f30.w = texture2D(GBufferDepthTexture, f28).x * 500.0;
    float f31 = texture2D(GBufferDepthTexture, f29).x * 500.0;
    vec4 f32 = texture2D(GBufferColorTexture, f29);
    f32.w = f31;
    vec4 f33 = mix(f30, f32, vec4(clamp(f31 - VARYING8.w, 0.0, 1.0)));
    vec3 f34 = f33.xyz;
    vec3 f35 = (f34 * f34) * CB0[15].x;
    vec4 f36 = f33;
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    vec4 f38 = f37;
    f38.z = f35.z;
    vec3 f39 = reflect(-f17, f16);
    float f40 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f41 = vec4(f39, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f42 = (f41.xy * 0.5) + vec2(0.5 * f41.w);
    vec4 f43 = f41;
    f43.x = f42.x;
    vec4 f44 = f43;
    f44.y = f42.y;
    float f45 = VARYING8.w * (-0.20000000298023223876953125);
    float f46 = 1.0 + clamp(0.0, f45, f40);
    vec4 f47 = VARYING8 + (f44 * f46);
    float f48 = f47.w;
    float f49 = f46 + clamp((texture2D(GBufferDepthTexture, f47.xy / vec2(f48)).x * 500.0) - f48, f45, f40);
    vec4 f50 = VARYING8 + (f44 * f49);
    float f51 = f50.w;
    float f52 = f49 + clamp((texture2D(GBufferDepthTexture, f50.xy / vec2(f51)).x * 500.0) - f51, f45, f40);
    vec4 f53 = VARYING8 + (f44 * f52);
    float f54 = f53.w;
    float f55 = f52 + clamp((texture2D(GBufferDepthTexture, f53.xy / vec2(f54)).x * 500.0) - f54, f45, f40);
    vec4 f56 = VARYING8 + (f44 * f55);
    float f57 = f56.w;
    float f58 = f55 + clamp((texture2D(GBufferDepthTexture, f56.xy / vec2(f57)).x * 500.0) - f57, f45, f40);
    vec4 f59 = VARYING8 + (f44 * f58);
    float f60 = f59.w;
    float f61 = f58 + clamp((texture2D(GBufferDepthTexture, f59.xy / vec2(f60)).x * 500.0) - f60, f45, f40);
    vec4 f62 = VARYING8 + (f44 * f61);
    float f63 = f62.w;
    float f64 = f61 + clamp((texture2D(GBufferDepthTexture, f62.xy / vec2(f63)).x * 500.0) - f63, f45, f40);
    vec4 f65 = VARYING8 + (f44 * f64);
    float f66 = f65.w;
    vec4 f67 = VARYING8 + (f44 * (f64 + clamp((texture2D(GBufferDepthTexture, f65.xy / vec2(f66)).x * 500.0) - f66, f45, f40)));
    float f68 = f67.w;
    vec2 f69 = f67.xy / vec2(f68);
    vec3 f70 = textureCube(EnvMapTexture, f39).xyz;
    vec3 f71 = texture2D(GBufferColorTexture, f69).xyz;
    float f72 = 0.08900000154972076416015625 + (f12 * 0.9110000133514404296875);
    vec3 f73 = -CB0[11].xyz;
    vec3 f74 = normalize(f73 + f17);
    float f75 = f72 * f72;
    float f76 = max(0.001000000047497451305389404296875, dot(f15, f74));
    float f77 = dot(f73, f74);
    float f78 = 1.0 - f77;
    float f79 = f78 * f78;
    float f80 = (f79 * f79) * f78;
    float f81 = f75 * f75;
    float f82 = (((f76 * f81) - f76) * f76) + 1.0;
    vec3 f83 = mix(mix(f38.xyz, ((min(f5 + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f6)), vec3(CB0[16].w)) + (((((((CB0[35].xyz * f22) + (CB0[37].xyz * f23)) + (CB0[39].xyz * f24)) + (CB0[36].xyz * f25)) + (CB0[38].xyz * f26)) + (CB0[40].xyz * f27)) + (((((((CB0[29].xyz * f22) + (CB0[31].xyz * f23)) + (CB0[33].xyz * f24)) + (CB0[30].xyz * f25)) + (CB0[32].xyz * f26)) + (CB0[34].xyz * f27)) * f6))) + (CB0[10].xyz * f7)) * CB3[1].xyz, vec3(clamp(clamp(((f33.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(((f70 * f70) * CB0[15].x) * f6, (f71 * f71) * CB0[15].x, vec3((((float(abs(f69.x - 0.5) < 0.550000011920928955078125) * float(abs(f69.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f68) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, f69).x * 500.0) - f68) < 10.0)) * float(f41.w > 0.0))) + (f5 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f16, f17))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (((((vec3(f80) + (vec3(0.0199999995529651641845703125) * (1.0 - f80))) * (((f81 + (f81 * f81)) / (((f82 * f82) * ((f77 * 3.0) + 0.5)) * ((f76 * 0.75) + 0.25))) * clamp((dot(f15, f73) * CB0[9].w) * f7, 0.0, 1.0))) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0));
    vec4 f84 = vec4(0.0);
    f84.x = f83.x;
    vec4 f85 = f84;
    f85.y = f83.y;
    vec4 f86 = f85;
    f86.z = f83.z;
    vec4 f87 = f86;
    f87.w = 1.0;
    vec3 f88 = mix(CB0[14].xyz, f87.xyz, vec3(VARYING6.w));
    vec4 f89 = f87;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    vec3 f92 = sqrt(clamp(f91.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f93 = f91;
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    gl_FragData[0] = f95;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
