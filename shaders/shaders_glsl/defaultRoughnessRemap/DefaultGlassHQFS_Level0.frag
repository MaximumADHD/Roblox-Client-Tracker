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
    float f9 = VARYING2.w * 2.0;
    float f10 = clamp((f9 - 1.0) + f7, 0.0, 1.0);
    float f11 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f12 = VARYING6.xyz * f11;
    vec3 f13 = VARYING5.xyz * f11;
    vec3 f14 = normalize(((f12 * f6.x) + (cross(f13, f12) * f6.y)) + (f13 * (f5 * 10.0)));
    vec3 f15 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture3D(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture3D(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec3 f21 = (f19.xyz * (f19.w * 120.0)).xyz;
    float f22 = f20.x;
    vec4 f23 = texture2D(ShadowMapTexture, f15.xy);
    float f24 = f15.z;
    vec3 f25 = f8 * f8;
    float f26 = length(VARYING4.xyz);
    vec3 f27 = VARYING4.xyz / vec3(f26);
    float f28 = 0.08900000154972076416015625 + (mix(texture2D(SpecularMapTexture, f1 * CB2[1].w), texture2D(SpecularMapTexture, f1), vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    vec3 f29 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f14)).xyz;
    vec3 f30 = -CB0[11].xyz;
    float f31 = dot(f14, f30) * ((1.0 - ((step(f23.x, f24) * clamp(CB0[24].z + (CB0[24].w * abs(f24 - 0.5)), 0.0, 1.0)) * f23.y)) * f20.y);
    vec3 f32 = normalize(f30 + f27);
    float f33 = clamp(f31, 0.0, 1.0);
    float f34 = f28 * f28;
    float f35 = max(0.001000000047497451305389404296875, dot(f14, f32));
    float f36 = dot(f30, f32);
    float f37 = 1.0 - f36;
    float f38 = f37 * f37;
    float f39 = (f38 * f38) * f37;
    vec3 f40 = vec3(f39) + (vec3(0.039999999105930328369140625) * (1.0 - f39));
    float f41 = f34 * f34;
    float f42 = (((f35 * f41) - f35) * f35) + 1.0;
    vec3 f43 = mix(f21, (f29 * f29) * CB0[15].x, vec3(f22)) * mix(vec3(1.0), f25, vec3(0.5));
    float f44 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f14, f27));
    vec4 f45 = mix(vec4(mix((((((vec3(1.0) - (f40 * (CB0[26].w * f0))) * CB0[10].xyz) * f33) + (CB0[12].xyz * clamp(-f31, 0.0, 1.0))) + min(f21 + (CB0[8].xyz + (CB0[9].xyz * f22)), vec3(CB0[16].w))) * (f25 * f10), f43, vec3(VARYING7.w)) * f10, f10), vec4(f43, 1.0), vec4(((f44 * f44) * 0.800000011920928955078125) * clamp(f9, 0.0, 1.0))) + vec4((f40 * (((f41 + (f41 * f41)) / (((f42 * f42) * ((f36 * 3.0) + 0.5)) * ((f35 * 0.75) + 0.25))) * f33)) * CB0[10].xyz, 0.0);
    float f46 = clamp(exp2((CB0[13].z * f26) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f47 = mix(CB0[14].xyz, f45.xyz, vec3(f46));
    vec4 f48 = vec4(f47.x, f47.y, f47.z, f45.w);
    f48.w = 1.0 - ((1.0 - f45.w) * f46);
    vec3 f49 = sqrt(clamp(f48.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f49.x, f49.y, f49.z, f48.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
//$$EnvironmentMapTexture=s2
