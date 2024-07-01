#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
    vec3 f2 = f1 * f1;
    vec4 f3 = f0;
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    float f6 = clamp(exp2((CB0[18].z * length(VARYING2)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f7 = textureLod(PrefilteredEnvTexture, vec4(-VARYING2, 0.0).xyz, max(CB0[18].y, f6) * 5.0).xyz;
    bvec3 f8 = bvec3(!(CB0[18].w == 0.0));
    vec3 f9 = mix(vec3(f8.x ? CB0[19].xyz.x : f7.x, f8.y ? CB0[19].xyz.y : f7.y, f8.z ? CB0[19].xyz.z : f7.z), f5.xyz, vec3(f6));
    vec4 f10 = f5;
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
//$$DiffuseMapTexture=s0
