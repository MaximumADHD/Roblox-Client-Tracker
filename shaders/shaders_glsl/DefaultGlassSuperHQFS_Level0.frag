#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
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
    vec3 f15 = normalize(((VARYING6.xyz * f7.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * (f6 * 10.0)));
    vec3 f16 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING3.yzx - (VARYING3.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture3D(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture3D(LightGridSkylightTexture, f18), vec4(1.0), f19);
    vec3 f22 = (f20.xyz * (f20.w * 120.0)).xyz;
    float f23 = f21.x;
    vec4 f24 = texture2D(ShadowMapTexture, f16.xy);
    float f25 = f16.z;
    vec3 f26 = f9 * f9;
    float f27 = length(VARYING4.xyz);
    vec3 f28 = VARYING4.xyz / vec3(f27);
    vec3 f29 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f15)).xyz;
    vec3 f30 = mix(f22, (f29 * f29) * CB0[15].x, vec3(f23)) * mix(vec3(1.0), f26, vec3(0.5));
    vec3 f31 = -CB0[11].xyz;
    float f32 = dot(f15, f31) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[24].z + (CB0[24].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f21.y);
    vec3 f33 = normalize(f31 + f28);
    float f34 = clamp(f32, 0.0, 1.0);
    float f35 = f11 * f11;
    float f36 = max(0.001000000047497451305389404296875, dot(f15, f33));
    float f37 = dot(f31, f33);
    float f38 = 1.0 - f37;
    float f39 = f38 * f38;
    float f40 = (f39 * f39) * f38;
    vec3 f41 = vec3(f40) + (vec3(0.039999999105930328369140625) * (1.0 - f40));
    float f42 = f35 * f35;
    float f43 = (((f36 * f42) - f36) * f36) + 1.0;
    float f44 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f15, f28));
    float f45 = 1.0 - VARYING2.w;
    float f46 = mix(0.660000026226043701171875, 1.0, f45 * f45);
    mat4 f47 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f48 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f47;
    vec4 f49 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f46) / max(dot(VARYING4.xyz, f15), 0.00999999977648258209228515625)))) + (f15 * (3.0 * (1.0 - f46)))), 1.0) * f47;
    float f50 = f48.w;
    vec2 f51 = ((f48.xy * 0.5) + vec2(0.5 * f50)).xy / vec2(f50);
    float f52 = f49.w;
    vec2 f53 = ((f49.xy * 0.5) + vec2(0.5 * f52)).xy / vec2(f52);
    vec2 f54 = f53 - vec2(0.5);
    vec2 f55 = (f53 - f51) * clamp(vec2(1.0) - ((f54 * f54) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f56 = normalize(f55) * CB0[23].x;
    vec4 f57 = texture2D(GBufferColorTexture, f51 + (f55 * clamp(min(texture2D(GBufferDepthTexture, f53 + f56).x * 500.0, texture2D(GBufferDepthTexture, f53 - f56).x * 500.0) - f50, 0.0, 1.0)));
    vec3 f58 = f57.xyz;
    vec3 f59 = ((f58 * f58) * CB0[15].x).xyz;
    vec3 f60 = f59 * mix(vec3(1.0), VARYING2.xyz, vec3(f14));
    vec4 f61 = vec4(f60.x, f60.y, f60.z, vec4(0.0).w);
    f61.w = mix(1.0, f57.w, dot(f60.xyz, vec3(1.0)) / (dot(f59, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f62 = mix(mix(f61, vec4(mix((((((vec3(1.0) - (f41 * (CB0[26].w * f1))) * CB0[10].xyz) * f34) + (CB0[12].xyz * clamp(-f32, 0.0, 1.0))) + min(f22 + (CB0[8].xyz + (CB0[9].xyz * f23)), vec3(CB0[16].w))) * (f26 * f13), f30, vec3(VARYING7.w)), 1.0), vec4(f13)), vec4(f30, 1.0), vec4(((f44 * f44) * 0.800000011920928955078125) * f14)) + vec4((f41 * (((f42 + (f42 * f42)) / (((f43 * f43) * ((f37 * 3.0) + 0.5)) * ((f36 * 0.75) + 0.25))) * f34)) * CB0[10].xyz, 0.0);
    float f63 = clamp(exp2((CB0[13].z * f27) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f64 = mix(CB0[14].xyz, f62.xyz, vec3(f63));
    vec4 f65 = vec4(f64.x, f64.y, f64.z, f62.w);
    f65.w = f63 * f62.w;
    vec3 f66 = sqrt(clamp(f65.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f66.x, f66.y, f66.z, f65.w);
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
