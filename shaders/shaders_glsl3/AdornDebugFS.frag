#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform samplerCube PrefilteredEnvTexture;

in vec2 VARYING0;
in vec3 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = vec4(VARYING0, 0.0, 1.0);
    vec3 f1 = f0.xyz;
    vec3 f2 = f1 * f1;
    vec4 f3 = f0;
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    float f6 = clamp(exp2((CB0[18].z * length(VARYING2)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f7 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * VARYING2;
    bvec3 f8 = bvec3((!(CB0[58].x == 2.0)) && (!(CB0[58].w == 0.0)));
    vec3 f9 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f8.x ? f7.x : VARYING2.x, f8.y ? f7.y : VARYING2.y, f8.z ? f7.z : VARYING2.z), 0.0).xyz, max(CB0[18].y, f6) * 5.0).xyz;
    bvec3 f10 = bvec3(!(CB0[18].w == 0.0));
    vec3 f11 = mix(vec3(f10.x ? CB0[19].xyz.x : f9.x, f10.y ? CB0[19].xyz.y : f9.y, f10.z ? CB0[19].xyz.z : f9.z), f5.xyz, vec3(f6));
    vec4 f12 = f5;
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = f11.z;
    vec3 f15 = sqrt(clamp(f14.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f16 = f14;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    _entryPointOutput = f18;
}

//$$PrefilteredEnvTexture=s15
