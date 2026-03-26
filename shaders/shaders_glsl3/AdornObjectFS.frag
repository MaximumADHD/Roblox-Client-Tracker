#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec3 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(dot(step(CB0[24].xyz, abs(VARYING3 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING3.yzx - (VARYING3.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture(LightMapTexture, f1), vec4(0.0), f2);
    vec3 f4 = (min((f3.xyz * (f3.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * mix(texture(LightGridSkylightTexture, f1), vec4(1.0), f2).x)), vec3(CB0[21].w)) + VARYING2) * (VARYING1.xyz * VARYING1.xyz);
    vec4 f5 = vec4(0.0);
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    vec4 f8 = f7;
    f8.w = VARYING1.w;
    float f9 = clamp(exp2((CB0[18].z * length(VARYING4)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f10 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * VARYING4;
    bvec3 f11 = bvec3((!(CB0[58].x == 2.0)) && (!(CB0[58].w == 0.0)));
    vec3 f12 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f11.x ? f10.x : VARYING4.x, f11.y ? f10.y : VARYING4.y, f11.z ? f10.z : VARYING4.z), 0.0).xyz, max(CB0[18].y, f9) * 5.0).xyz;
    bvec3 f13 = bvec3(!(CB0[18].w == 0.0));
    vec3 f14 = sqrt(clamp(mix(vec3(f13.x ? CB0[19].xyz.x : f12.x, f13.y ? CB0[19].xyz.y : f12.y, f13.z ? CB0[19].xyz.z : f12.z), f8.xyz, vec3(f9)) * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f15 = f8;
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    _entryPointOutput = f17;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
