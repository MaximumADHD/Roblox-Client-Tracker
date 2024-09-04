#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform samplerCube PrefilteredEnvTexture;

in vec3 VARYING0;
in vec3 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = vec4(VARYING0, 1.0);
    float f1 = clamp(exp2((CB0[18].z * length(VARYING1)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f2 = textureLod(PrefilteredEnvTexture, vec4(-VARYING1, 0.0).xyz, max(CB0[18].y, f1) * 5.0).xyz;
    bvec3 f3 = bvec3(!(CB0[18].w == 0.0));
    vec3 f4 = mix(vec3(f3.x ? CB0[19].xyz.x : f2.x, f3.y ? CB0[19].xyz.y : f2.y, f3.z ? CB0[19].xyz.z : f2.z), f0.xyz, vec3(f1));
    vec4 f5 = f0;
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    vec3 f8 = sqrt(clamp(f7.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f9 = f7;
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    _entryPointOutput = f11;
}

//$$PrefilteredEnvTexture=s15
