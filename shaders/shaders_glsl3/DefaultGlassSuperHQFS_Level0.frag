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
    vec4 f13 = mix(f11, f12, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f14 = f13.y;
    float f15 = VARYING2.w * 2.0;
    float f16 = clamp((f15 - 1.0) + f9, 0.0, 1.0);
    float f17 = clamp(f15, 0.0, 1.0);
    float f18 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f19 = VARYING6.xyz * f18;
    vec3 f20 = VARYING5.xyz * f18;
    vec3 f21 = normalize(((f19 * f8.x) + (cross(f20, f19) * f8.y)) + (f20 * (f6 * 10.0)));
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
    vec4 f32 = texture(ShadowMapTexture, f22.xy);
    float f33 = f22.z;
    vec3 f34 = f10 * f10;
    float f35 = length(VARYING4.xyz);
    vec3 f36 = VARYING4.xyz / vec3(f35);
    float f37 = CB0[26].w * f0;
    float f38 = max(9.9999997473787516355514526367188e-05, dot(f21, f36));
    vec3 f39 = reflect(-f36, f21);
    float f40 = f14 * 5.0;
    vec3 f41 = vec4(f39, f40).xyz;
    vec3 f42 = textureLod(PrefilteredEnvTexture, f41, f40).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f39.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f43 = textureLod(PrefilteredEnvIndoorTexture, f41, f40).xyz;
    vec3 f44;
    if (CB0[27].w == 0.0)
    {
        f44 = f43;
    }
    else
    {
        f44 = mix(f43, textureLod(PrefilteredEnvBlendTargetTexture, f41, f40).xyz, vec3(CB0[27].w));
    }
    vec4 f45 = texture(PrecomputedBRDFTexture, vec2(f14, f38));
    vec3 f46 = -CB0[11].xyz;
    float f47 = dot(f21, f46) * ((1.0 - ((step(f32.x, f33) * clamp(CB0[24].z + (CB0[24].w * abs(f33 - 0.5)), 0.0, 1.0)) * f32.y)) * f29.y);
    vec3 f48 = normalize(f46 + f36);
    float f49 = clamp(f47, 0.0, 1.0);
    float f50 = f14 * f14;
    float f51 = max(0.001000000047497451305389404296875, dot(f21, f48));
    float f52 = dot(f46, f48);
    float f53 = 1.0 - f52;
    float f54 = f53 * f53;
    float f55 = (f54 * f54) * f53;
    vec3 f56 = vec3(f55) + (vec3(0.039999999105930328369140625) * (1.0 - f55));
    float f57 = f50 * f50;
    float f58 = (((f51 * f57) - f51) * f51) + 1.0;
    vec3 f59 = vec3(f31);
    vec3 f60 = mix(f30, f42, f59) * mix(vec3(1.0), f34, vec3(0.5));
    float f61 = f45.x;
    float f62 = f45.y;
    vec3 f63 = ((vec3(0.039999999105930328369140625) * f61) + vec3(f62)) / vec3(f61 + f62);
    vec3 f64 = f21 * f21;
    bvec3 f65 = lessThan(f21, vec3(0.0));
    vec3 f66 = vec3(f65.x ? f64.x : vec3(0.0).x, f65.y ? f64.y : vec3(0.0).y, f65.z ? f64.z : vec3(0.0).z);
    vec3 f67 = f64 - f66;
    float f68 = f67.x;
    float f69 = f67.y;
    float f70 = f67.z;
    float f71 = f66.x;
    float f72 = f66.y;
    float f73 = f66.z;
    float f74 = 1.0 - f38;
    float f75 = 1.0 - VARYING2.w;
    float f76 = mix(0.660000026226043701171875, 1.0, f75 * f75);
    mat4 f77 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f78 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f77;
    vec4 f79 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f76) / max(dot(VARYING4.xyz, f21), 0.00999999977648258209228515625)))) + (f21 * (3.0 * (1.0 - f76)))), 1.0) * f77;
    float f80 = f78.w;
    vec2 f81 = ((f78.xy * 0.5) + vec2(0.5 * f80)).xy / vec2(f80);
    float f82 = f79.w;
    vec2 f83 = ((f79.xy * 0.5) + vec2(0.5 * f82)).xy / vec2(f82);
    vec2 f84 = f83 - vec2(0.5);
    vec2 f85 = (f83 - f81) * clamp(vec2(1.0) - ((f84 * f84) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f86 = normalize(f85) * CB0[23].x;
    vec4 f87 = texture(GBufferColorTexture, f81 + (f85 * clamp(min(texture(GBufferDepthTexture, f83 + f86).x * 500.0, texture(GBufferDepthTexture, f83 - f86).x * 500.0) - f80, 0.0, 1.0)));
    vec3 f88 = f87.xyz;
    vec3 f89 = ((f88 * f88) * CB0[15].x).xyz;
    vec3 f90 = f89 * mix(vec3(1.0), VARYING2.xyz, vec3(f17));
    vec4 f91 = vec4(f90.x, f90.y, f90.z, vec4(0.0).w);
    f91.w = mix(1.0, f87.w, dot(f90.xyz, vec3(1.0)) / (dot(f89, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f92 = mix(mix(f91, vec4(mix((((((((vec3(1.0) - (f56 * f37)) * CB0[10].xyz) * f49) + (CB0[12].xyz * clamp(-f47, 0.0, 1.0))) + (f30 * f16)) + (((vec3(1.0) - (f63 * f37)) * (((((((CB0[35].xyz * f68) + (CB0[37].xyz * f69)) + (CB0[39].xyz * f70)) + (CB0[36].xyz * f71)) + (CB0[38].xyz * f72)) + (CB0[40].xyz * f73)) + (((((((CB0[29].xyz * f68) + (CB0[31].xyz * f69)) + (CB0[33].xyz * f70)) + (CB0[30].xyz * f71)) + (CB0[32].xyz * f72)) + (CB0[34].xyz * f73)) * f31))) * f16)) + (CB0[27].xyz + (CB0[28].xyz * f31))) * (f34 * f16), f60, vec3(VARYING7.w)), 1.0), vec4(f16)), vec4(f60, 1.0), vec4(((f74 * f74) * 0.800000011920928955078125) * f17)) + vec4(((f56 * (((f57 + (f57 * f57)) / (((f58 * f58) * ((f52 * 3.0) + 0.5)) * ((f51 * 0.75) + 0.25))) * f49)) * CB0[10].xyz) + (((mix(f44, f42, f59) * f63) * f37) * f16), 0.0);
    float f93 = clamp(exp2((CB0[13].z * f35) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f94 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f93) * 5.0).xyz;
    bvec3 f95 = bvec3(!(CB0[13].w == 0.0));
    vec3 f96 = mix(vec3(f95.x ? CB0[14].xyz.x : f94.x, f95.y ? CB0[14].xyz.y : f94.y, f95.z ? CB0[14].xyz.z : f94.z), f92.xyz, vec3(f93));
    vec4 f97 = vec4(f96.x, f96.y, f96.z, f92.w);
    f97.w = f93 * f92.w;
    vec3 f98 = sqrt(clamp(f97.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f98.x, f98.y, f98.z, f97.w);
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
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
