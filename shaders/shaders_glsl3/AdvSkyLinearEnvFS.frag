#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[18];
uniform vec4 CB0[53];
uniform sampler2D DiffuseMapTexture;

in vec3 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING1) * VARYING2;
    vec3 f1 = f0.xyz;
    vec3 f2 = f1 * f1;
    vec4 f3 = f0;
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    vec3 f6 = normalize(VARYING0);
    float f7 = exp2(CB1[10].x / (0.001000000047497451305389404296875 + pow(max(f6.y, 9.9999997473787516355514526367188e-06), CB1[10].y)));
    vec3 f8 = clamp(f6, vec3(0.0), vec3(1.0));
    vec3 f9 = f8 * f8;
    vec3 f10 = clamp(-f6, vec3(0.0), vec3(1.0));
    vec3 f11 = f10 * f10;
    float f12 = clamp(f7, 0.0, 1.0);
    vec3 f13 = mix(vec4((((((((CB1[12] * f9.x) + (CB1[13] * f11.x)) + (CB1[14] * f9.y)) + (CB1[15] * f11.y)) + (CB1[16] * f9.z)) + (CB1[17] * f11.z)).xyz * CB0[14].xyz) + (CB0[10].xyz * (clamp(pow(vec3(0.5 + (dot(f6, -CB0[11].xyz) * 0.5)), CB1[11].xyz) * (1.0 - f7), vec3(0.0), vec3(1.0)) * CB1[11].w)), f12).xyz, f5.xyz, vec3(clamp(f12, 0.0, 1.0)));
    vec4 f14 = f5;
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    _entryPointOutput = vec4(f16.xyz * f0.w, 1.0 - f12);
}

//$$DiffuseMapTexture=s0
