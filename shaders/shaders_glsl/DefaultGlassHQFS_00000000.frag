#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[57];
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
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    float f2 = f0.y;
    vec4 f3 = texture2D(DiffuseMapTexture, f1);
    vec2 f4 = texture2D(NormalMapTexture, f1).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec3 f7 = vec3(f5, f6);
    vec2 f8 = f7.xy + (vec3((texture2D(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f9 = f7;
    f9.x = f8.x;
    vec3 f10 = f9;
    f10.y = f8.y;
    vec2 f11 = f10.xy * f2;
    float f12 = f11.x;
    vec3 f13 = (VARYING2.xyz * f3.xyz) * (1.0 + (f12 * 0.20000000298023223876953125));
    float f14 = VARYING2.w * 2.0;
    float f15 = clamp((f14 - 1.0) + f3.w, 0.0, 1.0);
    float f16 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f17 = VARYING6.xyz * f16;
    vec3 f18 = VARYING5.xyz * f16;
    vec3 f19 = normalize(((f17 * f12) + (cross(f18, f17) * f11.y)) + (f18 * (f6 * 10.0)));
    vec3 f20 = f13 * f13;
    float f21 = length(VARYING4.xyz);
    vec3 f22 = VARYING4.xyz / vec3(f21);
    float f23 = 0.08900000154972076416015625 + (mix(texture2D(SpecularMapTexture, f1 * CB2[1].w), texture2D(SpecularMapTexture, f1), vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    vec3 f24 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f19)).xyz;
    vec3 f25 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f26 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f27 = VARYING3.yzx - (VARYING3.yzx * f26);
    vec4 f28 = vec4(clamp(f26, 0.0, 1.0));
    vec4 f29 = mix(texture3D(LightMapTexture, f27), vec4(0.0), f28);
    vec4 f30 = mix(texture3D(LightGridSkylightTexture, f27), vec4(1.0), f28);
    vec3 f31 = f29.xyz * (f29.w * 120.0);
    float f32 = f30.x;
    vec4 f33 = texture2D(ShadowMapTexture, f25.xy);
    float f34 = f25.z;
    vec3 f35 = mix(f31, (f24 * f24) * CB0[20].x, vec3(f32)) * mix(vec3(1.0), f20, vec3(0.5));
    vec3 f36 = -CB0[16].xyz;
    float f37 = dot(f19, f36) * ((1.0 - ((step(f33.x, f34) * clamp(CB0[29].z + (CB0[29].w * abs(f34 - 0.5)), 0.0, 1.0)) * f33.y)) * f30.y);
    vec3 f38 = normalize(f22 + f36);
    float f39 = clamp(f37, 0.0, 1.0);
    float f40 = f23 * f23;
    float f41 = max(0.001000000047497451305389404296875, dot(f19, f38));
    float f42 = dot(f36, f38);
    float f43 = 1.0 - f42;
    float f44 = f43 * f43;
    float f45 = (f44 * f44) * f43;
    vec3 f46 = vec3(f45) + (vec3(0.039999999105930328369140625) * (1.0 - f45));
    float f47 = f40 * f40;
    float f48 = (((f41 * f47) - f41) * f41) + 1.0;
    float f49 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f19, f22));
    vec4 f50 = mix(vec4(mix((((((vec3(1.0) - (f46 * (CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0)))) * CB0[15].xyz) * f39) + (CB0[17].xyz * clamp(-f37, 0.0, 1.0))) + min(f31 + (CB0[13].xyz + (CB0[14].xyz * f32)), vec3(CB0[21].w))) * (f20 * f15), f35, vec3(VARYING7.w)) * f15, f15), vec4(f35, 1.0), vec4(((f49 * f49) * 0.800000011920928955078125) * clamp(f14, 0.0, 1.0))) + vec4(((f46 * (((f47 + (f47 * f47)) / (((f48 * f48) * ((f42 * 3.0) + 0.5)) * ((f41 * 0.75) + 0.25))) * f39)) * CB0[15].xyz) * 1.0, 0.0);
    float f51 = clamp(exp2((CB0[18].z * f21) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f52 = mix(CB0[19].xyz, f50.xyz, vec3(f51));
    vec4 f53 = f50;
    f53.x = f52.x;
    vec4 f54 = f53;
    f54.y = f52.y;
    vec4 f55 = f54;
    f55.z = f52.z;
    vec4 f56 = f55;
    f56.w = 1.0 - ((1.0 - f50.w) * f51);
    vec3 f57 = sqrt(clamp(f56.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f58 = f56;
    f58.x = f57.x;
    vec4 f59 = f58;
    f59.y = f57.y;
    vec4 f60 = f59;
    f60.z = f57.z;
    gl_FragData[0] = f60;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
//$$EnvironmentMapTexture=s2
