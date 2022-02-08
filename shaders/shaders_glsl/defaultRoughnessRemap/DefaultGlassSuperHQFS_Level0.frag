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
    vec2 f6 = (vec3(f4, f5).xy + (vec3((texture2D(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f0;
    float f7 = f2.w;
    vec3 f8 = (mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f7 + CB2[2].w, 0.0, 1.0))) * f2.xyz) * (1.0 + (f6.x * CB2[0].z));
    float f9 = VARYING2.w * 2.0;
    float f10 = clamp((f9 - 1.0) + f7, 0.0, 1.0);
    float f11 = clamp(f9, 0.0, 1.0);
    float f12 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f13 = VARYING6.xyz * f12;
    vec3 f14 = VARYING5.xyz * f12;
    vec3 f15 = normalize(((f13 * f6.x) + (cross(f14, f13) * f6.y)) + (f14 * (f5 * 10.0)));
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
    vec3 f26 = f8 * f8;
    float f27 = length(VARYING4.xyz);
    vec3 f28 = VARYING4.xyz / vec3(f27);
    float f29 = 0.08900000154972076416015625 + (mix(texture2D(SpecularMapTexture, f1 * CB2[1].w), texture2D(SpecularMapTexture, f1), vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    vec3 f30 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f15)).xyz;
    vec3 f31 = -CB0[11].xyz;
    float f32 = dot(f15, f31) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[24].z + (CB0[24].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f21.y);
    vec3 f33 = normalize(f31 + f28);
    float f34 = clamp(f32, 0.0, 1.0);
    float f35 = f29 * f29;
    float f36 = max(0.001000000047497451305389404296875, dot(f15, f33));
    float f37 = dot(f31, f33);
    float f38 = 1.0 - f37;
    float f39 = f38 * f38;
    float f40 = (f39 * f39) * f38;
    vec3 f41 = vec3(f40) + (vec3(0.039999999105930328369140625) * (1.0 - f40));
    float f42 = f35 * f35;
    float f43 = (((f36 * f42) - f36) * f36) + 1.0;
    vec3 f44 = mix(f22, (f30 * f30) * CB0[15].x, vec3(f23)) * mix(vec3(1.0), f26, vec3(0.5));
    float f45 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f15, f28));
    float f46 = 1.0 - VARYING2.w;
    float f47 = mix(0.660000026226043701171875, 1.0, f46 * f46);
    mat4 f48 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f49 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f48;
    vec4 f50 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f47) / max(dot(VARYING4.xyz, f15), 0.00999999977648258209228515625)))) + (f15 * (3.0 * (1.0 - f47)))), 1.0) * f48;
    float f51 = f49.w;
    vec2 f52 = ((f49.xy * 0.5) + vec2(0.5 * f51)).xy / vec2(f51);
    float f53 = f50.w;
    vec2 f54 = ((f50.xy * 0.5) + vec2(0.5 * f53)).xy / vec2(f53);
    vec2 f55 = f54 - vec2(0.5);
    vec2 f56 = (f54 - f52) * clamp(vec2(1.0) - ((f55 * f55) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f57 = normalize(f56) * CB0[23].x;
    vec4 f58 = texture2D(GBufferColorTexture, f52 + (f56 * clamp(min(texture2D(GBufferDepthTexture, f54 + f57).x * 500.0, texture2D(GBufferDepthTexture, f54 - f57).x * 500.0) - f51, 0.0, 1.0)));
    vec3 f59 = f58.xyz;
    vec3 f60 = ((f59 * f59) * CB0[15].x).xyz;
    vec3 f61 = f60 * mix(vec3(1.0), VARYING2.xyz, vec3(f11));
    vec4 f62 = vec4(f61.x, f61.y, f61.z, vec4(0.0).w);
    f62.w = mix(1.0, f58.w, dot(f61.xyz, vec3(1.0)) / (dot(f60, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f63 = mix(mix(f62, vec4(mix((((((vec3(1.0) - (f41 * (CB0[26].w * f0))) * CB0[10].xyz) * f34) + (CB0[12].xyz * clamp(-f32, 0.0, 1.0))) + min(f22 + (CB0[8].xyz + (CB0[9].xyz * f23)), vec3(CB0[16].w))) * (f26 * f10), f44, vec3(VARYING7.w)), 1.0), vec4(f10)), vec4(f44, 1.0), vec4(((f45 * f45) * 0.800000011920928955078125) * f11)) + vec4((f41 * (((f42 + (f42 * f42)) / (((f43 * f43) * ((f37 * 3.0) + 0.5)) * ((f36 * 0.75) + 0.25))) * f34)) * CB0[10].xyz, 0.0);
    float f64 = clamp(exp2((CB0[13].z * f27) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f65 = mix(CB0[14].xyz, f63.xyz, vec3(f64));
    vec4 f66 = vec4(f65.x, f65.y, f65.z, f63.w);
    f66.w = f64 * f63.w;
    vec3 f67 = sqrt(clamp(f66.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f67.x, f67.y, f67.z, f66.w);
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
