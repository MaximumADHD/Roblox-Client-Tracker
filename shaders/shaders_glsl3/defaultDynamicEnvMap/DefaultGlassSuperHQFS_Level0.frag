#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
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
    vec3 f24 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f25 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f26 = VARYING3.yzx - (VARYING3.yzx * f25);
    vec4 f27 = texture(LightMapTexture, f26);
    vec4 f28 = texture(LightGridSkylightTexture, f26);
    vec4 f29 = vec4(clamp(f25, 0.0, 1.0));
    vec4 f30 = mix(f27, vec4(0.0), f29);
    vec4 f31 = mix(f28, vec4(1.0), f29);
    vec3 f32 = (f30.xyz * (f30.w * 120.0)).xyz;
    float f33 = f31.x;
    vec4 f34 = texture(ShadowMapTexture, f24.xy);
    float f35 = f24.z;
    vec3 f36 = f12 * f12;
    float f37 = length(VARYING4.xyz);
    vec3 f38 = VARYING4.xyz / vec3(f37);
    float f39 = CB0[26].w * f1;
    float f40 = max(9.9999997473787516355514526367188e-05, dot(f23, f38));
    vec3 f41 = reflect(-f38, f23);
    float f42 = f16 * 5.0;
    vec3 f43 = vec4(f41, f42).xyz;
    vec3 f44 = textureLod(PrefilteredEnvTexture, f43, f42).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f41.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f45 = textureLod(PrefilteredEnvIndoorTexture, f43, f42).xyz;
    vec3 f46;
    if (CB0[27].w == 0.0)
    {
        f46 = f45;
    }
    else
    {
        f46 = mix(f45, textureLod(PrefilteredEnvBlendTargetTexture, f43, f42).xyz, vec3(CB0[27].w));
    }
    vec4 f47 = texture(PrecomputedBRDFTexture, vec2(f16, f40));
    vec3 f48 = -CB0[11].xyz;
    float f49 = dot(f23, f48) * ((1.0 - ((step(f34.x, f35) * clamp(CB0[24].z + (CB0[24].w * abs(f35 - 0.5)), 0.0, 1.0)) * f34.y)) * f31.y);
    vec3 f50 = normalize(f48 + f38);
    float f51 = clamp(f49, 0.0, 1.0);
    float f52 = f16 * f16;
    float f53 = max(0.001000000047497451305389404296875, dot(f23, f50));
    float f54 = dot(f48, f50);
    float f55 = 1.0 - f54;
    float f56 = f55 * f55;
    float f57 = (f56 * f56) * f55;
    vec3 f58 = vec3(f57) + (vec3(0.039999999105930328369140625) * (1.0 - f57));
    float f59 = f52 * f52;
    float f60 = (((f53 * f59) - f53) * f53) + 1.0;
    vec3 f61 = vec3(f33);
    vec3 f62 = mix(f32, f44, f61) * mix(vec3(1.0), f36, vec3(0.5));
    float f63 = f47.x;
    float f64 = f47.y;
    vec3 f65 = ((vec3(0.039999999105930328369140625) * f63) + vec3(f64)) / vec3(f63 + f64);
    vec3 f66 = f23 * f23;
    bvec3 f67 = lessThan(f23, vec3(0.0));
    vec3 f68 = vec3(f67.x ? f66.x : vec3(0.0).x, f67.y ? f66.y : vec3(0.0).y, f67.z ? f66.z : vec3(0.0).z);
    vec3 f69 = f66 - f68;
    float f70 = f69.x;
    float f71 = f69.y;
    float f72 = f69.z;
    float f73 = f68.x;
    float f74 = f68.y;
    float f75 = f68.z;
    float f76 = 1.0 - f40;
    float f77 = 1.0 - VARYING2.w;
    float f78 = mix(0.660000026226043701171875, 1.0, f77 * f77);
    mat4 f79 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f80 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f79;
    vec4 f81 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f78) / max(dot(VARYING4.xyz, f23), 0.00999999977648258209228515625)))) + (f23 * (3.0 * (1.0 - f78)))), 1.0) * f79;
    float f82 = f80.w;
    vec2 f83 = ((f80.xy * 0.5) + vec2(0.5 * f82)).xy / vec2(f82);
    float f84 = f81.w;
    vec2 f85 = ((f81.xy * 0.5) + vec2(0.5 * f84)).xy / vec2(f84);
    vec2 f86 = f85 - vec2(0.5);
    vec2 f87 = (f85 - f83) * clamp(vec2(1.0) - ((f86 * f86) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f88 = normalize(f87) * CB0[23].x;
    vec4 f89 = texture(GBufferColorTexture, f83 + (f87 * clamp(min(texture(GBufferDepthTexture, f85 + f88).x * 500.0, texture(GBufferDepthTexture, f85 - f88).x * 500.0) - f82, 0.0, 1.0)));
    vec3 f90 = f89.xyz;
    vec3 f91 = ((f90 * f90) * CB0[15].x).xyz;
    vec3 f92 = f91 * mix(vec3(1.0), VARYING2.xyz, vec3(f19));
    vec4 f93 = vec4(f92.x, f92.y, f92.z, vec4(0.0).w);
    f93.w = mix(1.0, f89.w, dot(f92.xyz, vec3(1.0)) / (dot(f91, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f94 = mix(mix(f93, vec4(mix((((((((vec3(1.0) - (f58 * f39)) * CB0[10].xyz) * f51) + (CB0[12].xyz * clamp(-f49, 0.0, 1.0))) + (f32 * f18)) + (((vec3(1.0) - (f65 * f39)) * (((((((CB0[35].xyz * f70) + (CB0[37].xyz * f71)) + (CB0[39].xyz * f72)) + (CB0[36].xyz * f73)) + (CB0[38].xyz * f74)) + (CB0[40].xyz * f75)) + (((((((CB0[29].xyz * f70) + (CB0[31].xyz * f71)) + (CB0[33].xyz * f72)) + (CB0[30].xyz * f73)) + (CB0[32].xyz * f74)) + (CB0[34].xyz * f75)) * f33))) * f18)) + (CB0[27].xyz + (CB0[28].xyz * f33))) * (f36 * f18), f62, vec3(VARYING7.w)), 1.0), vec4(f18)), vec4(f62, 1.0), vec4(((f76 * f76) * 0.800000011920928955078125) * f19)) + vec4(((f58 * (((f59 + (f59 * f59)) / (((f60 * f60) * ((f54 * 3.0) + 0.5)) * ((f53 * 0.75) + 0.25))) * f51)) * CB0[10].xyz) + (((mix(f46, f44, f61) * f65) * f39) * f18), 0.0);
    float f95 = clamp(exp2((CB0[13].z * f37) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f96 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f95) * 5.0).xyz;
    bvec3 f97 = bvec3(CB0[13].w != 0.0);
    vec3 f98 = mix(vec3(f97.x ? CB0[14].xyz.x : f96.x, f97.y ? CB0[14].xyz.y : f96.y, f97.z ? CB0[14].xyz.z : f96.z), f94.xyz, vec3(f95));
    vec4 f99 = vec4(f98.x, f98.y, f98.z, f94.w);
    f99.w = f95 * f94.w;
    vec3 f100 = sqrt(clamp(f99.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f100.x, f100.y, f100.z, f99.w);
}

//$$ShadowMapTexture=s1
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
