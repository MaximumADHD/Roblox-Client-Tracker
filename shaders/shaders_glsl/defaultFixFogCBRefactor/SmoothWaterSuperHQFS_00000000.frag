#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <WaterParams.h>
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
    vec3 f18 = -f17;
    vec3 f19 = reflect(f18, f16);
    vec3 f20 = f15 * f15;
    bvec3 f21 = lessThan(f15, vec3(0.0));
    vec3 f22 = vec3(f21.x ? f20.x : vec3(0.0).x, f21.y ? f20.y : vec3(0.0).y, f21.z ? f20.z : vec3(0.0).z);
    vec3 f23 = f20 - f22;
    float f24 = f23.x;
    float f25 = f23.y;
    float f26 = f23.z;
    float f27 = f22.x;
    float f28 = f22.y;
    float f29 = f22.z;
    vec2 f30 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f31 = f30 + (f14.xz * 0.0500000007450580596923828125);
    float f32 = texture2D(GBufferDepthTexture, f31).x * 500.0;
    float f33 = clamp(f32 - VARYING8.w, 0.0, 1.0);
    vec3 f34 = mix(texture2D(GBufferColorTexture, f30).xyz, texture2D(GBufferColorTexture, f31).xyz, vec3(f33));
    float f35 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f36 = vec4(f19, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f37 = (f36.xy * 0.5) + vec2(0.5 * f36.w);
    vec4 f38 = f36;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    float f40 = VARYING8.w * (-0.20000000298023223876953125);
    float f41 = 1.0 + clamp(0.0, f40, f35);
    vec4 f42 = VARYING8 + (f39 * f41);
    float f43 = f42.w;
    float f44 = f41 + clamp((texture2D(GBufferDepthTexture, f42.xy / vec2(f43)).x * 500.0) - f43, f40, f35);
    vec4 f45 = VARYING8 + (f39 * f44);
    float f46 = f45.w;
    float f47 = f44 + clamp((texture2D(GBufferDepthTexture, f45.xy / vec2(f46)).x * 500.0) - f46, f40, f35);
    vec4 f48 = VARYING8 + (f39 * f47);
    float f49 = f48.w;
    float f50 = f47 + clamp((texture2D(GBufferDepthTexture, f48.xy / vec2(f49)).x * 500.0) - f49, f40, f35);
    vec4 f51 = VARYING8 + (f39 * f50);
    float f52 = f51.w;
    float f53 = f50 + clamp((texture2D(GBufferDepthTexture, f51.xy / vec2(f52)).x * 500.0) - f52, f40, f35);
    vec4 f54 = VARYING8 + (f39 * f53);
    float f55 = f54.w;
    float f56 = f53 + clamp((texture2D(GBufferDepthTexture, f54.xy / vec2(f55)).x * 500.0) - f55, f40, f35);
    vec4 f57 = VARYING8 + (f39 * f56);
    float f58 = f57.w;
    float f59 = f56 + clamp((texture2D(GBufferDepthTexture, f57.xy / vec2(f58)).x * 500.0) - f58, f40, f35);
    vec4 f60 = VARYING8 + (f39 * f59);
    float f61 = f60.w;
    vec4 f62 = VARYING8 + (f39 * (f59 + clamp((texture2D(GBufferDepthTexture, f60.xy / vec2(f61)).x * 500.0) - f61, f40, f35)));
    float f63 = f62.w;
    vec2 f64 = f62.xy / vec2(f63);
    vec3 f65 = textureCube(EnvMapTexture, f19).xyz;
    vec3 f66 = texture2D(GBufferColorTexture, f64).xyz;
    float f67 = 0.08900000154972076416015625 + (f12 * 0.9110000133514404296875);
    vec3 f68 = -CB0[16].xyz;
    vec3 f69 = normalize(f17 + f68);
    float f70 = f67 * f67;
    float f71 = max(0.001000000047497451305389404296875, dot(f15, f69));
    float f72 = dot(f68, f69);
    float f73 = 1.0 - f72;
    float f74 = f73 * f73;
    float f75 = (f74 * f74) * f73;
    float f76 = f70 * f70;
    float f77 = (((f71 * f76) - f71) * f71) + 1.0;
    vec3 f78 = mix(mix((f34 * f34) * CB0[20].x, ((min(f5 + (CB0[32].xyz + (CB0[33].xyz * f6)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f24) + (CB0[42].xyz * f25)) + (CB0[44].xyz * f26)) + (CB0[41].xyz * f27)) + (CB0[43].xyz * f28)) + (CB0[45].xyz * f29)) + (((((((CB0[34].xyz * f24) + (CB0[36].xyz * f25)) + (CB0[38].xyz * f26)) + (CB0[35].xyz * f27)) + (CB0[37].xyz * f28)) + (CB0[39].xyz * f29)) * f6))) + (CB0[15].xyz * f7)) * CB3[1].xyz, vec3(clamp(clamp(((mix(texture2D(GBufferDepthTexture, f30).x * 500.0, f32, f33) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(((f65 * f65) * CB0[20].x) * f6, (f66 * f66) * CB0[20].x, vec3((((float(abs(f64.x - 0.5) < 0.550000011920928955078125) * float(abs(f64.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f63) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, f64).x * 500.0) - f63) < 10.0)) * float(f36.w > 0.0))) + (f5 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f16, f17))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f75) + (vec3(0.0199999995529651641845703125) * (1.0 - f75))) * (((f76 + (f76 * f76)) / (((f77 * f77) * ((f72 * 3.0) + 0.5)) * ((f71 * 0.75) + 0.25))) * clamp(dot(f15, f68) * f7, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f79 = vec4(0.0);
    f79.x = f78.x;
    vec4 f80 = f79;
    f80.y = f78.y;
    vec4 f81 = f80;
    f81.z = f78.z;
    vec4 f82 = f81;
    f82.w = 1.0;
    vec3 f83 = f18 * f18;
    bvec3 f84 = lessThan(f18, vec3(0.0));
    vec3 f85 = vec3(f84.x ? f83.x : vec3(0.0).x, f84.y ? f83.y : vec3(0.0).y, f84.z ? f83.z : vec3(0.0).z);
    vec3 f86 = f83 - f85;
    vec3 f87 = (((((CB0[34].xyz * f86.x) + (CB0[36].xyz * f86.y)) + (CB0[38].xyz * f86.z)) + (CB0[35].xyz * f85.x)) + (CB0[37].xyz * f85.y)) + (CB0[39].xyz * f85.z);
    bvec3 f88 = bvec3(!(CB0[18].w == 0.0));
    vec3 f89 = mix(vec3(f88.x ? CB0[19].xyz.x : f87.x, f88.y ? CB0[19].xyz.y : f87.y, f88.z ? CB0[19].xyz.z : f87.z), f82.xyz, vec3(VARYING6.w));
    vec4 f90 = f82;
    f90.x = f89.x;
    vec4 f91 = f90;
    f91.y = f89.y;
    vec4 f92 = f91;
    f92.z = f89.z;
    vec3 f93 = sqrt(clamp(f92.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f94 = f92;
    f94.x = f93.x;
    vec4 f95 = f94;
    f95.y = f93.y;
    vec4 f96 = f95;
    f96.z = f93.z;
    gl_FragData[0] = f96;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
