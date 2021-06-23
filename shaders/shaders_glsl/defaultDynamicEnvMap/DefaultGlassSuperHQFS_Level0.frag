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
    vec4 f9 = mix(texture2D(SpecularMapTexture, f1 * CB2[1].w), texture2D(SpecularMapTexture, f1), vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f10 = f9.y;
    float f11 = VARYING2.w * 2.0;
    float f12 = clamp((f11 - 1.0) + f7, 0.0, 1.0);
    float f13 = clamp(f11, 0.0, 1.0);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f6.x) + (cross(f16, f15) * f6.y)) + (f16 * (f5 * 10.0)));
    vec3 f18 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f19 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING3.yzx - (VARYING3.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture3D(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture3D(LightGridSkylightTexture, f20), vec4(1.0), f21);
    vec3 f24 = (f22.xyz * (f22.w * 120.0)).xyz;
    float f25 = f23.x;
    vec4 f26 = texture2D(ShadowMapTexture, f18.xy);
    float f27 = f18.z;
    vec3 f28 = f8 * f8;
    float f29 = length(VARYING4.xyz);
    vec3 f30 = VARYING4.xyz / vec3(f29);
    vec3 f31 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f17)).xyz;
    vec3 f32 = -CB0[11].xyz;
    float f33 = dot(f17, f32) * ((1.0 - ((step(f26.x, f27) * clamp(CB0[24].z + (CB0[24].w * abs(f27 - 0.5)), 0.0, 1.0)) * f26.y)) * f23.y);
    vec3 f34 = normalize(f32 + f30);
    float f35 = clamp(f33, 0.0, 1.0);
    float f36 = f10 * f10;
    float f37 = max(0.001000000047497451305389404296875, dot(f17, f34));
    float f38 = dot(f32, f34);
    float f39 = 1.0 - f38;
    float f40 = f39 * f39;
    float f41 = (f40 * f40) * f39;
    vec3 f42 = vec3(f41) + (vec3(0.039999999105930328369140625) * (1.0 - f41));
    float f43 = f36 * f36;
    float f44 = (((f37 * f43) - f37) * f37) + 1.0;
    vec3 f45 = mix(f24, (f31 * f31) * CB0[15].x, vec3(f25)) * mix(vec3(1.0), f28, vec3(0.5));
    float f46 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f17, f30));
    float f47 = 1.0 - VARYING2.w;
    float f48 = mix(0.660000026226043701171875, 1.0, f47 * f47);
    mat4 f49 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f50 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f49;
    vec4 f51 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f48) / max(dot(VARYING4.xyz, f17), 0.00999999977648258209228515625)))) + (f17 * (3.0 * (1.0 - f48)))), 1.0) * f49;
    float f52 = f50.w;
    vec2 f53 = ((f50.xy * 0.5) + vec2(0.5 * f52)).xy / vec2(f52);
    float f54 = f51.w;
    vec2 f55 = ((f51.xy * 0.5) + vec2(0.5 * f54)).xy / vec2(f54);
    vec2 f56 = f55 - vec2(0.5);
    vec2 f57 = (f55 - f53) * clamp(vec2(1.0) - ((f56 * f56) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f58 = normalize(f57) * CB0[23].x;
    vec4 f59 = texture2D(GBufferColorTexture, f53 + (f57 * clamp(min(texture2D(GBufferDepthTexture, f55 + f58).x * 500.0, texture2D(GBufferDepthTexture, f55 - f58).x * 500.0) - f52, 0.0, 1.0)));
    vec3 f60 = f59.xyz;
    vec3 f61 = ((f60 * f60) * CB0[15].x).xyz;
    vec3 f62 = f61 * mix(vec3(1.0), VARYING2.xyz, vec3(f13));
    vec4 f63 = vec4(f62.x, f62.y, f62.z, vec4(0.0).w);
    f63.w = mix(1.0, f59.w, dot(f62.xyz, vec3(1.0)) / (dot(f61, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f64 = mix(mix(f63, vec4(mix((((((vec3(1.0) - (f42 * (CB0[26].w * f0))) * CB0[10].xyz) * f35) + (CB0[12].xyz * clamp(-f33, 0.0, 1.0))) + min(f24 + (CB0[8].xyz + (CB0[9].xyz * f25)), vec3(CB0[16].w))) * (f28 * f12), f45, vec3(VARYING7.w)), 1.0), vec4(f12)), vec4(f45, 1.0), vec4(((f46 * f46) * 0.800000011920928955078125) * f13)) + vec4((f42 * (((f43 + (f43 * f43)) / (((f44 * f44) * ((f38 * 3.0) + 0.5)) * ((f37 * 0.75) + 0.25))) * f35)) * CB0[10].xyz, 0.0);
    float f65 = clamp(exp2((CB0[13].z * f29) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f66 = mix(CB0[14].xyz, f64.xyz, vec3(f65));
    vec4 f67 = vec4(f66.x, f66.y, f66.z, f64.w);
    f67.w = f65 * f64.w;
    vec3 f68 = sqrt(clamp(f67.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f68.x, f68.y, f68.z, f67.w);
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
