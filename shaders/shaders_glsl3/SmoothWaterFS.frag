#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[52];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D NormalMap1Texture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec2 VARYING2;
in vec2 VARYING3;
in vec2 VARYING4;
in vec3 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(dot(step(CB0[19].xyz, abs(VARYING5 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = (f3.xyz * (f3.w * 120.0)).xyz;
    float f6 = f4.x;
    float f7 = -VARYING6.x;
    vec2 f8 = (((texture(NormalMap1Texture, VARYING2) * VARYING0.x) + (texture(NormalMap1Texture, VARYING3) * VARYING0.y)) + (texture(NormalMap1Texture, VARYING4) * VARYING0.z)).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    vec3 f10 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f11 = mix(VARYING6.xyz, vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f7), vec3(VARYING6.y, f7, 0.0), f10) * f9.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f10) * f9.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0)))), 0.0).xyz, vec3(0.25));
    vec3 f12 = normalize(VARYING7.xyz);
    vec3 f13 = -f12;
    vec3 f14 = reflect(f13, f11);
    vec3 f15 = mix((min(f5 + (CB0[8].xyz + (CB0[9].xyz * f6)), vec3(CB0[16].w)) + (CB0[10].xyz * f4.y)) * CB3[1].xyz, ((textureLod(PrefilteredEnvTexture, vec4(f14, 0.0).xyz, 0.0).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f14.y * 1.58823525905609130859375, 0.0, 1.0)))) * f6) + (f5 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f11, f12))), 0.0, 1.0) + 0.300000011920928955078125) * CB3[2].z));
    vec4 f16 = vec4(f15.x, f15.y, f15.z, vec4(0.0).w);
    f16.w = 1.0;
    vec3 f17 = textureLod(PrefilteredEnvTexture, vec4(f13, 0.0).xyz, max(CB0[13].y, VARYING6.w) * 5.0).xyz;
    bvec3 f18 = bvec3(CB0[13].w != 0.0);
    vec3 f19 = sqrt(clamp(mix(vec3(f18.x ? CB0[14].xyz.x : f17.x, f18.y ? CB0[14].xyz.y : f17.y, f18.z ? CB0[14].xyz.z : f17.z), f16.xyz, vec3(VARYING6.w)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f19.x, f19.y, f19.z, f16.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
