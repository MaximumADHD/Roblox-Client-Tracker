#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
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
    vec3 f15 = normalize(((VARYING6.xyz * f7.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * (f6 * 10.0)));
    vec3 f16 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING3.yzx - (VARYING3.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture(LightGridSkylightTexture, f18), vec4(1.0), f19);
    vec3 f22 = (f20.xyz * (f20.w * 120.0)).xyz;
    float f23 = f21.x;
    vec4 f24 = texture(ShadowMapTexture, f16.xy);
    float f25 = f16.z;
    vec3 f26 = f9 * f9;
    float f27 = length(VARYING4.xyz);
    vec3 f28 = VARYING4.xyz / vec3(f27);
    vec3 f29 = f26 * f13;
    float f30 = CB0[26].w * f1;
    float f31 = max(9.9999997473787516355514526367188e-05, dot(f15, f28));
    vec3 f32 = reflect(-f28, f15);
    float f33 = f11 * 5.0;
    vec3 f34 = vec4(f32, f33).xyz;
    vec3 f35 = textureLod(PrefilteredEnvTexture, f34, f33).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f32.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f36 = texture(PrecomputedBRDFTexture, vec2(f11, f31));
    vec3 f37 = vec3(f23);
    vec3 f38 = mix(f22, f35, f37) * mix(vec3(1.0), f26, vec3(0.5));
    vec3 f39 = -CB0[11].xyz;
    float f40 = dot(f15, f39) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[24].z + (CB0[24].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f21.y);
    vec3 f41 = normalize(f39 + f28);
    float f42 = clamp(f40, 0.0, 1.0);
    float f43 = f11 * f11;
    float f44 = max(0.001000000047497451305389404296875, dot(f15, f41));
    float f45 = dot(f39, f41);
    float f46 = 1.0 - f45;
    float f47 = f46 * f46;
    float f48 = (f47 * f47) * f46;
    vec3 f49 = vec3(f48) + (vec3(0.039999999105930328369140625) * (1.0 - f48));
    float f50 = f43 * f43;
    float f51 = (((f44 * f50) - f44) * f44) + 1.0;
    float f52 = f36.x;
    float f53 = f36.y;
    vec3 f54 = ((vec3(0.039999999105930328369140625) * f52) + vec3(f53)) / vec3(f52 + f53);
    vec3 f55 = f54 * f30;
    vec3 f56 = f15 * f15;
    bvec3 f57 = lessThan(f15, vec3(0.0));
    vec3 f58 = vec3(f57.x ? f56.x : vec3(0.0).x, f57.y ? f56.y : vec3(0.0).y, f57.z ? f56.z : vec3(0.0).z);
    vec3 f59 = f56 - f58;
    float f60 = f59.x;
    float f61 = f59.y;
    float f62 = f59.z;
    float f63 = f58.x;
    float f64 = f58.y;
    float f65 = f58.z;
    vec3 f66 = (mix(textureLod(PrefilteredEnvIndoorTexture, f34, f33).xyz * f22, f35, f37) * f54) * f30;
    float f67 = 1.0 - f31;
    float f68 = 1.0 - VARYING2.w;
    float f69 = mix(0.660000026226043701171875, 1.0, f68 * f68);
    mat4 f70 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f71 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f70;
    vec4 f72 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f69) / max(dot(VARYING4.xyz, f15), 0.00999999977648258209228515625)))) + (f15 * (3.0 * (1.0 - f69)))), 1.0) * f70;
    float f73 = f71.w;
    vec2 f74 = ((f71.xy * 0.5) + vec2(0.5 * f73)).xy / vec2(f73);
    float f75 = f72.w;
    vec2 f76 = ((f72.xy * 0.5) + vec2(0.5 * f75)).xy / vec2(f75);
    vec2 f77 = f76 - vec2(0.5);
    vec2 f78 = (f76 - f74) * clamp(vec2(1.0) - ((f77 * f77) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f79 = normalize(f78) * CB0[23].x;
    vec4 f80 = texture(GBufferColorTexture, f74 + (f78 * clamp(min(texture(GBufferDepthTexture, f76 + f79).x * 500.0, texture(GBufferDepthTexture, f76 - f79).x * 500.0) - f73, 0.0, 1.0)));
    vec3 f81 = f80.xyz;
    vec3 f82 = ((f81 * f81) * CB0[15].x).xyz;
    vec3 f83 = f82 * mix(vec3(1.0), VARYING2.xyz, vec3(f14));
    vec4 f84 = vec4(f83.x, f83.y, f83.z, vec4(0.0).w);
    f84.w = mix(1.0, f80.w, dot(f83.xyz, vec3(1.0)) / (dot(f82, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f85 = mix(mix(f84, vec4(mix((((((((vec3(1.0) - (f49 * f30)) * CB0[10].xyz) * f42) + (CB0[12].xyz * clamp(-f40, 0.0, 1.0))) + (((vec3(1.0) - f55) * (((((((CB0[35].xyz * f60) + (CB0[37].xyz * f61)) + (CB0[39].xyz * f62)) + (CB0[36].xyz * f63)) + (CB0[38].xyz * f64)) + (CB0[40].xyz * f65)) + (((((((CB0[29].xyz * f60) + (CB0[31].xyz * f61)) + (CB0[33].xyz * f62)) + (CB0[30].xyz * f63)) + (CB0[32].xyz * f64)) + (CB0[34].xyz * f65)) * f23))) * f13)) + (CB0[27].xyz + (CB0[28].xyz * f23))) * f29) + ((f22 * mix(f29, f66 * (1.0 / (max(max(f66.x, f66.y), f66.z) + 0.00999999977648258209228515625)), f55 * (f30 * (1.0 - f23)))) * f13), f38, vec3(VARYING7.w)), 1.0), vec4(f13)), vec4(f38, 1.0), vec4(((f67 * f67) * 0.800000011920928955078125) * f14)) + vec4(((f49 * (((f50 + (f50 * f50)) / (((f51 * f51) * ((f45 * 3.0) + 0.5)) * ((f44 * 0.75) + 0.25))) * f42)) * CB0[10].xyz) + (f66 * f13), 0.0);
    float f86 = clamp(exp2((CB0[13].z * f27) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f87 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f86) * 5.0).xyz;
    bvec3 f88 = bvec3(CB0[13].w != 0.0);
    vec3 f89 = mix(vec3(f88.x ? CB0[14].xyz.x : f87.x, f88.y ? CB0[14].xyz.y : f87.y, f88.z ? CB0[14].xyz.z : f87.z), f85.xyz, vec3(f86));
    vec4 f90 = vec4(f89.x, f89.y, f89.z, f85.w);
    f90.w = f86 * f85.w;
    vec3 f91 = sqrt(clamp(f90.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f91.x, f91.y, f91.z, f90.w);
}

//$$ShadowMapTexture=s1
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
