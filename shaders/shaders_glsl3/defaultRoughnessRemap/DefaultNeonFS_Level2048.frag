#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING2;
in vec4 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = vec4(0.0);
    f0.w = VARYING2.w;
    vec4 f1 = f0;
    f1.x = VARYING2.x;
    vec4 f2 = f1;
    f2.y = VARYING2.y;
    vec4 f3 = f2;
    f3.z = VARYING2.z;
    float f4 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f5 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f4) * 5.0).xyz;
    bvec3 f6 = bvec3(!(CB0[13].w == 0.0));
    vec3 f7 = mix(vec3(f6.x ? CB0[14].xyz.x : f5.x, f6.y ? CB0[14].xyz.y : f5.y, f6.z ? CB0[14].xyz.z : f5.z), f3.xyz, vec3(f4));
    vec4 f8 = f3;
    f8.x = f7.x;
    vec4 f9 = f8;
    f9.y = f7.y;
    vec4 f10 = f9;
    f10.z = f7.z;
    vec3 f11 = max(vec3(0.0), f10.xyz);
    vec4 f12 = f10;
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = f11.z;
    _entryPointOutput = f14;
}

//$$PrefilteredEnvTexture=s15
