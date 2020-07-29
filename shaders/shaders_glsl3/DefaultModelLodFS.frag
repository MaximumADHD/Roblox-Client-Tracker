#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform samplerCube PrefilteredEnvTexture;

in vec3 VARYING0;
in vec3 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = vec4(VARYING0, 1.0);
    float f1 = clamp(exp2((CB0[13].z * length(VARYING1)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f2 = textureLod(PrefilteredEnvTexture, vec4(-VARYING1, 0.0).xyz, max(CB0[13].y, f1) * 5.0).xyz;
    bvec3 f3 = bvec3(CB0[13].w != 0.0);
    vec3 f4 = sqrt(clamp(mix(vec3(f3.x ? CB0[14].xyz.x : f2.x, f3.y ? CB0[14].xyz.y : f2.y, f3.z ? CB0[14].xyz.z : f2.z), f0.xyz, vec3(f1)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f4.x, f4.y, f4.z, f0.w);
}

//$$PrefilteredEnvTexture=s15
