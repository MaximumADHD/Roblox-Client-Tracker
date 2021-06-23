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
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f6.x) + (cross(f15, f14) * f6.y)) + (f15 * (f5 * 10.0)));
    vec3 f17 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f18 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING3.yzx - (VARYING3.yzx * f18);
    vec4 f20 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f21 = mix(texture3D(LightMapTexture, f19), vec4(0.0), f20);
    vec4 f22 = mix(texture3D(LightGridSkylightTexture, f19), vec4(1.0), f20);
    vec3 f23 = (f21.xyz * (f21.w * 120.0)).xyz;
    float f24 = f22.x;
    vec4 f25 = texture2D(ShadowMapTexture, f17.xy);
    float f26 = f17.z;
    vec3 f27 = f8 * f8;
    float f28 = length(VARYING4.xyz);
    vec3 f29 = VARYING4.xyz / vec3(f28);
    vec3 f30 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f16)).xyz;
    vec3 f31 = -CB0[11].xyz;
    float f32 = dot(f16, f31) * ((1.0 - ((step(f25.x, f26) * clamp(CB0[24].z + (CB0[24].w * abs(f26 - 0.5)), 0.0, 1.0)) * f25.y)) * f22.y);
    vec3 f33 = normalize(f31 + f29);
    float f34 = clamp(f32, 0.0, 1.0);
    float f35 = f10 * f10;
    float f36 = max(0.001000000047497451305389404296875, dot(f16, f33));
    float f37 = dot(f31, f33);
    float f38 = 1.0 - f37;
    float f39 = f38 * f38;
    float f40 = (f39 * f39) * f38;
    vec3 f41 = vec3(f40) + (vec3(0.039999999105930328369140625) * (1.0 - f40));
    float f42 = f35 * f35;
    float f43 = (((f36 * f42) - f36) * f36) + 1.0;
    vec3 f44 = mix(f23, (f30 * f30) * CB0[15].x, vec3(f24)) * mix(vec3(1.0), f27, vec3(0.5));
    float f45 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f16, f29));
    vec4 f46 = mix(vec4(mix((((((vec3(1.0) - (f41 * (CB0[26].w * f0))) * CB0[10].xyz) * f34) + (CB0[12].xyz * clamp(-f32, 0.0, 1.0))) + min(f23 + (CB0[8].xyz + (CB0[9].xyz * f24)), vec3(CB0[16].w))) * (f27 * f12), f44, vec3(VARYING7.w)) * f12, f12), vec4(f44, 1.0), vec4(((f45 * f45) * 0.800000011920928955078125) * clamp(f11, 0.0, 1.0))) + vec4((f41 * (((f42 + (f42 * f42)) / (((f43 * f43) * ((f37 * 3.0) + 0.5)) * ((f36 * 0.75) + 0.25))) * f34)) * CB0[10].xyz, 0.0);
    float f47 = clamp(exp2((CB0[13].z * f28) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f48 = mix(CB0[14].xyz, f46.xyz, vec3(f47));
    vec4 f49 = vec4(f48.x, f48.y, f48.z, f46.w);
    f49.w = 1.0 - ((1.0 - f46.w) * f47);
    vec3 f50 = sqrt(clamp(f49.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f50.x, f50.y, f50.z, f49.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
//$$EnvironmentMapTexture=s2
