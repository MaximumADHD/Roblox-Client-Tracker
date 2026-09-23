#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform samplerCube PrefilteredEnvTexture;

in vec3 VARYING0;
in vec3 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = vec4(VARYING0, 1.0);
    float f1 = clamp(exp2((CB0[18].z * length(VARYING1)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f2 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * VARYING1;
    bvec3 f3 = bvec3((!(CB0[58].x == 2.0)) && (!(CB0[58].w == 0.0)));
    vec3 f4 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f3.x ? f2.x : VARYING1.x, f3.y ? f2.y : VARYING1.y, f3.z ? f2.z : VARYING1.z), 0.0).xyz, max(CB0[18].y, f1) * 5.0).xyz;
    bvec3 f5 = bvec3(!(CB0[18].w == 0.0));
    vec3 f6 = mix(vec3(f5.x ? CB0[19].xyz.x : f4.x, f5.y ? CB0[19].xyz.y : f4.y, f5.z ? CB0[19].xyz.z : f4.z), f0.xyz, vec3(f1));
    vec4 f7 = f0;
    f7.x = f6.x;
    vec4 f8 = f7;
    f8.y = f6.y;
    vec4 f9 = f8;
    f9.z = f6.z;
    vec3 f10 = sqrt(clamp(f9.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f11 = f9;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    _entryPointOutput = f13;
}

//$$PrefilteredEnvTexture=s15
