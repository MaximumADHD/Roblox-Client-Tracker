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
    float f1 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f2 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f1) * 5.0).xyz;
    bvec3 f3 = bvec3(!(CB0[13].w == 0.0));
    vec3 f4 = max(vec3(0.0), mix(vec3(f3.x ? CB0[14].xyz.x : f2.x, f3.y ? CB0[14].xyz.y : f2.y, f3.z ? CB0[14].xyz.z : f2.z), VARYING2.xyz, vec3(f1)).xyz);
    _entryPointOutput = vec4(f4.x, f4.y, f4.z, f0.w);
}

//$$PrefilteredEnvTexture=s15
