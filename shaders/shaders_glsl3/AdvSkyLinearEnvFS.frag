#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[18];
uniform vec4 CB0[47];
uniform sampler2D DiffuseMapTexture;

in vec3 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING1) * VARYING2;
    vec3 f1 = f0.xyz;
    vec3 f2 = normalize(VARYING0);
    float f3 = exp2(CB1[10].x / (0.001000000047497451305389404296875 + pow(clamp(f2.y, 0.0, 1.0), CB1[10].y)));
    vec3 f4 = clamp(f2, vec3(0.0), vec3(1.0));
    vec3 f5 = f4 * f4;
    vec3 f6 = clamp(-f2, vec3(0.0), vec3(1.0));
    vec3 f7 = f6 * f6;
    float f8 = clamp(f3, 0.0, 1.0);
    _entryPointOutput = vec4(mix(vec4((((((((CB1[12] * f5.x) + (CB1[13] * f7.x)) + (CB1[14] * f5.y)) + (CB1[15] * f7.y)) + (CB1[16] * f5.z)) + (CB1[17] * f7.z)).xyz * CB0[14].xyz) + (CB0[10].xyz * (clamp(pow(vec3(0.5 + (dot(f2, -CB0[11].xyz) * 0.5)), CB1[11].xyz) * (1.0 - f3), vec3(0.0), vec3(1.0)) * CB1[11].w)), f8).xyz, (f1 * f1).xyz, vec3(clamp(f8, 0.0, 1.0))).xyz * f0.w, 1.0 - f8);
}

//$$DiffuseMapTexture=s0
