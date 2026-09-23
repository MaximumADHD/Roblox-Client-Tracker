#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING0;
in vec3 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = VARYING0.xyz * VARYING0.xyz;
    vec4 f1 = VARYING0;
    f1.x = f0.x;
    vec4 f2 = f1;
    f2.y = f0.y;
    vec4 f3 = f2;
    f3.z = f0.z;
    float f4 = clamp(exp2((CB0[18].z * length(VARYING1)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f5 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * VARYING1;
    bvec3 f6 = bvec3((!(CB0[58].x == 2.0)) && (!(CB0[58].w == 0.0)));
    vec3 f7 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f6.x ? f5.x : VARYING1.x, f6.y ? f5.y : VARYING1.y, f6.z ? f5.z : VARYING1.z), 0.0).xyz, max(CB0[18].y, f4) * 5.0).xyz;
    bvec3 f8 = bvec3(!(CB0[18].w == 0.0));
    vec3 f9 = mix(vec3(f8.x ? CB0[19].xyz.x : f7.x, f8.y ? CB0[19].xyz.y : f7.y, f8.z ? CB0[19].xyz.z : f7.z), f3.xyz, vec3(f4));
    vec4 f10 = f3;
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    vec3 f13 = sqrt(clamp(f12.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f14 = f12;
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    _entryPointOutput = f16;
}

//$$PrefilteredEnvTexture=s15
