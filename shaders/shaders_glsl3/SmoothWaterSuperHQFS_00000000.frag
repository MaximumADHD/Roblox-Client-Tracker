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
    vec4 f30 = texture(GBufferColorTexture, f28);
    f30.w = texture(GBufferDepthTexture, f28).x * 500.0;
    float f31 = texture(GBufferDepthTexture, f29).x * 500.0;
    vec4 f32 = texture(GBufferColorTexture, f29);
    f32.w = f31;
    vec4 f33 = mix(f30, f32, vec4(clamp(f31 - VARYING8.w, 0.0, 1.0)));
    vec3 f34 = f33.xyz;
    vec3 f35 = (f34 * f34) * CB0[20].x;
    vec4 f36 = f33;
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    vec4 f38 = f37;
    f38.z = f35.z;
    vec3 f39 = -f17;
    vec3 f40 = reflect(f39, f16);
    float f41 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f42 = vec4(f40, 0.0);
    vec4 f43 = f42 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f44 = (f43.xy * 0.5) + vec2(0.5 * f43.w);
    vec4 f45 = f43;
    f45.x = f44.x;
    vec4 f46 = f45;
    f46.y = f44.y;
    float f47 = VARYING8.w * (-0.20000000298023223876953125);
    float f48 = 1.0 + clamp(0.0, f47, f41);
    vec4 f49 = VARYING8 + (f46 * f48);
    float f50 = f49.w;
    float f51 = f48 + clamp((texture(GBufferDepthTexture, f49.xy / vec2(f50)).x * 500.0) - f50, f47, f41);
    vec4 f52 = VARYING8 + (f46 * f51);
    float f53 = f52.w;
    float f54 = f51 + clamp((texture(GBufferDepthTexture, f52.xy / vec2(f53)).x * 500.0) - f53, f47, f41);
    vec4 f55 = VARYING8 + (f46 * f54);
    float f56 = f55.w;
    float f57 = f54 + clamp((texture(GBufferDepthTexture, f55.xy / vec2(f56)).x * 500.0) - f56, f47, f41);
    vec4 f58 = VARYING8 + (f46 * f57);
    float f59 = f58.w;
    float f60 = f57 + clamp((texture(GBufferDepthTexture, f58.xy / vec2(f59)).x * 500.0) - f59, f47, f41);
    vec4 f61 = VARYING8 + (f46 * f60);
    float f62 = f61.w;
    float f63 = f60 + clamp((texture(GBufferDepthTexture, f61.xy / vec2(f62)).x * 500.0) - f62, f47, f41);
    vec4 f64 = VARYING8 + (f46 * f63);
    float f65 = f64.w;
    float f66 = f63 + clamp((texture(GBufferDepthTexture, f64.xy / vec2(f65)).x * 500.0) - f65, f47, f41);
    vec4 f67 = VARYING8 + (f46 * f66);
    float f68 = f67.w;
    vec4 f69 = VARYING8 + (f46 * (f66 + clamp((texture(GBufferDepthTexture, f67.xy / vec2(f68)).x * 500.0) - f68, f47, f41)));
    float f70 = f69.w;
    vec2 f71 = f69.xy / vec2(f70);
    vec3 f72 = texture(GBufferColorTexture, f71).xyz;
    float f73 = 0.08900000154972076416015625 + (f12 * 0.9110000133514404296875);
    vec3 f74 = -CB0[16].xyz;
    vec3 f75 = normalize(f17 - CB0[16].xyz);
    float f76 = f73 * f73;
    float f77 = max(0.001000000047497451305389404296875, dot(f15, f75));
    float f78 = dot(f74, f75);
    float f79 = 1.0 - f78;
    float f80 = f79 * f79;
    float f81 = (f80 * f80) * f79;
    float f82 = f76 * f76;
    float f83 = (((f77 * f82) - f77) * f77) + 1.0;
    vec3 f84 = mix(mix(f38.xyz, ((min(f5 + (CB0[32].xyz + (CB0[33].xyz * f6)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f22) + (CB0[42].xyz * f23)) + (CB0[44].xyz * f24)) + (CB0[41].xyz * f25)) + (CB0[43].xyz * f26)) + (CB0[45].xyz * f27)) + (((((((CB0[34].xyz * f22) + (CB0[36].xyz * f23)) + (CB0[38].xyz * f24)) + (CB0[35].xyz * f25)) + (CB0[37].xyz * f26)) + (CB0[39].xyz * f27)) * f6))) + (CB0[15].xyz * f7)) * CB3[1].xyz, vec3(clamp(clamp(((f33.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f42.xyz, 0.0).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f40.y * 1.58823525905609130859375, 0.0, 1.0)))) * f6, (f72 * f72) * CB0[20].x, vec3((((float(abs(f71.x - 0.5) < 0.550000011920928955078125) * float(abs(f71.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f70) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f71).x * 500.0) - f70) < 10.0)) * float(f43.w > 0.0))) + (f5 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f16, f17))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (((((vec3(f81) + (vec3(0.0199999995529651641845703125) * (1.0 - f81))) * (min((f82 + (f82 * f82)) / (((f83 * f83) * ((f78 * 3.0) + 0.5)) * ((f77 * 0.75) + 0.25)), 65504.0) * clamp(dot(f15, f74) * f7, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f85 = vec4(0.0);
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec4 f88 = f87;
    f88.w = 1.0;
    vec3 f89 = textureLod(PrefilteredEnvTexture, vec4(f39, 0.0).xyz, max(CB0[18].y, VARYING6.w) * 5.0).xyz;
    bvec3 f90 = bvec3(!(CB0[18].w == 0.0));
    vec3 f91 = mix(vec3(f90.x ? CB0[19].xyz.x : f89.x, f90.y ? CB0[19].xyz.y : f89.y, f90.z ? CB0[19].xyz.z : f89.z), f88.xyz, vec3(VARYING6.w));
    vec4 f92 = f88;
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    vec3 f95 = sqrt(clamp(f94.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f96 = f94;
    f96.x = f95.x;
    vec4 f97 = f96;
    f97.y = f95.y;
    vec4 f98 = f97;
    f98.z = f95.z;
    _entryPointOutput = f98;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
