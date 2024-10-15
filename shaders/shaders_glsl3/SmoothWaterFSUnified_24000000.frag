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
    vec3 f5 = f3.xyz * (f3.w * 120.0);
    float f6 = f4.x;
    float f7 = f4.y;
    vec4 f8 = vec4(CB3[0].w);
    vec4 f9 = ((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), f8) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), f8) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), f8) * VARYING0.z);
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
    vec3 f30 = ((min(f5 + (CB0[32].xyz + (CB0[33].xyz * f6)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f24) + (CB0[42].xyz * f25)) + (CB0[44].xyz * f26)) + (CB0[41].xyz * f27)) + (CB0[43].xyz * f28)) + (CB0[45].xyz * f29)) + (((((((CB0[34].xyz * f24) + (CB0[36].xyz * f25)) + (CB0[38].xyz * f26)) + (CB0[35].xyz * f27)) + (CB0[37].xyz * f28)) + (CB0[39].xyz * f29)) * f6))) + (CB0[15].xyz * f7)) * CB3[1].xyz;
    vec2 f31 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f32 = f31 + (f14.xz * 0.0500000007450580596923828125);
    float f33 = texture(GBufferDepthTexture, f32).x * 500.0;
    float f34 = clamp(f33 - VARYING8.w, 0.0, 1.0);
    vec3 f35 = mix(texture(GBufferColorTexture, f31).xyz, texture(GBufferColorTexture, f32).xyz, vec3(f34));
    float f36 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f37 = vec4(f19, 0.0);
    vec4 f38 = f37 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f39 = (f38.xy * 0.5) + vec2(0.5 * f38.w);
    vec4 f40 = f38;
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    float f42 = VARYING8.w * (-0.20000000298023223876953125);
    float f43 = 1.0 + clamp(0.0, f42, f36);
    vec4 f44 = VARYING8 + (f41 * f43);
    float f45 = f44.w;
    float f46 = f43 + clamp((texture(GBufferDepthTexture, f44.xy / vec2(f45)).x * 500.0) - f45, f42, f36);
    vec4 f47 = VARYING8 + (f41 * f46);
    float f48 = f47.w;
    float f49 = f46 + clamp((texture(GBufferDepthTexture, f47.xy / vec2(f48)).x * 500.0) - f48, f42, f36);
    vec4 f50 = VARYING8 + (f41 * f49);
    float f51 = f50.w;
    float f52 = f49 + clamp((texture(GBufferDepthTexture, f50.xy / vec2(f51)).x * 500.0) - f51, f42, f36);
    vec4 f53 = VARYING8 + (f41 * f52);
    float f54 = f53.w;
    float f55 = f52 + clamp((texture(GBufferDepthTexture, f53.xy / vec2(f54)).x * 500.0) - f54, f42, f36);
    vec4 f56 = VARYING8 + (f41 * f55);
    float f57 = f56.w;
    float f58 = f55 + clamp((texture(GBufferDepthTexture, f56.xy / vec2(f57)).x * 500.0) - f57, f42, f36);
    vec4 f59 = VARYING8 + (f41 * f58);
    float f60 = f59.w;
    float f61 = f58 + clamp((texture(GBufferDepthTexture, f59.xy / vec2(f60)).x * 500.0) - f60, f42, f36);
    vec4 f62 = VARYING8 + (f41 * f61);
    float f63 = f62.w;
    vec4 f64 = VARYING8 + (f41 * (f61 + clamp((texture(GBufferDepthTexture, f62.xy / vec2(f63)).x * 500.0) - f63, f42, f36)));
    float f65 = f64.w;
    vec2 f66 = f64.xy / vec2(f65);
    vec3 f67 = texture(GBufferColorTexture, f66).xyz;
    vec3 f68 = (textureLod(PrefilteredEnvTexture, f37.xyz, 0.0).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f19.y * 1.58823525905609130859375, 0.0, 1.0)))) * f6;
    vec3 f69 = vec3(clamp((length((CB0[11].xyz - VARYING7.xyz) - CB0[11].xyz) * CB0[52].y) - (CB0[51].z * CB0[52].y), 0.0, 1.0));
    float f70 = 0.08900000154972076416015625 + (f12 * 0.9110000133514404296875);
    vec3 f71 = -CB0[16].xyz;
    vec3 f72 = normalize(f17 + f71);
    float f73 = f70 * f70;
    float f74 = max(0.001000000047497451305389404296875, dot(f15, f72));
    float f75 = dot(f71, f72);
    float f76 = 1.0 - f75;
    float f77 = f76 * f76;
    float f78 = (f77 * f77) * f76;
    float f79 = f73 * f73;
    float f80 = (((f74 * f79) - f74) * f74) + 1.0;
    vec3 f81 = mix(mix(mix((f35 * f35) * CB0[20].x, f30, vec3(clamp(clamp(((mix(texture(GBufferDepthTexture, f31).x * 500.0, f33, f34) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), f30, f69), mix(mix(f68, (f67 * f67) * CB0[20].x, vec3((((float(abs(f66.x - 0.5) < 0.550000011920928955078125) * float(abs(f66.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f65) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f66).x * 500.0) - f65) < 10.0)) * float(f38.w > 0.0))), f68, f69) + (f5 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f16, f17))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f78) + (vec3(0.0199999995529651641845703125) * (1.0 - f78))) * (((f79 + (f79 * f79)) / (((f80 * f80) * ((f75 * 3.0) + 0.5)) * ((f74 * 0.75) + 0.25))) * clamp(dot(f15, f71) * f7, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f82 = vec4(0.0);
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec4 f84 = f83;
    f84.z = f81.z;
    vec4 f85 = f84;
    f85.w = 1.0;
    vec3 f86 = textureLod(PrefilteredEnvTexture, vec4(f18, 0.0).xyz, max(CB0[18].y, VARYING6.w) * 5.0).xyz;
    bvec3 f87 = bvec3(!(CB0[18].w == 0.0));
    vec3 f88 = mix(vec3(f87.x ? CB0[19].xyz.x : f86.x, f87.y ? CB0[19].xyz.y : f86.y, f87.z ? CB0[19].xyz.z : f86.z), f85.xyz, vec3(VARYING6.w));
    vec4 f89 = f85;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    vec3 f92 = sqrt(clamp(f91.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f93 = f91;
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    _entryPointOutput = f95;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
