#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f1 = f0.xyz;
    float f2 = clamp(exp2((CB0[13].z * length(VARYING2)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f3 = textureLod(PrefilteredEnvTexture, vec4(-VARYING2, 0.0).xyz, max(CB0[13].y, f2) * 5.0).xyz;
    bvec3 f4 = bvec3(CB0[13].w != 0.0);
    vec3 f5 = sqrt(clamp(mix(vec3(f4.x ? CB0[14].xyz.x : f3.x, f4.y ? CB0[14].xyz.y : f3.y, f4.z ? CB0[14].xyz.z : f3.z), (f1 * f1).xyz, vec3(f2)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f5.x, f5.y, f5.z, f0.w);
}

//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
