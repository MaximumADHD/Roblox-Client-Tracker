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
    vec3 f6 = vec3(f4, f5);
    vec2 f7 = f6.xy + (vec3((texture2D(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f8 = f6;
    f8.x = f7.x;
    vec3 f9 = f8;
    f9.y = f7.y;
    vec2 f10 = f9.xy * f0;
    float f11 = f10.x;
    vec3 f12 = (VARYING2.xyz * f2.xyz) * (1.0 + (f11 * 0.20000000298023223876953125));
    float f13 = VARYING2.w * 2.0;
    float f14 = clamp((f13 - 1.0) + f2.w, 0.0, 1.0);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f11) + (cross(f17, f16) * f10.y)) + (f17 * (f5 * 10.0)));
    vec3 f19 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f20 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING3.yzx - (VARYING3.yzx * f20);
    vec4 f22 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f23 = mix(texture3D(LightMapTexture, f21), vec4(0.0), f22);
    vec4 f24 = mix(texture3D(LightGridSkylightTexture, f21), vec4(1.0), f22);
    vec3 f25 = f23.xyz * (f23.w * 120.0);
    float f26 = f24.x;
    vec4 f27 = texture2D(ShadowMapTexture, f19.xy);
    float f28 = f19.z;
    vec3 f29 = f12 * f12;
    float f30 = length(VARYING4.xyz);
    vec3 f31 = VARYING4.xyz / vec3(f30);
    float f32 = 0.08900000154972076416015625 + (mix(texture2D(SpecularMapTexture, f1 * CB2[1].w), texture2D(SpecularMapTexture, f1), vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    vec3 f33 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f18)).xyz;
    vec3 f34 = -CB0[11].xyz;
    float f35 = (dot(f18, f34) * CB0[9].w) * ((1.0 - ((step(f27.x, f28) * clamp(CB0[24].z + (CB0[24].w * abs(f28 - 0.5)), 0.0, 1.0)) * f27.y)) * f24.y);
    vec3 f36 = normalize(f31 - CB0[11].xyz);
    float f37 = clamp(f35, 0.0, 1.0);
    float f38 = f32 * f32;
    float f39 = max(0.001000000047497451305389404296875, dot(f18, f36));
    float f40 = dot(f34, f36);
    float f41 = 1.0 - f40;
    float f42 = f41 * f41;
    float f43 = (f42 * f42) * f41;
    vec3 f44 = vec3(f43) + (vec3(0.039999999105930328369140625) * (1.0 - f43));
    float f45 = f38 * f38;
    float f46 = (((f39 * f45) - f39) * f39) + 1.0;
    vec3 f47 = mix(f25, (f33 * f33) * CB0[15].x, vec3(f26)) * mix(vec3(1.0), f29, vec3(0.5));
    float f48 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f18, f31));
    vec4 f49 = mix(vec4(mix((((((vec3(1.0) - (f44 * (CB0[26].w * f0))) * CB0[10].xyz) * f37) + (CB0[12].xyz * clamp(-f35, 0.0, 1.0))) + min(f25 + (CB0[8].xyz + (CB0[9].xyz * f26)), vec3(CB0[16].w))) * (f29 * f14), f47, vec3(VARYING7.w)) * f14, f14), vec4(f47, 1.0), vec4(((f48 * f48) * 0.800000011920928955078125) * clamp(f13, 0.0, 1.0))) + vec4(((f44 * (((f45 + (f45 * f45)) / (((f46 * f46) * ((f40 * 3.0) + 0.5)) * ((f39 * 0.75) + 0.25))) * f37)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w), 0.0);
    float f50 = clamp(exp2((CB0[13].z * f30) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f51 = mix(CB0[14].xyz, f49.xyz, vec3(f50));
    vec4 f52 = f49;
    f52.x = f51.x;
    vec4 f53 = f52;
    f53.y = f51.y;
    vec4 f54 = f53;
    f54.z = f51.z;
    vec4 f55 = f54;
    f55.w = 1.0 - ((1.0 - f49.w) * f50);
    vec3 f56 = sqrt(clamp(f55.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f57 = f55;
    f57.x = f56.x;
    vec4 f58 = f57;
    f58.y = f56.y;
    vec4 f59 = f58;
    f59.z = f56.z;
    gl_FragData[0] = f59;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
//$$EnvironmentMapTexture=s2
