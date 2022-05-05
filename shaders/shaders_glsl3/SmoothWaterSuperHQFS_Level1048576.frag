#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[53];
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
    float f0 = clamp(dot(step(CB0[19].xyz, abs(VARYING5 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = f3.xyz * (f3.w * 120.0);
    float f6 = f4.x;
    float f7 = f4.y;
    vec4 f8 = vec4(CB3[0].w);
    float f9 = -VARYING6.x;
    vec4 f10 = ((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), f8) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), f8) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), f8) * VARYING0.z);
    vec2 f11 = f10.wy * 2.0;
    vec2 f12 = f11 - vec2(1.0);
    float f13 = f10.x;
    vec3 f14 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f15 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f9), vec3(VARYING6.y, f9, 0.0), f14) * f12.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f14) * f12.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f11, f12), 0.0, 1.0)))), f13);
    vec3 f16 = f15.xyz;
    vec3 f17 = mix(VARYING6.xyz, f16, vec3(0.25));
    vec3 f18 = normalize(VARYING7.xyz);
    vec3 f19 = f16 * f16;
    bvec3 f20 = lessThan(f16, vec3(0.0));
    vec3 f21 = vec3(f20.x ? f19.x : vec3(0.0).x, f20.y ? f19.y : vec3(0.0).y, f20.z ? f19.z : vec3(0.0).z);
    vec3 f22 = f19 - f21;
    float f23 = f22.x;
    float f24 = f22.y;
    float f25 = f22.z;
    float f26 = f21.x;
    float f27 = f21.y;
    float f28 = f21.z;
    vec2 f29 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f30 = f29 + (f15.xz * 0.0500000007450580596923828125);
    vec4 f31 = texture(GBufferColorTexture, f29);
    f31.w = texture(GBufferDepthTexture, f29).x * 500.0;
    float f32 = texture(GBufferDepthTexture, f30).x * 500.0;
    vec4 f33 = texture(GBufferColorTexture, f30);
    f33.w = f32;
    vec4 f34 = mix(f31, f33, vec4(clamp(f32 - VARYING8.w, 0.0, 1.0)));
    vec3 f35 = f34.xyz;
    vec3 f36 = (f35 * f35) * CB0[15].x;
    vec4 f37 = f34;
    f37.x = f36.x;
    vec4 f38 = f37;
    f38.y = f36.y;
    vec4 f39 = f38;
    f39.z = f36.z;
    vec3 f40 = -f18;
    vec3 f41 = reflect(f40, f17);
    float f42 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f43 = vec4(f41, 0.0);
    vec4 f44 = f43 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f45 = (f44.xy * 0.5) + vec2(0.5 * f44.w);
    vec4 f46 = f44;
    f46.x = f45.x;
    vec4 f47 = f46;
    f47.y = f45.y;
    float f48 = VARYING8.w * (-0.20000000298023223876953125);
    float f49 = 1.0 + clamp(0.0, f48, f42);
    vec4 f50 = VARYING8 + (f47 * f49);
    float f51 = f50.w;
    float f52 = f49 + clamp((texture(GBufferDepthTexture, f50.xy / vec2(f51)).x * 500.0) - f51, f48, f42);
    vec4 f53 = VARYING8 + (f47 * f52);
    float f54 = f53.w;
    float f55 = f52 + clamp((texture(GBufferDepthTexture, f53.xy / vec2(f54)).x * 500.0) - f54, f48, f42);
    vec4 f56 = VARYING8 + (f47 * f55);
    float f57 = f56.w;
    float f58 = f55 + clamp((texture(GBufferDepthTexture, f56.xy / vec2(f57)).x * 500.0) - f57, f48, f42);
    vec4 f59 = VARYING8 + (f47 * f58);
    float f60 = f59.w;
    float f61 = f58 + clamp((texture(GBufferDepthTexture, f59.xy / vec2(f60)).x * 500.0) - f60, f48, f42);
    vec4 f62 = VARYING8 + (f47 * f61);
    float f63 = f62.w;
    float f64 = f61 + clamp((texture(GBufferDepthTexture, f62.xy / vec2(f63)).x * 500.0) - f63, f48, f42);
    vec4 f65 = VARYING8 + (f47 * f64);
    float f66 = f65.w;
    float f67 = f64 + clamp((texture(GBufferDepthTexture, f65.xy / vec2(f66)).x * 500.0) - f66, f48, f42);
    vec4 f68 = VARYING8 + (f47 * f67);
    float f69 = f68.w;
    vec4 f70 = VARYING8 + (f47 * (f67 + clamp((texture(GBufferDepthTexture, f68.xy / vec2(f69)).x * 500.0) - f69, f48, f42)));
    float f71 = f70.w;
    vec2 f72 = f70.xy / vec2(f71);
    vec3 f73 = texture(GBufferColorTexture, f72).xyz;
    vec3 f74 = -CB0[11].xyz;
    vec3 f75 = normalize(f74 + f18);
    float f76 = f13 * f13;
    float f77 = max(0.001000000047497451305389404296875, dot(f16, f75));
    float f78 = dot(f74, f75);
    float f79 = 1.0 - f78;
    float f80 = f79 * f79;
    float f81 = (f80 * f80) * f79;
    float f82 = f76 * f76;
    float f83 = (((f77 * f82) - f77) * f77) + 1.0;
    vec3 f84 = mix(mix(f39.xyz, ((min(f5 + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f6)), vec3(CB0[16].w)) + (((((((CB0[35].xyz * f23) + (CB0[37].xyz * f24)) + (CB0[39].xyz * f25)) + (CB0[36].xyz * f26)) + (CB0[38].xyz * f27)) + (CB0[40].xyz * f28)) + (((((((CB0[29].xyz * f23) + (CB0[31].xyz * f24)) + (CB0[33].xyz * f25)) + (CB0[30].xyz * f26)) + (CB0[32].xyz * f27)) + (CB0[34].xyz * f28)) * f6))) + (CB0[10].xyz * f7)) * CB3[1].xyz, vec3(clamp(clamp(((f34.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f43.xyz, 0.0).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f41.y * 1.58823525905609130859375, 0.0, 1.0)))) * f6, (f73 * f73) * CB0[15].x, vec3((((float(abs(f72.x - 0.5) < 0.550000011920928955078125) * float(abs(f72.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f71) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f72).x * 500.0) - f71) < 10.0)) * float(f44.w > 0.0))) + (f5 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f17, f18))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (((((vec3(f81) + (vec3(0.0199999995529651641845703125) * (1.0 - f81))) * (((f82 + (f82 * f82)) / (((f83 * f83) * ((f78 * 3.0) + 0.5)) * ((f77 * 0.75) + 0.25))) * clamp((dot(f16, f74) * CB0[9].w) * f7, 0.0, 1.0))) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0));
    vec4 f85 = vec4(0.0);
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec4 f88 = f87;
    f88.w = 1.0;
    vec3 f89 = textureLod(PrefilteredEnvTexture, vec4(f40, 0.0).xyz, max(CB0[13].y, VARYING6.w) * 5.0).xyz;
    bvec3 f90 = bvec3(!(CB0[13].w == 0.0));
    vec3 f91 = mix(vec3(f90.x ? CB0[14].xyz.x : f89.x, f90.y ? CB0[14].xyz.y : f89.y, f90.z ? CB0[14].xyz.z : f89.z), f88.xyz, vec3(VARYING6.w));
    vec4 f92 = f88;
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    vec3 f95 = sqrt(clamp(f94.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
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
