#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
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
    vec4 f4 = texture(NormalMapTexture, f2);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec4 f8 = texture(NormalDetailMapTexture, f2 * CB2[0].w);
    vec2 f9 = (vec3(f6, f7).xy + (vec3((f8.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f10 = f3.w;
    vec4 f11 = texture(StudsMapTexture, f0);
    vec3 f12 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f10 + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f9.x * CB2[0].z))) * (f11.x * 2.0);
    vec4 f13 = texture(SpecularMapTexture, f2 * CB2[1].w);
    vec4 f14 = texture(SpecularMapTexture, f2);
    vec4 f15 = mix(f13, f14, vec4(clamp((f1 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f16 = f15.y;
    float f17 = VARYING2.w * 2.0;
    float f18 = clamp((f17 - 1.0) + f10, 0.0, 1.0);
    float f19 = clamp(f17, 0.0, 1.0);
    float f20 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f21 = VARYING6.xyz * f20;
    vec3 f22 = VARYING5.xyz * f20;
    vec3 f23 = normalize(((f21 * f9.x) + (cross(f22, f21) * f9.y)) + (f22 * (f7 * 10.0)));
    vec3 f24 = -CB0[11].xyz;
    float f25 = dot(f23, f24);
    vec3 f26 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f27 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING3.yzx - (VARYING3.yzx * f27);
    vec4 f29 = texture(LightMapTexture, f28);
    vec4 f30 = texture(LightGridSkylightTexture, f28);
    vec4 f31 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f32 = mix(f29, vec4(0.0), f31);
    vec4 f33 = mix(f30, vec4(1.0), f31);
    vec3 f34 = (f32.xyz * (f32.w * 120.0)).xyz;
    float f35 = f33.x;
    float f36 = f33.y;
    vec3 f37 = f26 - CB0[41].xyz;
    vec3 f38 = f26 - CB0[42].xyz;
    vec3 f39 = f26 - CB0[43].xyz;
    vec4 f40 = vec4(f26, 1.0) * mat4(CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f41 = textureLod(ShadowAtlasTexture, f40.xy, 0.0);
    vec2 f42 = vec2(0.0);
    f42.x = CB0[46].z;
    vec2 f43 = f42;
    f43.y = CB0[46].w;
    float f44 = (2.0 * f40.z) - 1.0;
    float f45 = exp(CB0[46].z * f44);
    float f46 = -exp((-CB0[46].w) * f44);
    vec2 f47 = (f43 * CB0[47].y) * vec2(f45, f46);
    vec2 f48 = f47 * f47;
    float f49 = f41.x;
    float f50 = max(f41.y - (f49 * f49), f48.x);
    float f51 = f45 - f49;
    float f52 = f41.z;
    float f53 = max(f41.w - (f52 * f52), f48.y);
    float f54 = f46 - f52;
    vec3 f55 = f12 * f12;
    float f56 = length(VARYING4.xyz);
    vec3 f57 = VARYING4.xyz / vec3(f56);
    float f58 = CB0[26].w * f1;
    float f59 = max(9.9999997473787516355514526367188e-05, dot(f23, f57));
    vec3 f60 = reflect(-f57, f23);
    float f61 = f16 * 5.0;
    vec3 f62 = vec4(f60, f61).xyz;
    vec3 f63 = textureLod(PrefilteredEnvTexture, f62, f61).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f60.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f64 = textureLod(PrefilteredEnvIndoorTexture, f62, f61).xyz;
    vec3 f65;
    if (CB0[27].w == 0.0)
    {
        f65 = f64;
    }
    else
    {
        f65 = mix(f64, textureLod(PrefilteredEnvBlendTargetTexture, f62, f61).xyz, vec3(CB0[27].w));
    }
    vec4 f66 = texture(PrecomputedBRDFTexture, vec2(f16, f59));
    vec3 f67 = normalize(f24 + f57);
    float f68 = clamp(f25 * ((f25 > 0.0) ? mix(f36, mix(min((f45 <= f49) ? 1.0 : clamp(((f50 / (f50 + (f51 * f51))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f46 <= f52) ? 1.0 : clamp(((f53 / (f53 + (f54 * f54))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f36, clamp((length(f26 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)), CB0[47].x) : 0.0), 0.0, 1.0);
    float f69 = f16 * f16;
    float f70 = max(0.001000000047497451305389404296875, dot(f23, f67));
    float f71 = dot(f24, f67);
    float f72 = 1.0 - f71;
    float f73 = f72 * f72;
    float f74 = (f73 * f73) * f72;
    vec3 f75 = vec3(f74) + (vec3(0.039999999105930328369140625) * (1.0 - f74));
    float f76 = f69 * f69;
    float f77 = (((f70 * f76) - f70) * f70) + 1.0;
    vec3 f78 = vec3(f35);
    vec3 f79 = mix(f34, f63, f78) * mix(vec3(1.0), f55, vec3(0.5));
    float f80 = f66.x;
    float f81 = f66.y;
    vec3 f82 = ((vec3(0.039999999105930328369140625) * f80) + vec3(f81)) / vec3(f80 + f81);
    vec3 f83 = f23 * f23;
    bvec3 f84 = lessThan(f23, vec3(0.0));
    vec3 f85 = vec3(f84.x ? f83.x : vec3(0.0).x, f84.y ? f83.y : vec3(0.0).y, f84.z ? f83.z : vec3(0.0).z);
    vec3 f86 = f83 - f85;
    float f87 = f86.x;
    float f88 = f86.y;
    float f89 = f86.z;
    float f90 = f85.x;
    float f91 = f85.y;
    float f92 = f85.z;
    float f93 = 1.0 - f59;
    float f94 = 1.0 - VARYING2.w;
    float f95 = mix(0.660000026226043701171875, 1.0, f94 * f94);
    mat4 f96 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f97 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f96;
    vec4 f98 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f95) / max(dot(VARYING4.xyz, f23), 0.00999999977648258209228515625)))) + (f23 * (3.0 * (1.0 - f95)))), 1.0) * f96;
    float f99 = f97.w;
    vec2 f100 = ((f97.xy * 0.5) + vec2(0.5 * f99)).xy / vec2(f99);
    float f101 = f98.w;
    vec2 f102 = ((f98.xy * 0.5) + vec2(0.5 * f101)).xy / vec2(f101);
    vec2 f103 = f102 - vec2(0.5);
    vec2 f104 = (f102 - f100) * clamp(vec2(1.0) - ((f103 * f103) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f105 = normalize(f104) * CB0[23].x;
    vec4 f106 = texture(GBufferColorTexture, f100 + (f104 * clamp(min(texture(GBufferDepthTexture, f102 + f105).x * 500.0, texture(GBufferDepthTexture, f102 - f105).x * 500.0) - f99, 0.0, 1.0)));
    vec3 f107 = f106.xyz;
    vec3 f108 = ((f107 * f107) * CB0[15].x).xyz;
    vec3 f109 = f108 * mix(vec3(1.0), VARYING2.xyz, vec3(f19));
    vec4 f110 = vec4(f109.x, f109.y, f109.z, vec4(0.0).w);
    f110.w = mix(1.0, f106.w, dot(f109.xyz, vec3(1.0)) / (dot(f108, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f111 = mix(mix(f110, vec4(mix(((((((vec3(1.0) - (f75 * f58)) * CB0[10].xyz) * f68) + (f34 * f18)) + (((vec3(1.0) - (f82 * f58)) * (((((((CB0[35].xyz * f87) + (CB0[37].xyz * f88)) + (CB0[39].xyz * f89)) + (CB0[36].xyz * f90)) + (CB0[38].xyz * f91)) + (CB0[40].xyz * f92)) + (((((((CB0[29].xyz * f87) + (CB0[31].xyz * f88)) + (CB0[33].xyz * f89)) + (CB0[30].xyz * f90)) + (CB0[32].xyz * f91)) + (CB0[34].xyz * f92)) * f35))) * f18)) + (CB0[27].xyz + (CB0[28].xyz * f35))) * (f55 * f18), f79, vec3(VARYING7.w)), 1.0), vec4(f18)), vec4(f79, 1.0), vec4(((f93 * f93) * 0.800000011920928955078125) * f19)) + vec4(((f75 * (((f76 + (f76 * f76)) / (((f77 * f77) * ((f71 * 3.0) + 0.5)) * ((f70 * 0.75) + 0.25))) * f68)) * CB0[10].xyz) + (((mix(f65, f63, f78) * f82) * f58) * f18), 0.0);
    float f112 = clamp(exp2((CB0[13].z * f56) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f113 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f112) * 5.0).xyz;
    bvec3 f114 = bvec3(CB0[13].w != 0.0);
    vec3 f115 = mix(vec3(f114.x ? CB0[14].xyz.x : f113.x, f114.y ? CB0[14].xyz.y : f113.y, f114.z ? CB0[14].xyz.z : f113.z), f111.xyz, vec3(f112));
    vec4 f116 = vec4(f115.x, f115.y, f115.z, f111.w);
    f116.w = f112 * f111.w;
    vec3 f117 = sqrt(clamp(f116.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f117.x, f117.y, f117.z, f116.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
