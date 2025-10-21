#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[61];
uniform vec4 CB1[16];
uniform sampler2D colorTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = vec2(CB1[0].z, 0.0);
    vec2 f1 = f0 * (1.5 * CB1[2].x);
    vec2 f2 = f0 * (0.5 * CB1[2].x);
    vec3 f3 = texture(colorTexture, min(min(VARYING0 + f1, CB1[12].xy), CB1[12].zw)).xyz;
    vec3 f4 = texture(colorTexture, min(min(VARYING0 + f2, CB1[12].xy), CB1[12].zw)).xyz;
    vec3 f5 = texture(colorTexture, min(min(VARYING0 - f2, CB1[12].xy), CB1[12].zw)).xyz;
    vec3 f6 = texture(colorTexture, min(min(VARYING0 - f1, CB1[12].xy), CB1[12].zw)).xyz;
    _entryPointOutput = vec4((((((f3 * f3) * CB0[20].x) + ((f4 * f4) * CB0[20].x)) + ((f5 * f5) * CB0[20].x)) + ((f6 * f6) * CB0[20].x)) * 0.25, 1.0);
}

//$$colorTexture=s1
