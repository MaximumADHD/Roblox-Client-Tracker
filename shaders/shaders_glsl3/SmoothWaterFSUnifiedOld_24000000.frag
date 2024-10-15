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
    vec3 f29 = ((min((f3.xyz * (f3.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f5)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f23) + (CB0[42].xyz * f24)) + (CB0[44].xyz * f25)) + (CB0[41].xyz * f26)) + (CB0[43].xyz * f27)) + (CB0[45].xyz * f28)) + (((((((CB0[34].xyz * f23) + (CB0[36].xyz * f24)) + (CB0[38].xyz * f25)) + (CB0[35].xyz * f26)) + (CB0[37].xyz * f27)) + (CB0[39].xyz * f28)) * f5))) + (CB0[15].xyz * f6)) * CB3[1].xyz;
    vec2 f30 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f31 = f30 + (f13.xz * 0.0500000007450580596923828125);
    float f32 = texture(GBufferDepthTexture, f31).x * 500.0;
    float f33 = clamp(f32 - VARYING8.w, 0.0, 1.0);
    vec3 f34 = mix(texture(GBufferColorTexture, f30).xyz, texture(GBufferColorTexture, f31).xyz, vec3(f33));
    float f35 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f36 = vec4(f18, 0.0);
    vec4 f37 = f36 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f38 = (f37.xy * 0.5) + vec2(0.5 * f37.w);
    vec4 f39 = f37;
    f39.x = f38.x;
    vec4 f40 = f39;
    f40.y = f38.y;
    float f41 = VARYING8.w * (-0.20000000298023223876953125);
    float f42 = 1.0 + clamp(0.0, f41, f35);
    vec4 f43 = VARYING8 + (f40 * f42);
    float f44 = f43.w;
    float f45 = f42 + clamp((texture(GBufferDepthTexture, f43.xy / vec2(f44)).x * 500.0) - f44, f41, f35);
    vec4 f46 = VARYING8 + (f40 * f45);
    float f47 = f46.w;
    float f48 = f45 + clamp((texture(GBufferDepthTexture, f46.xy / vec2(f47)).x * 500.0) - f47, f41, f35);
    vec4 f49 = VARYING8 + (f40 * f48);
    float f50 = f49.w;
    float f51 = f48 + clamp((texture(GBufferDepthTexture, f49.xy / vec2(f50)).x * 500.0) - f50, f41, f35);
    vec4 f52 = VARYING8 + (f40 * f51);
    float f53 = f52.w;
    float f54 = f51 + clamp((texture(GBufferDepthTexture, f52.xy / vec2(f53)).x * 500.0) - f53, f41, f35);
    vec4 f55 = VARYING8 + (f40 * f54);
    float f56 = f55.w;
    float f57 = f54 + clamp((texture(GBufferDepthTexture, f55.xy / vec2(f56)).x * 500.0) - f56, f41, f35);
    vec4 f58 = VARYING8 + (f40 * f57);
    float f59 = f58.w;
    float f60 = f57 + clamp((texture(GBufferDepthTexture, f58.xy / vec2(f59)).x * 500.0) - f59, f41, f35);
    vec4 f61 = VARYING8 + (f40 * f60);
    float f62 = f61.w;
    vec4 f63 = VARYING8 + (f40 * (f60 + clamp((texture(GBufferDepthTexture, f61.xy / vec2(f62)).x * 500.0) - f62, f41, f35)));
    float f64 = f63.w;
    vec2 f65 = f63.xy / vec2(f64);
    vec3 f66 = texture(GBufferColorTexture, f65).xyz;
    vec3 f67 = (textureLod(PrefilteredEnvTexture, f36.xyz, 0.0).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f18.y * 1.58823525905609130859375, 0.0, 1.0)))) * f5;
    vec3 f68 = vec3(clamp((length((CB0[11].xyz - VARYING7.xyz) - CB0[11].xyz) * CB0[52].y) - (CB0[51].z * CB0[52].y), 0.0, 1.0));
    float f69 = 0.08900000154972076416015625 + (f11 * 0.9110000133514404296875);
    vec3 f70 = -CB0[16].xyz;
    vec3 f71 = normalize(f16 + f70);
    float f72 = f69 * f69;
    float f73 = max(0.001000000047497451305389404296875, dot(f14, f71));
    float f74 = dot(f70, f71);
    float f75 = 1.0 - f74;
    float f76 = f75 * f75;
    float f77 = (f76 * f76) * f75;
    float f78 = f72 * f72;
    float f79 = (((f73 * f78) - f73) * f73) + 1.0;
    vec3 f80 = mix(mix(mix((f34 * f34) * CB0[20].x, f29, vec3(clamp(clamp(((mix(texture(GBufferDepthTexture, f30).x * 500.0, f32, f33) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), f29, f68), mix(mix(f67, (f66 * f66) * CB0[20].x, vec3((((float(abs(f65.x - 0.5) < 0.550000011920928955078125) * float(abs(f65.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f64) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f65).x * 500.0) - f64) < 10.0)) * float(f37.w > 0.0))), f67, f68), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f15, f16))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f77) + (vec3(0.0199999995529651641845703125) * (1.0 - f77))) * (((f78 + (f78 * f78)) / (((f79 * f79) * ((f74 * 3.0) + 0.5)) * ((f73 * 0.75) + 0.25))) * clamp(dot(f14, f70) * f6, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f81 = vec4(0.0);
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    vec4 f84 = f83;
    f84.w = 1.0;
    vec3 f85 = textureLod(PrefilteredEnvTexture, vec4(f17, 0.0).xyz, max(CB0[18].y, VARYING6.w) * 5.0).xyz;
    bvec3 f86 = bvec3(!(CB0[18].w == 0.0));
    vec3 f87 = mix(vec3(f86.x ? CB0[19].xyz.x : f85.x, f86.y ? CB0[19].xyz.y : f85.y, f86.z ? CB0[19].xyz.z : f85.z), f84.xyz, vec3(VARYING6.w));
    vec4 f88 = f84;
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec4 f90 = f89;
    f90.z = f87.z;
    vec3 f91 = sqrt(clamp(f90.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f92 = f90;
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    _entryPointOutput = f94;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
