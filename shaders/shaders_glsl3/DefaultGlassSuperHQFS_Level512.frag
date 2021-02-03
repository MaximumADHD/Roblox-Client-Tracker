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
    vec3 f37 = -CB0[11].xyz;
    float f38 = dot(f15, f37) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[24].z + (CB0[24].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f21.y);
    vec3 f39 = normalize(f37 + f28);
    float f40 = clamp(f38, 0.0, 1.0);
    float f41 = f11 * f11;
    float f42 = max(0.001000000047497451305389404296875, dot(f15, f39));
    float f43 = dot(f37, f39);
    float f44 = 1.0 - f43;
    float f45 = f44 * f44;
    float f46 = (f45 * f45) * f44;
    vec3 f47 = vec3(f46) + (vec3(0.039999999105930328369140625) * (1.0 - f46));
    float f48 = f41 * f41;
    float f49 = (((f42 * f48) - f42) * f42) + 1.0;
    vec3 f50 = vec3(f23);
    vec3 f51 = mix(f22, f35, f50) * mix(vec3(1.0), f26, vec3(0.5));
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
    vec3 f66 = ((((((CB0[35].xyz * f60) + (CB0[37].xyz * f61)) + (CB0[39].xyz * f62)) + (CB0[36].xyz * f63)) + (CB0[38].xyz * f64)) + (CB0[40].xyz * f65)) + (((((((CB0[29].xyz * f60) + (CB0[31].xyz * f61)) + (CB0[33].xyz * f62)) + (CB0[30].xyz * f63)) + (CB0[32].xyz * f64)) + (CB0[34].xyz * f65)) * f23);
    vec3 f67 = (mix(textureLod(PrefilteredEnvIndoorTexture, f34, f33).xyz, f35, f50) * f54) * f30;
    float f68 = 1.0 - f31;
    float f69 = 1.0 - VARYING2.w;
    float f70 = mix(0.660000026226043701171875, 1.0, f69 * f69);
    mat4 f71 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f72 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f71;
    vec4 f73 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f70) / max(dot(VARYING4.xyz, f15), 0.00999999977648258209228515625)))) + (f15 * (3.0 * (1.0 - f70)))), 1.0) * f71;
    float f74 = f72.w;
    vec2 f75 = ((f72.xy * 0.5) + vec2(0.5 * f74)).xy / vec2(f74);
    float f76 = f73.w;
    vec2 f77 = ((f73.xy * 0.5) + vec2(0.5 * f76)).xy / vec2(f76);
    vec2 f78 = f77 - vec2(0.5);
    vec2 f79 = (f77 - f75) * clamp(vec2(1.0) - ((f78 * f78) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f80 = normalize(f79) * CB0[23].x;
    vec4 f81 = texture(GBufferColorTexture, f75 + (f79 * clamp(min(texture(GBufferDepthTexture, f77 + f80).x * 500.0, texture(GBufferDepthTexture, f77 - f80).x * 500.0) - f74, 0.0, 1.0)));
    vec3 f82 = f81.xyz;
    vec3 f83 = ((f82 * f82) * CB0[15].x).xyz;
    vec3 f84 = f83 * mix(vec3(1.0), VARYING2.xyz, vec3(f14));
    vec4 f85 = vec4(f84.x, f84.y, f84.z, vec4(0.0).w);
    f85.w = mix(1.0, f81.w, dot(f84.xyz, vec3(1.0)) / (dot(f83, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f86 = mix(mix(f85, vec4(mix((((((((vec3(1.0) - (f47 * f30)) * CB0[10].xyz) * f40) + (CB0[12].xyz * clamp(-f38, 0.0, 1.0))) + ((((vec3(1.0) - f55) * f66) * CB0[25].w) * f13)) + (CB0[27].xyz + (CB0[28].xyz * f23))) * f29) + ((f22 * mix(f29, f67 * (1.0 / (max(max(f66.x, f66.y), f66.z) + 0.00999999977648258209228515625)), f55 * (f30 * (1.0 - f23)))) * f13), f51, vec3(VARYING7.w)), 1.0), vec4(f13)), vec4(f51, 1.0), vec4(((f68 * f68) * 0.800000011920928955078125) * f14)) + vec4(((f47 * (((f48 + (f48 * f48)) / (((f49 * f49) * ((f43 * 3.0) + 0.5)) * ((f42 * 0.75) + 0.25))) * f40)) * CB0[10].xyz) + ((f67 * f23) * f13), 0.0);
    float f87 = clamp(exp2((CB0[13].z * f27) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f88 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f87) * 5.0).xyz;
    bvec3 f89 = bvec3(CB0[13].w != 0.0);
    vec3 f90 = mix(vec3(f89.x ? CB0[14].xyz.x : f88.x, f89.y ? CB0[14].xyz.y : f88.y, f89.z ? CB0[14].xyz.z : f88.z), f86.xyz, vec3(f87));
    vec4 f91 = vec4(f90.x, f90.y, f90.z, f86.w);
    f91.w = f87 * f86.w;
    vec3 f92 = sqrt(clamp(f91.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f92.x, f92.y, f92.z, f91.w);
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
