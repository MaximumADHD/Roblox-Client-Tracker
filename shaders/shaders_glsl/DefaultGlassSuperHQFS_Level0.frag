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
    float f12 = f2.w;
    vec3 f13 = (mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f12 + CB2[2].w, 0.0, 1.0))) * f2.xyz) * (1.0 + (f11 * CB2[0].z));
    vec4 f14 = mix(texture2D(SpecularMapTexture, f1 * CB2[1].w), texture2D(SpecularMapTexture, f1), vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f15 = f14.y;
    float f16 = VARYING2.w * 2.0;
    float f17 = clamp((f16 - 1.0) + f12, 0.0, 1.0);
    float f18 = clamp(f16, 0.0, 1.0);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f11) + (cross(f21, f20) * f10.y)) + (f21 * (f5 * 10.0)));
    vec3 f23 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f24 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING3.yzx - (VARYING3.yzx * f24);
    vec4 f26 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f27 = mix(texture3D(LightMapTexture, f25), vec4(0.0), f26);
    vec4 f28 = mix(texture3D(LightGridSkylightTexture, f25), vec4(1.0), f26);
    vec3 f29 = f27.xyz * (f27.w * 120.0);
    float f30 = f28.x;
    vec4 f31 = texture2D(ShadowMapTexture, f23.xy);
    float f32 = f23.z;
    vec3 f33 = f13 * f13;
    float f34 = length(VARYING4.xyz);
    vec3 f35 = VARYING4.xyz / vec3(f34);
    vec3 f36 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f22)).xyz;
    vec3 f37 = -CB0[11].xyz;
    float f38 = (dot(f22, f37) * CB0[9].w) * ((1.0 - ((step(f31.x, f32) * clamp(CB0[24].z + (CB0[24].w * abs(f32 - 0.5)), 0.0, 1.0)) * f31.y)) * f28.y);
    vec3 f39 = normalize(f37 + f35);
    float f40 = clamp(f38, 0.0, 1.0);
    float f41 = f15 * f15;
    float f42 = max(0.001000000047497451305389404296875, dot(f22, f39));
    float f43 = dot(f37, f39);
    float f44 = 1.0 - f43;
    float f45 = f44 * f44;
    float f46 = (f45 * f45) * f44;
    vec3 f47 = vec3(f46) + (vec3(0.039999999105930328369140625) * (1.0 - f46));
    float f48 = f41 * f41;
    float f49 = (((f42 * f48) - f42) * f42) + 1.0;
    vec3 f50 = mix(f29, (f36 * f36) * CB0[15].x, vec3(f30)) * mix(vec3(1.0), f33, vec3(0.5));
    float f51 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f22, f35));
    float f52 = 1.0 - VARYING2.w;
    float f53 = mix(0.660000026226043701171875, 1.0, f52 * f52);
    mat4 f54 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f55 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f54;
    vec4 f56 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f53) / max(dot(VARYING4.xyz, f22), 0.00999999977648258209228515625)))) + (f22 * (3.0 * (1.0 - f53)))), 1.0) * f54;
    float f57 = f55.w;
    vec2 f58 = (f55.xy * 0.5) + vec2(0.5 * f57);
    vec4 f59 = vec4(0.0);
    f59.x = f58.x;
    vec4 f60 = f59;
    f60.y = f58.y;
    vec2 f61 = f60.xy / vec2(f57);
    float f62 = f56.w;
    vec2 f63 = (f56.xy * 0.5) + vec2(0.5 * f62);
    vec4 f64 = vec4(0.0);
    f64.x = f63.x;
    vec4 f65 = f64;
    f65.y = f63.y;
    vec2 f66 = f65.xy / vec2(f62);
    vec2 f67 = f66 - vec2(0.5);
    vec2 f68 = (f66 - f61) * clamp(vec2(1.0) - ((f67 * f67) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f69 = normalize(f68) * CB0[23].x;
    vec4 f70 = texture2D(GBufferColorTexture, f61 + (f68 * clamp(min(texture2D(GBufferDepthTexture, f66 + f69).x * 500.0, texture2D(GBufferDepthTexture, f66 - f69).x * 500.0) - f57, 0.0, 1.0)));
    vec3 f71 = f70.xyz;
    vec3 f72 = (f71 * f71) * CB0[15].x;
    vec4 f73 = f70;
    f73.x = f72.x;
    vec4 f74 = f73;
    f74.y = f72.y;
    vec4 f75 = f74;
    f75.z = f72.z;
    vec3 f76 = f75.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f18));
    vec4 f77 = vec4(0.0);
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec4 f80 = f79;
    f80.w = mix(1.0, f70.w, dot(f79.xyz, vec3(1.0)) / (dot(f75.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f81 = mix(mix(f80, vec4(mix((((((vec3(1.0) - (f47 * (CB0[26].w * f0))) * CB0[10].xyz) * f40) + (CB0[12].xyz * clamp(-f38, 0.0, 1.0))) + min(f29 + (CB0[8].xyz + (CB0[9].xyz * f30)), vec3(CB0[16].w))) * (f33 * f17), f50, vec3(VARYING7.w)), 1.0), vec4(f17)), vec4(f50, 1.0), vec4(((f51 * f51) * 0.800000011920928955078125) * f18)) + vec4(((f47 * (((f48 + (f48 * f48)) / (((f49 * f49) * ((f43 * 3.0) + 0.5)) * ((f42 * 0.75) + 0.25))) * f40)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w), 0.0);
    float f82 = clamp(exp2((CB0[13].z * f34) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f83 = mix(CB0[14].xyz, f81.xyz, vec3(f82));
    vec4 f84 = f81;
    f84.x = f83.x;
    vec4 f85 = f84;
    f85.y = f83.y;
    vec4 f86 = f85;
    f86.z = f83.z;
    vec4 f87 = f86;
    f87.w = f82 * f81.w;
    vec3 f88 = sqrt(clamp(f87.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f89 = f87;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    gl_FragData[0] = f91;
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
