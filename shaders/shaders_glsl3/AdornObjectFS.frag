#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
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
    float f0 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING3.yzx - (VARYING3.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture(LightMapTexture, f1), vec4(0.0), f2);
    vec3 f4 = (min((f3.xyz * (f3.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * mix(texture(LightGridSkylightTexture, f1), vec4(1.0), f2).x)), vec3(CB0[16].w)) + VARYING2) * (VARYING1.xyz * VARYING1.xyz);
    vec4 f5 = vec4(f4.x, f4.y, f4.z, vec4(0.0).w);
    f5.w = VARYING1.w;
    float f6 = clamp(exp2((CB0[13].z * length(VARYING4)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f7 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4, 0.0).xyz, max(CB0[13].y, f6) * 5.0).xyz;
    bvec3 f8 = bvec3(CB0[13].w != 0.0);
    vec3 f9 = sqrt(clamp(mix(vec3(f8.x ? CB0[14].xyz.x : f7.x, f8.y ? CB0[14].xyz.y : f7.y, f8.z ? CB0[14].xyz.z : f7.z), f5.xyz, vec3(f6)) * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f9.x, f9.y, f9.z, f5.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
