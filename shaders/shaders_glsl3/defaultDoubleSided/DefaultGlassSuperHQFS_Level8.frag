#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    vec4 f3 = texture(DiffuseMapTexture, f2);
    vec2 f4 = texture(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = (vec3(f5, f6).xy + (vec3((texture(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f8 = f3.w;
    vec3 f9 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f8 + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f7.x * CB2[0].z))) * (texture(StudsMapTexture, f0).x * 2.0);
    vec4 f10 = mix(texture(SpecularMapTexture, f2 * CB2[1].w), texture(SpecularMapTexture, f2), vec4(clamp((f1 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f11 = f10.y;
    float f12 = VARYING2.w * 2.0;
    float f13 = clamp((f12 - 1.0) + f8, 0.0, 1.0);
    float f14 = clamp(f12, 0.0, 1.0);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f7.x) + (cross(f17, f16) * f7.y)) + (f17 * (f6 * 10.0)));
    vec3 f19 = -CB0[11].xyz;
    float f20 = dot(f18, f19);
    vec3 f21 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f22 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING3.yzx - (VARYING3.yzx * f22);
    vec4 f24 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f25 = mix(texture(LightMapTexture, f23), vec4(0.0), f24);
    vec4 f26 = mix(texture(LightGridSkylightTexture, f23), vec4(1.0), f24);
    vec3 f27 = (f25.xyz * (f25.w * 120.0)).xyz;
    float f28 = f26.x;
    float f29 = f26.y;
    vec3 f30 = f21 - CB0[41].xyz;
    vec3 f31 = f21 - CB0[42].xyz;
    vec3 f32 = f21 - CB0[43].xyz;
    vec4 f33 = vec4(f21, 1.0) * mat4(CB8[((dot(f30, f30) < CB0[41].w) ? 0 : ((dot(f31, f31) < CB0[42].w) ? 1 : ((dot(f32, f32) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f30, f30) < CB0[41].w) ? 0 : ((dot(f31, f31) < CB0[42].w) ? 1 : ((dot(f32, f32) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f30, f30) < CB0[41].w) ? 0 : ((dot(f31, f31) < CB0[42].w) ? 1 : ((dot(f32, f32) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f30, f30) < CB0[41].w) ? 0 : ((dot(f31, f31) < CB0[42].w) ? 1 : ((dot(f32, f32) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f34 = textureLod(ShadowAtlasTexture, f33.xy, 0.0);
    vec2 f35 = vec2(0.0);
    f35.x = CB0[45].z;
    vec2 f36 = f35;
    f36.y = CB0[45].w;
    float f37 = (2.0 * f33.z) - 1.0;
    float f38 = exp(CB0[45].z * f37);
    float f39 = -exp((-CB0[45].w) * f37);
    vec2 f40 = (f36 * CB0[46].y) * vec2(f38, f39);
    vec2 f41 = f40 * f40;
    float f42 = f34.x;
    float f43 = max(f34.y - (f42 * f42), f41.x);
    float f44 = f38 - f42;
    float f45 = f34.z;
    float f46 = max(f34.w - (f45 * f45), f41.y);
    float f47 = f39 - f45;
    vec3 f48 = f9 * f9;
    float f49 = length(VARYING4.xyz);
    vec3 f50 = VARYING4.xyz / vec3(f49);
    vec3 f51 = f48 * f13;
    float f52 = CB0[26].w * f1;
    float f53 = max(9.9999997473787516355514526367188e-05, dot(f18, f50));
    vec3 f54 = reflect(-f50, f18);
    float f55 = f11 * 5.0;
    vec3 f56 = vec4(f54, f55).xyz;
    vec3 f57 = textureLod(PrefilteredEnvTexture, f56, f55).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f54.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f58 = texture(PrecomputedBRDFTexture, vec2(f11, f53));
    vec3 f59 = normalize(f19 + f50);
    float f60 = clamp(f20 * ((f20 > 0.0) ? mix(f29, mix(min((f38 <= f42) ? 1.0 : clamp(((f43 / (f43 + (f44 * f44))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f39 <= f45) ? 1.0 : clamp(((f46 / (f46 + (f47 * f47))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f29, clamp((length(f21 - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0), 0.0, 1.0);
    float f61 = f11 * f11;
    float f62 = max(0.001000000047497451305389404296875, dot(f18, f59));
    float f63 = dot(f19, f59);
    float f64 = 1.0 - f63;
    float f65 = f64 * f64;
    float f66 = (f65 * f65) * f64;
    vec3 f67 = vec3(f66) + (vec3(0.039999999105930328369140625) * (1.0 - f66));
    float f68 = f61 * f61;
    float f69 = (((f62 * f68) - f62) * f62) + 1.0;
    vec3 f70 = vec3(f28);
    vec3 f71 = mix(f27, f57, f70) * mix(vec3(1.0), f48, vec3(0.5));
    float f72 = f58.x;
    float f73 = f58.y;
    vec3 f74 = ((vec3(0.039999999105930328369140625) * f72) + vec3(f73)) / vec3(f72 + f73);
    vec3 f75 = f74 * f52;
    vec3 f76 = f18 * f18;
    bvec3 f77 = lessThan(f18, vec3(0.0));
    vec3 f78 = vec3(f77.x ? f76.x : vec3(0.0).x, f77.y ? f76.y : vec3(0.0).y, f77.z ? f76.z : vec3(0.0).z);
    vec3 f79 = f76 - f78;
    float f80 = f79.x;
    float f81 = f79.y;
    float f82 = f79.z;
    float f83 = f78.x;
    float f84 = f78.y;
    float f85 = f78.z;
    vec3 f86 = (mix(textureLod(PrefilteredEnvIndoorTexture, f56, f55).xyz * f27, f57, f70) * f74) * f52;
    float f87 = 1.0 - f53;
    float f88 = 1.0 - VARYING2.w;
    float f89 = mix(0.660000026226043701171875, 1.0, f88 * f88);
    mat4 f90 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f91 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f90;
    vec4 f92 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f89) / max(dot(VARYING4.xyz, f18), 0.00999999977648258209228515625)))) + (f18 * (3.0 * (1.0 - f89)))), 1.0) * f90;
    float f93 = f91.w;
    vec2 f94 = ((f91.xy * 0.5) + vec2(0.5 * f93)).xy / vec2(f93);
    float f95 = f92.w;
    vec2 f96 = ((f92.xy * 0.5) + vec2(0.5 * f95)).xy / vec2(f95);
    vec2 f97 = f96 - vec2(0.5);
    vec2 f98 = (f96 - f94) * clamp(vec2(1.0) - ((f97 * f97) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f99 = normalize(f98) * CB0[23].x;
    vec4 f100 = texture(GBufferColorTexture, f94 + (f98 * clamp(min(texture(GBufferDepthTexture, f96 + f99).x * 500.0, texture(GBufferDepthTexture, f96 - f99).x * 500.0) - f93, 0.0, 1.0)));
    vec3 f101 = f100.xyz;
    vec3 f102 = ((f101 * f101) * CB0[15].x).xyz;
    vec3 f103 = f102 * mix(vec3(1.0), VARYING2.xyz, vec3(f14));
    vec4 f104 = vec4(f103.x, f103.y, f103.z, vec4(0.0).w);
    f104.w = mix(1.0, f100.w, dot(f103.xyz, vec3(1.0)) / (dot(f102, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f105 = mix(mix(f104, vec4(mix(((((((vec3(1.0) - (f67 * f52)) * CB0[10].xyz) * f60) + (((vec3(1.0) - f75) * (((((((CB0[35].xyz * f80) + (CB0[37].xyz * f81)) + (CB0[39].xyz * f82)) + (CB0[36].xyz * f83)) + (CB0[38].xyz * f84)) + (CB0[40].xyz * f85)) + (((((((CB0[29].xyz * f80) + (CB0[31].xyz * f81)) + (CB0[33].xyz * f82)) + (CB0[30].xyz * f83)) + (CB0[32].xyz * f84)) + (CB0[34].xyz * f85)) * f28))) * f13)) + (CB0[27].xyz + (CB0[28].xyz * f28))) * f51) + ((f27 * mix(f51, f86 * (1.0 / (max(max(f86.x, f86.y), f86.z) + 0.00999999977648258209228515625)), f75 * (f52 * (1.0 - f28)))) * f13), f71, vec3(VARYING7.w)), 1.0), vec4(f13)), vec4(f71, 1.0), vec4(((f87 * f87) * 0.800000011920928955078125) * f14)) + vec4(((f67 * (((f68 + (f68 * f68)) / (((f69 * f69) * ((f63 * 3.0) + 0.5)) * ((f62 * 0.75) + 0.25))) * f60)) * CB0[10].xyz) + (f86 * f13), 0.0);
    float f106 = clamp(exp2((CB0[13].z * f49) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f107 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f106) * 5.0).xyz;
    bvec3 f108 = bvec3(CB0[13].w != 0.0);
    vec3 f109 = mix(vec3(f108.x ? CB0[14].xyz.x : f107.x, f108.y ? CB0[14].xyz.y : f107.y, f108.z ? CB0[14].xyz.z : f107.z), f105.xyz, vec3(f106));
    vec4 f110 = vec4(f109.x, f109.y, f109.z, f105.w);
    f110.w = f106 * f105.w;
    vec3 f111 = sqrt(clamp(f110.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f111.x, f111.y, f111.z, f110.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
