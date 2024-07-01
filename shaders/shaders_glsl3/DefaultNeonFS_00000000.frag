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
    f1.x = VARYING2.x;
    vec4 f2 = f1;
    f2.y = VARYING2.y;
    vec4 f3 = f2;
    f3.z = VARYING2.z;
    vec3 f4 = pow(f3.xyz * 1.35000002384185791015625, vec3(4.0)) * 4.0;
    vec4 f5 = f3;
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    float f8 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f9 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f0)), 0.0).xyz, max(CB0[18].y, f8) * 5.0).xyz;
    bvec3 f10 = bvec3(!(CB0[18].w == 0.0));
    vec3 f11 = mix(vec3(f10.x ? CB0[19].xyz.x : f9.x, f10.y ? CB0[19].xyz.y : f9.y, f10.z ? CB0[19].xyz.z : f9.z), f7.xyz, vec3(f8));
    vec4 f12 = f7;
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
    vec4 f19 = f18;
    f19.w = 1.0 - (clamp(f8, 0.0, 1.0) * VARYING2.w);
    _entryPointOutput = f19;
}

//$$PrefilteredEnvTexture=s15
