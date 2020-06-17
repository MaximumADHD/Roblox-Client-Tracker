#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING0;
in vec3 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(exp2((CB0[13].z * length(VARYING1)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f1 = textureLod(PrefilteredEnvTexture, vec4(-VARYING1, 0.0).xyz, max(CB0[13].y, f0) * 5.0).xyz;
    bvec3 f2 = bvec3(CB0[13].w != 0.0);
    vec3 f3 = sqrt(clamp(mix(vec3(f2.x ? CB0[14].xyz.x : f1.x, f2.y ? CB0[14].xyz.y : f1.y, f2.z ? CB0[14].xyz.z : f1.z), (VARYING0.xyz * VARYING0.xyz).xyz, vec3(f0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f3.x, f3.y, f3.z, VARYING0.w);
}

//$$PrefilteredEnvTexture=s15
