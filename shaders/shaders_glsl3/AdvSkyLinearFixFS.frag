#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[18];
uniform vec4 CB0[52];
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
    vec3 f3 = normalize(VARYING0);
    float f4 = exp2(CB1[10].x / (0.001000000047497451305389404296875 + pow(max(f3.y, 9.9999997473787516355514526367188e-06), CB1[10].y)));
    vec3 f5 = clamp(f3, vec3(0.0), vec3(1.0));
    vec3 f6 = f5 * f5;
    vec3 f7 = clamp(-f3, vec3(0.0), vec3(1.0));
    vec3 f8 = f7 * f7;
    float f9 = clamp(f4, 0.0, 1.0);
    _entryPointOutput = vec4(mix(vec4((((((((CB1[12] * f6.x) + (CB1[13] * f8.x)) + (CB1[14] * f6.y)) + (CB1[15] * f8.y)) + (CB1[16] * f6.z)) + (CB1[17] * f8.z)).xyz * CB0[14].xyz) + (CB0[10].xyz * (clamp(pow(vec3(0.5 + (dot(f3, -CB0[11].xyz) * 0.5)), CB1[11].xyz) * (1.0 - f4), vec3(0.0), vec3(1.0)) * CB1[11].w)), f9).xyz, (f2 * f2).xyz, vec3(clamp(f9, 0.0, 1.0))).xyz * f1.w, max(1.0 - f9, step(0.5, min(f0.x, f0.w))));
}

//$$DiffuseMapTexture=s0
