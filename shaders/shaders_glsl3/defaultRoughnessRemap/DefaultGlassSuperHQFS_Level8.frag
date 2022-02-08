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
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f1 = VARYING0 * CB2[0].x;
    vec4 f2 = texture(DiffuseMapTexture, f1);
    vec4 f3 = texture(NormalMapTexture, f1);
    vec2 f4 = f3.wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec4 f7 = texture(NormalDetailMapTexture, f1 * CB2[0].w);
    vec2 f8 = (vec3(f5, f6).xy + (vec3((f7.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f0;
    float f9 = f2.w;
    vec3 f10 = (mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f9 + CB2[2].w, 0.0, 1.0))) * f2.xyz) * (1.0 + (f8.x * CB2[0].z));
    vec4 f11 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f12 = texture(SpecularMapTexture, f1);
    float f13 = VARYING2.w * 2.0;
    float f14 = clamp((f13 - 1.0) + f9, 0.0, 1.0);
    float f15 = clamp(f13, 0.0, 1.0);
    float f16 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f17 = VARYING6.xyz * f16;
    vec3 f18 = VARYING5.xyz * f16;
    vec3 f19 = normalize(((f17 * f8.x) + (cross(f18, f17) * f8.y)) + (f18 * (f6 * 10.0)));
    vec3 f20 = -CB0[11].xyz;
    float f21 = dot(f19, f20);
    vec3 f22 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f23 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f24 = VARYING3.yzx - (VARYING3.yzx * f23);
    vec4 f25 = texture(LightMapTexture, f24);
    vec4 f26 = texture(LightGridSkylightTexture, f24);
    vec4 f27 = vec4(clamp(f23, 0.0, 1.0));
    vec4 f28 = mix(f25, vec4(0.0), f27);
    vec4 f29 = mix(f26, vec4(1.0), f27);
    vec3 f30 = (f28.xyz * (f28.w * 120.0)).xyz;
    float f31 = f29.x;
    float f32 = f29.y;
    vec3 f33 = f22 - CB0[41].xyz;
    vec3 f34 = f22 - CB0[42].xyz;
    vec3 f35 = f22 - CB0[43].xyz;
    vec4 f36 = vec4(f22, 1.0) * mat4(CB8[((dot(f33, f33) < CB0[41].w) ? 0 : ((dot(f34, f34) < CB0[42].w) ? 1 : ((dot(f35, f35) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f33, f33) < CB0[41].w) ? 0 : ((dot(f34, f34) < CB0[42].w) ? 1 : ((dot(f35, f35) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f33, f33) < CB0[41].w) ? 0 : ((dot(f34, f34) < CB0[42].w) ? 1 : ((dot(f35, f35) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f33, f33) < CB0[41].w) ? 0 : ((dot(f34, f34) < CB0[42].w) ? 1 : ((dot(f35, f35) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f37 = textureLod(ShadowAtlasTexture, f36.xy, 0.0);
    vec2 f38 = vec2(0.0);
    f38.x = CB0[46].z;
    vec2 f39 = f38;
    f39.y = CB0[46].w;
    float f40 = (2.0 * f36.z) - 1.0;
    float f41 = exp(CB0[46].z * f40);
    float f42 = -exp((-CB0[46].w) * f40);
    vec2 f43 = (f39 * CB0[47].y) * vec2(f41, f42);
    vec2 f44 = f43 * f43;
    float f45 = f37.x;
    float f46 = max(f37.y - (f45 * f45), f44.x);
    float f47 = f41 - f45;
    float f48 = f37.z;
    float f49 = max(f37.w - (f48 * f48), f44.y);
    float f50 = f42 - f48;
    vec3 f51 = f10 * f10;
    float f52 = length(VARYING4.xyz);
    vec3 f53 = VARYING4.xyz / vec3(f52);
    float f54 = 0.08900000154972076416015625 + (mix(f11, f12, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f55 = CB0[26].w * f0;
    float f56 = max(9.9999997473787516355514526367188e-05, dot(f19, f53));
    vec3 f57 = reflect(-f53, f19);
    float f58 = f54 * 5.0;
    vec3 f59 = vec4(f57, f58).xyz;
    vec3 f60 = textureLod(PrefilteredEnvTexture, f59, f58).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f57.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f61 = textureLod(PrefilteredEnvIndoorTexture, f59, f58).xyz;
    vec3 f62;
    if (CB0[27].w == 0.0)
    {
        f62 = f61;
    }
    else
    {
        f62 = mix(f61, textureLod(PrefilteredEnvBlendTargetTexture, f59, f58).xyz, vec3(CB0[27].w));
    }
    vec4 f63 = texture(PrecomputedBRDFTexture, vec2(f54, f56));
    vec3 f64 = normalize(f20 + f53);
    float f65 = clamp(f21 * (((f21 * CB0[47].x) > 0.0) ? mix(min((f41 <= f45) ? 1.0 : clamp(((f46 / (f46 + (f47 * f47))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f42 <= f48) ? 1.0 : clamp(((f49 / (f49 + (f50 * f50))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f32, clamp((length(f22 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f32), 0.0, 1.0);
    float f66 = f54 * f54;
    float f67 = max(0.001000000047497451305389404296875, dot(f19, f64));
    float f68 = dot(f20, f64);
    float f69 = 1.0 - f68;
    float f70 = f69 * f69;
    float f71 = (f70 * f70) * f69;
    vec3 f72 = vec3(f71) + (vec3(0.039999999105930328369140625) * (1.0 - f71));
    float f73 = f66 * f66;
    float f74 = (((f67 * f73) - f67) * f67) + 1.0;
    vec3 f75 = vec3(f31);
    vec3 f76 = mix(f30, f60, f75) * mix(vec3(1.0), f51, vec3(0.5));
    float f77 = f63.x;
    float f78 = f63.y;
    vec3 f79 = ((vec3(0.039999999105930328369140625) * f77) + vec3(f78)) / vec3(f77 + f78);
    vec3 f80 = f19 * f19;
    bvec3 f81 = lessThan(f19, vec3(0.0));
    vec3 f82 = vec3(f81.x ? f80.x : vec3(0.0).x, f81.y ? f80.y : vec3(0.0).y, f81.z ? f80.z : vec3(0.0).z);
    vec3 f83 = f80 - f82;
    float f84 = f83.x;
    float f85 = f83.y;
    float f86 = f83.z;
    float f87 = f82.x;
    float f88 = f82.y;
    float f89 = f82.z;
    float f90 = 1.0 - f56;
    float f91 = 1.0 - VARYING2.w;
    float f92 = mix(0.660000026226043701171875, 1.0, f91 * f91);
    mat4 f93 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f94 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f93;
    vec4 f95 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f92) / max(dot(VARYING4.xyz, f19), 0.00999999977648258209228515625)))) + (f19 * (3.0 * (1.0 - f92)))), 1.0) * f93;
    float f96 = f94.w;
    vec2 f97 = ((f94.xy * 0.5) + vec2(0.5 * f96)).xy / vec2(f96);
    float f98 = f95.w;
    vec2 f99 = ((f95.xy * 0.5) + vec2(0.5 * f98)).xy / vec2(f98);
    vec2 f100 = f99 - vec2(0.5);
    vec2 f101 = (f99 - f97) * clamp(vec2(1.0) - ((f100 * f100) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f102 = normalize(f101) * CB0[23].x;
    vec4 f103 = texture(GBufferColorTexture, f97 + (f101 * clamp(min(texture(GBufferDepthTexture, f99 + f102).x * 500.0, texture(GBufferDepthTexture, f99 - f102).x * 500.0) - f96, 0.0, 1.0)));
    vec3 f104 = f103.xyz;
    vec3 f105 = ((f104 * f104) * CB0[15].x).xyz;
    vec3 f106 = f105 * mix(vec3(1.0), VARYING2.xyz, vec3(f15));
    vec4 f107 = vec4(f106.x, f106.y, f106.z, vec4(0.0).w);
    f107.w = mix(1.0, f103.w, dot(f106.xyz, vec3(1.0)) / (dot(f105, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f108 = mix(mix(f107, vec4(mix(((((((vec3(1.0) - (f72 * f55)) * CB0[10].xyz) * f65) + (f30 * f14)) + (((vec3(1.0) - (f79 * f55)) * (((((((CB0[35].xyz * f84) + (CB0[37].xyz * f85)) + (CB0[39].xyz * f86)) + (CB0[36].xyz * f87)) + (CB0[38].xyz * f88)) + (CB0[40].xyz * f89)) + (((((((CB0[29].xyz * f84) + (CB0[31].xyz * f85)) + (CB0[33].xyz * f86)) + (CB0[30].xyz * f87)) + (CB0[32].xyz * f88)) + (CB0[34].xyz * f89)) * f31))) * f14)) + (CB0[27].xyz + (CB0[28].xyz * f31))) * (f51 * f14), f76, vec3(VARYING7.w)), 1.0), vec4(f14)), vec4(f76, 1.0), vec4(((f90 * f90) * 0.800000011920928955078125) * f15)) + vec4(((f72 * (((f73 + (f73 * f73)) / (((f74 * f74) * ((f68 * 3.0) + 0.5)) * ((f67 * 0.75) + 0.25))) * f65)) * CB0[10].xyz) + (((mix(f62, f60, f75) * f79) * f55) * f14), 0.0);
    float f109 = clamp(exp2((CB0[13].z * f52) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f110 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f109) * 5.0).xyz;
    bvec3 f111 = bvec3(!(CB0[13].w == 0.0));
    vec3 f112 = mix(vec3(f111.x ? CB0[14].xyz.x : f110.x, f111.y ? CB0[14].xyz.y : f110.y, f111.z ? CB0[14].xyz.z : f110.z), f108.xyz, vec3(f109));
    vec4 f113 = vec4(f112.x, f112.y, f112.z, f108.w);
    f113.w = f109 * f108.w;
    vec3 f114 = sqrt(clamp(f113.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f114.x, f114.y, f114.z, f113.w);
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
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
