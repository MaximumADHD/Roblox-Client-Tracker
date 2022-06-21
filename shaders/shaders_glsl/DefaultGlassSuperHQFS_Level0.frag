#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube EnvironmentMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f1 = VARYING0 * CB2[0].x;
    vec4 f2 = texture2D(DiffuseMapTexture, f1);
    vec2 f3 = texture2D(NormalMapTexture, f1).wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    float f5 = sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0));
    vec3 f6 = vec3(f4, f5);
    vec2 f7 = f6.xy + (vec3((texture2D(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f8 = f6;
    f8.x = f7.x;
    vec3 f9 = f8;
    f9.y = f7.y;
    vec2 f10 = f9.xy * f0;
    float f11 = f10.x;
    vec3 f12 = (VARYING2.xyz * f2.xyz) * (1.0 + (f11 * CB2[0].z));
    vec4 f13 = mix(texture2D(SpecularMapTexture, f1 * CB2[1].w), texture2D(SpecularMapTexture, f1), vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f14 = f13.y;
    float f15 = VARYING2.w * 2.0;
    float f16 = clamp((f15 - 1.0) + f2.w, 0.0, 1.0);
    float f17 = clamp(f15, 0.0, 1.0);
    float f18 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f19 = VARYING6.xyz * f18;
    vec3 f20 = VARYING5.xyz * f18;
    vec3 f21 = normalize(((f19 * f11) + (cross(f20, f19) * f10.y)) + (f20 * (f5 * 10.0)));
    vec3 f22 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f23 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f24 = VARYING3.yzx - (VARYING3.yzx * f23);
    vec4 f25 = vec4(clamp(f23, 0.0, 1.0));
    vec4 f26 = mix(texture3D(LightMapTexture, f24), vec4(0.0), f25);
    vec4 f27 = mix(texture3D(LightGridSkylightTexture, f24), vec4(1.0), f25);
    vec3 f28 = f26.xyz * (f26.w * 120.0);
    float f29 = f27.x;
    vec4 f30 = texture2D(ShadowMapTexture, f22.xy);
    float f31 = f22.z;
    vec3 f32 = f12 * f12;
    float f33 = length(VARYING4.xyz);
    vec3 f34 = VARYING4.xyz / vec3(f33);
    vec3 f35 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f21)).xyz;
    vec3 f36 = -CB0[11].xyz;
    float f37 = (dot(f21, f36) * CB0[9].w) * ((1.0 - ((step(f30.x, f31) * clamp(CB0[24].z + (CB0[24].w * abs(f31 - 0.5)), 0.0, 1.0)) * f30.y)) * f27.y);
    vec3 f38 = normalize(f34 - CB0[11].xyz);
    float f39 = clamp(f37, 0.0, 1.0);
    float f40 = f14 * f14;
    float f41 = max(0.001000000047497451305389404296875, dot(f21, f38));
    float f42 = dot(f36, f38);
    float f43 = 1.0 - f42;
    float f44 = f43 * f43;
    float f45 = (f44 * f44) * f43;
    vec3 f46 = vec3(f45) + (vec3(0.039999999105930328369140625) * (1.0 - f45));
    float f47 = f40 * f40;
    float f48 = (((f41 * f47) - f41) * f41) + 1.0;
    vec3 f49 = mix(f28, (f35 * f35) * CB0[15].x, vec3(f29)) * mix(vec3(1.0), f32, vec3(0.5));
    float f50 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f21, f34));
    float f51 = 1.0 - VARYING2.w;
    float f52 = mix(0.660000026226043701171875, 1.0, f51 * f51);
    mat4 f53 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f54 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f53;
    vec4 f55 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f52) / max(dot(VARYING4.xyz, f21), 0.00999999977648258209228515625)))) + (f21 * (3.0 * (1.0 - f52)))), 1.0) * f53;
    float f56 = f54.w;
    vec2 f57 = (f54.xy * 0.5) + vec2(0.5 * f56);
    vec4 f58 = vec4(0.0);
    f58.x = f57.x;
    vec4 f59 = f58;
    f59.y = f57.y;
    vec2 f60 = f59.xy / vec2(f56);
    float f61 = f55.w;
    vec2 f62 = (f55.xy * 0.5) + vec2(0.5 * f61);
    vec4 f63 = vec4(0.0);
    f63.x = f62.x;
    vec4 f64 = f63;
    f64.y = f62.y;
    vec2 f65 = f64.xy / vec2(f61);
    vec2 f66 = f65 - vec2(0.5);
    vec2 f67 = (f65 - f60) * clamp(vec2(1.0) - ((f66 * f66) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f68 = normalize(f67) * CB0[23].x;
    vec4 f69 = texture2D(GBufferColorTexture, f60 + (f67 * clamp(min(texture2D(GBufferDepthTexture, f65 + f68).x * 500.0, texture2D(GBufferDepthTexture, f65 - f68).x * 500.0) - f56, 0.0, 1.0)));
    vec3 f70 = f69.xyz;
    vec3 f71 = (f70 * f70) * CB0[15].x;
    vec4 f72 = f69;
    f72.x = f71.x;
    vec4 f73 = f72;
    f73.y = f71.y;
    vec4 f74 = f73;
    f74.z = f71.z;
    vec3 f75 = f74.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f17));
    vec4 f76 = vec4(0.0);
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    vec4 f78 = f77;
    f78.z = f75.z;
    vec4 f79 = f78;
    f79.w = mix(1.0, f69.w, dot(f78.xyz, vec3(1.0)) / (dot(f74.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f80 = mix(mix(f79, vec4(mix((((((vec3(1.0) - (f46 * (CB0[26].w * f0))) * CB0[10].xyz) * f39) + (CB0[12].xyz * clamp(-f37, 0.0, 1.0))) + min(f28 + (CB0[8].xyz + (CB0[9].xyz * f29)), vec3(CB0[16].w))) * (f32 * f16), f49, vec3(VARYING7.w)), 1.0), vec4(f16)), vec4(f49, 1.0), vec4(((f50 * f50) * 0.800000011920928955078125) * f17)) + vec4(((f46 * (((f47 + (f47 * f47)) / (((f48 * f48) * ((f42 * 3.0) + 0.5)) * ((f41 * 0.75) + 0.25))) * f39)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w), 0.0);
    float f81 = clamp(exp2((CB0[13].z * f33) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f82 = mix(CB0[14].xyz, f80.xyz, vec3(f81));
    vec4 f83 = f80;
    f83.x = f82.x;
    vec4 f84 = f83;
    f84.y = f82.y;
    vec4 f85 = f84;
    f85.z = f82.z;
    vec4 f86 = f85;
    f86.w = f81 * f80.w;
    vec3 f87 = sqrt(clamp(f86.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f88 = f86;
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec4 f90 = f89;
    f90.z = f87.z;
    gl_FragData[0] = f90;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
//$$EnvironmentMapTexture=s2
