#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[22];
uniform vec4 CB0[58];
uniform sampler2D DiffuseMapTexture;

in vec3 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING1);
    vec4 f1 = f0 * VARYING2;
    vec3 f2 = f1.xyz;
    vec3 f3 = f2 * f2;
    vec4 f4 = f1;
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    vec3 f7 = normalize(VARYING0);
    float f8 = exp2(CB1[14].x / (0.001000000047497451305389404296875 + pow(max(f7.y, 9.9999997473787516355514526367188e-06), CB1[14].y)));
    vec3 f9 = clamp(f7, vec3(0.0), vec3(1.0));
    vec3 f10 = f9 * f9;
    vec3 f11 = clamp(-f7, vec3(0.0), vec3(1.0));
    vec3 f12 = f11 * f11;
    float f13 = clamp(f8, 0.0, 1.0);
    vec3 f14 = mix(vec4((((((((CB1[16] * f10.x) + (CB1[17] * f12.x)) + (CB1[18] * f10.y)) + (CB1[19] * f12.y)) + (CB1[20] * f10.z)) + (CB1[21] * f12.z)).xyz * CB0[19].xyz) + (CB0[15].xyz * (clamp(pow(vec3(0.5 + (dot(f7, -CB0[16].xyz) * 0.5)), CB1[15].xyz) * (1.0 - f8), vec3(0.0), vec3(1.0)) * CB1[15].w)), f13).xyz, f6.xyz, vec3(clamp(f13, 0.0, 1.0)));
    vec4 f15 = f6;
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    _entryPointOutput = vec4(f17.xyz * f1.w, max(1.0 - f13, step(0.5, min(f0.x, f0.w))));
}

//$$DiffuseMapTexture=s0
