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
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f7.x) + (cross(f16, f15) * f7.y)) + (f16 * (f6 * 10.0)));
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
    vec3 f28 = f9 * f9;
    float f29 = length(VARYING4.xyz);
    vec3 f30 = VARYING4.xyz / vec3(f29);
    vec3 f31 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f17)).xyz;
    vec3 f32 = -CB0[11].xyz;
    float f33 = dot(f17, f32) * ((1.0 - ((step(f26.x, f27) * clamp(CB0[24].z + (CB0[24].w * abs(f27 - 0.5)), 0.0, 1.0)) * f26.y)) * f23.y);
    vec3 f34 = normalize(f32 + f30);
    float f35 = clamp(f33, 0.0, 1.0);
    float f36 = f11 * f11;
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
    vec4 f47 = mix(vec4(mix((((((vec3(1.0) - (f42 * (CB0[26].w * f1))) * CB0[10].xyz) * f35) + (CB0[12].xyz * clamp(-f33, 0.0, 1.0))) + min(f24 + (CB0[8].xyz + (CB0[9].xyz * f25)), vec3(CB0[16].w))) * (f28 * f13), f45, vec3(VARYING7.w)) * f13, f13), vec4(f45, 1.0), vec4(((f46 * f46) * 0.800000011920928955078125) * clamp(f12, 0.0, 1.0))) + vec4((f42 * (((f43 + (f43 * f43)) / (((f44 * f44) * ((f38 * 3.0) + 0.5)) * ((f37 * 0.75) + 0.25))) * f35)) * CB0[10].xyz, 0.0);
    float f48 = clamp(exp2((CB0[13].z * f29) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f49 = mix(CB0[14].xyz, f47.xyz, vec3(f48));
    vec4 f50 = vec4(f49.x, f49.y, f49.z, f47.w);
    f50.w = 1.0 - ((1.0 - f47.w) * f48);
    vec3 f51 = sqrt(clamp(f50.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f51.x, f51.y, f51.z, f50.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$EnvironmentMapTexture=s2
