#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[61];
uniform vec4 CB1[18];
uniform sampler2D colorTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = vec2(CB1[0].z, 0.0) * (0.5 * CB1[2].x);
    vec3 f1 = texture(colorTexture, min(min(VARYING0 + f0, CB1[12].xy), CB1[12].zw)).xyz;
    vec3 f2 = texture(colorTexture, min(min(VARYING0 - f0, CB1[12].xy), CB1[12].zw)).xyz;
    _entryPointOutput = vec4((((f1 * f1) * CB0[20].x) + ((f2 * f2) * CB0[20].x)) * 0.5, 1.0);
}

//$$colorTexture=s1
