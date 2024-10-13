#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING2;
in vec4 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec4 f1 = vec4(0.0);
    f1.w = VARYING2.w;
    vec4 f2 = f1;
    f2.x = VARYING2.x;
    vec4 f3 = f2;
    f3.y = VARYING2.y;
    vec4 f4 = f3;
    f4.z = VARYING2.z;
    float f5 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f6 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f0)), 0.0).xyz, max(CB0[18].y, f5) * 5.0).xyz;
    bvec3 f7 = bvec3(!(CB0[18].w == 0.0));
    vec3 f8 = mix(vec3(f7.x ? CB0[19].xyz.x : f6.x, f7.y ? CB0[19].xyz.y : f6.y, f7.z ? CB0[19].xyz.z : f6.z), f4.xyz, vec3(f5));
    vec4 f9 = f4;
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    vec3 f12 = max(vec3(0.0), f11.xyz);
    vec4 f13 = f11;
    f13.x = f12.x;
    vec4 f14 = f13;
    f14.y = f12.y;
    vec4 f15 = f14;
    f15.z = f12.z;
    _entryPointOutput = f15;
}

//$$PrefilteredEnvTexture=s15
