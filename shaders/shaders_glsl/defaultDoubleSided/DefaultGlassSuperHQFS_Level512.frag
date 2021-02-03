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
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube EnvironmentMapTexture;

varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    vec4 f3 = texture2D(DiffuseMapTexture, f2);
    vec2 f4 = texture2D(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = (vec3(f5, f6).xy + (vec3((texture2D(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f8 = f3.w;
    vec3 f9 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f8 + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f7.x * CB2[0].z))) * (texture2D(StudsMapTexture, f0).x * 2.0);
    vec4 f10 = mix(texture2D(SpecularMapTexture, f2 * CB2[1].w), texture2D(SpecularMapTexture, f2), vec4(clamp((f1 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f11 = f10.y;
    float f12 = VARYING2.w * 2.0;
    float f13 = clamp((f12 - 1.0) + f8, 0.0, 1.0);
    float f14 = clamp(f12, 0.0, 1.0);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f7.x) + (cross(f17, f16) * f7.y)) + (f17 * (f6 * 10.0)));
    vec3 f19 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f20 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING3.yzx - (VARYING3.yzx * f20);
    vec4 f22 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f23 = mix(texture3D(LightMapTexture, f21), vec4(0.0), f22);
    vec4 f24 = mix(texture3D(LightGridSkylightTexture, f21), vec4(1.0), f22);
    vec3 f25 = (f23.xyz * (f23.w * 120.0)).xyz;
    float f26 = f24.x;
    vec4 f27 = texture2D(ShadowMapTexture, f19.xy);
    float f28 = f19.z;
    vec3 f29 = f9 * f9;
    float f30 = length(VARYING4.xyz);
    vec3 f31 = VARYING4.xyz / vec3(f30);
    vec3 f32 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f18)).xyz;
    vec3 f33 = -CB0[11].xyz;
    float f34 = dot(f18, f33) * ((1.0 - ((step(f27.x, f28) * clamp(CB0[24].z + (CB0[24].w * abs(f28 - 0.5)), 0.0, 1.0)) * f27.y)) * f24.y);
    vec3 f35 = normalize(f33 + f31);
    float f36 = clamp(f34, 0.0, 1.0);
    float f37 = f11 * f11;
    float f38 = max(0.001000000047497451305389404296875, dot(f18, f35));
    float f39 = dot(f33, f35);
    float f40 = 1.0 - f39;
    float f41 = f40 * f40;
    float f42 = (f41 * f41) * f40;
    vec3 f43 = vec3(f42) + (vec3(0.039999999105930328369140625) * (1.0 - f42));
    float f44 = f37 * f37;
    float f45 = (((f38 * f44) - f38) * f38) + 1.0;
    vec3 f46 = mix(f25, (f32 * f32) * CB0[15].x, vec3(f26)) * mix(vec3(1.0), f29, vec3(0.5));
    float f47 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f18, f31));
    float f48 = 1.0 - VARYING2.w;
    float f49 = mix(0.660000026226043701171875, 1.0, f48 * f48);
    mat4 f50 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f51 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f50;
    vec4 f52 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f49) / max(dot(VARYING4.xyz, f18), 0.00999999977648258209228515625)))) + (f18 * (3.0 * (1.0 - f49)))), 1.0) * f50;
    float f53 = f51.w;
    vec2 f54 = ((f51.xy * 0.5) + vec2(0.5 * f53)).xy / vec2(f53);
    float f55 = f52.w;
    vec2 f56 = ((f52.xy * 0.5) + vec2(0.5 * f55)).xy / vec2(f55);
    vec2 f57 = f56 - vec2(0.5);
    vec2 f58 = (f56 - f54) * clamp(vec2(1.0) - ((f57 * f57) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f59 = normalize(f58) * CB0[23].x;
    vec4 f60 = texture2D(GBufferColorTexture, f54 + (f58 * clamp(min(texture2D(GBufferDepthTexture, f56 + f59).x * 500.0, texture2D(GBufferDepthTexture, f56 - f59).x * 500.0) - f53, 0.0, 1.0)));
    vec3 f61 = f60.xyz;
    vec3 f62 = ((f61 * f61) * CB0[15].x).xyz;
    vec3 f63 = f62 * mix(vec3(1.0), VARYING2.xyz, vec3(f14));
    vec4 f64 = vec4(f63.x, f63.y, f63.z, vec4(0.0).w);
    f64.w = mix(1.0, f60.w, dot(f63.xyz, vec3(1.0)) / (dot(f62, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f65 = mix(mix(f64, vec4(mix((((((vec3(1.0) - (f43 * (CB0[26].w * f1))) * CB0[10].xyz) * f36) + (CB0[12].xyz * clamp(-f34, 0.0, 1.0))) + min(f25 + (CB0[8].xyz + (CB0[9].xyz * f26)), vec3(CB0[16].w))) * (f29 * f13), f46, vec3(VARYING7.w)), 1.0), vec4(f13)), vec4(f46, 1.0), vec4(((f47 * f47) * 0.800000011920928955078125) * f14)) + vec4((f43 * (((f44 + (f44 * f44)) / (((f45 * f45) * ((f39 * 3.0) + 0.5)) * ((f38 * 0.75) + 0.25))) * f36)) * CB0[10].xyz, 0.0);
    float f66 = clamp(exp2((CB0[13].z * f30) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f67 = mix(CB0[14].xyz, f65.xyz, vec3(f66));
    vec4 f68 = vec4(f67.x, f67.y, f67.z, f65.w);
    f68.w = f66 * f65.w;
    vec3 f69 = sqrt(clamp(f68.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f69.x, f69.y, f69.z, f68.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
//$$EnvironmentMapTexture=s2
