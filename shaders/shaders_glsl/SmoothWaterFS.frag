#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[52];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform samplerCube EnvMapTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec3 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = clamp(dot(step(CB0[19].xyz, abs(VARYING5 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture3D(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture3D(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = (f3.xyz * (f3.w * 120.0)).xyz;
    float f6 = f4.x;
    float f7 = -VARYING6.x;
    vec2 f8 = (((texture2D(NormalMap1Texture, VARYING2) * VARYING0.x) + (texture2D(NormalMap1Texture, VARYING3) * VARYING0.y)) + (texture2D(NormalMap1Texture, VARYING4) * VARYING0.z)).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    vec3 f10 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f11 = mix(VARYING6.xyz, vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f7), vec3(VARYING6.y, f7, 0.0), f10) * f9.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f10) * f9.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0)))), 0.0).xyz, vec3(0.25));
    vec3 f12 = normalize(VARYING7.xyz);
    vec3 f13 = textureCube(EnvMapTexture, reflect(-f12, f11)).xyz;
    vec3 f14 = mix((min(f5 + (CB0[8].xyz + (CB0[9].xyz * f6)), vec3(CB0[16].w)) + (CB0[10].xyz * f4.y)) * CB3[1].xyz, (((f13 * f13) * CB0[15].x) * f6) + (f5 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f11, f12))), 0.0, 1.0) + 0.300000011920928955078125) * CB3[2].z));
    vec4 f15 = vec4(f14.x, f14.y, f14.z, vec4(0.0).w);
    f15.w = 1.0;
    vec3 f16 = sqrt(clamp(mix(CB0[14].xyz, f15.xyz, vec3(VARYING6.w)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f16.x, f16.y, f16.z, f15.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$EnvMapTexture=s3
