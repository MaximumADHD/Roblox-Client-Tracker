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

centroid varying vec2 VARYING0;
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
    vec3 f12 = (VARYING2.xyz * f2.xyz) * (1.0 + (f11 * CB2[0].z));
    vec4 f13 = mix(texture2D(SpecularMapTexture, f1 * CB2[1].w), texture2D(SpecularMapTexture, f1), vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f14 = f13.y;
    float f15 = VARYING2.w * 2.0;
    float f16 = clamp((f15 - 1.0) + f2.w, 0.0, 1.0);
    float f17 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f18 = VARYING6.xyz * f17;
    vec3 f19 = VARYING5.xyz * f17;
    vec3 f20 = normalize(((f18 * f11) + (cross(f19, f18) * f10.y)) + (f19 * (f5 * 10.0)));
    vec3 f21 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f22 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING3.yzx - (VARYING3.yzx * f22);
    vec4 f24 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f25 = mix(texture3D(LightMapTexture, f23), vec4(0.0), f24);
    vec4 f26 = mix(texture3D(LightGridSkylightTexture, f23), vec4(1.0), f24);
    vec3 f27 = f25.xyz * (f25.w * 120.0);
    float f28 = f26.x;
    vec4 f29 = texture2D(ShadowMapTexture, f21.xy);
    float f30 = f21.z;
    vec3 f31 = f12 * f12;
    float f32 = length(VARYING4.xyz);
    vec3 f33 = VARYING4.xyz / vec3(f32);
    vec3 f34 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f20)).xyz;
    vec3 f35 = -CB0[11].xyz;
    float f36 = (dot(f20, f35) * CB0[9].w) * ((1.0 - ((step(f29.x, f30) * clamp(CB0[24].z + (CB0[24].w * abs(f30 - 0.5)), 0.0, 1.0)) * f29.y)) * f26.y);
    vec3 f37 = normalize(f35 + f33);
    float f38 = clamp(f36, 0.0, 1.0);
    float f39 = f14 * f14;
    float f40 = max(0.001000000047497451305389404296875, dot(f20, f37));
    float f41 = dot(f35, f37);
    float f42 = 1.0 - f41;
    float f43 = f42 * f42;
    float f44 = (f43 * f43) * f42;
    vec3 f45 = vec3(f44) + (vec3(0.039999999105930328369140625) * (1.0 - f44));
    float f46 = f39 * f39;
    float f47 = (((f40 * f46) - f40) * f40) + 1.0;
    vec3 f48 = mix(f27, (f34 * f34) * CB0[15].x, vec3(f28)) * mix(vec3(1.0), f31, vec3(0.5));
    float f49 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f20, f33));
    vec4 f50 = mix(vec4(mix((((((vec3(1.0) - (f45 * (CB0[26].w * f0))) * CB0[10].xyz) * f38) + (CB0[12].xyz * clamp(-f36, 0.0, 1.0))) + min(f27 + (CB0[8].xyz + (CB0[9].xyz * f28)), vec3(CB0[16].w))) * (f31 * f16), f48, vec3(VARYING7.w)) * f16, f16), vec4(f48, 1.0), vec4(((f49 * f49) * 0.800000011920928955078125) * clamp(f15, 0.0, 1.0))) + vec4(((f45 * (((f46 + (f46 * f46)) / (((f47 * f47) * ((f41 * 3.0) + 0.5)) * ((f40 * 0.75) + 0.25))) * f38)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w), 0.0);
    float f51 = clamp(exp2((CB0[13].z * f32) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f52 = mix(CB0[14].xyz, f50.xyz, vec3(f51));
    vec4 f53 = f50;
    f53.x = f52.x;
    vec4 f54 = f53;
    f54.y = f52.y;
    vec4 f55 = f54;
    f55.z = f52.z;
    vec4 f56 = f55;
    f56.w = 1.0 - ((1.0 - f50.w) * f51);
    vec3 f57 = sqrt(clamp(f56.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
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
