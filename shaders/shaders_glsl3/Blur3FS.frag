#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    float f0 = (2.0 * CB1[1].z) * CB1[1].z;
    float f1 = exp((-4.0) / f0);
    float f2 = exp((-1.0) / f0) + f1;
    vec2 f3 = CB1[1].xy * (1.0 + (f1 / f2));
    float f4 = exp((-16.0) / f0);
    float f5 = exp((-9.0) / f0) + f4;
    vec2 f6 = CB1[1].xy * (3.0 + (f4 / f5));
    float f7 = exp((-36.0) / f0);
    float f8 = exp((-25.0) / f0) + f7;
    vec2 f9 = CB1[1].xy * (5.0 + (f7 / f8));
    _entryPointOutput = (((texture(Texture0Texture, VARYING0) + ((texture(Texture0Texture, VARYING0 + f3) + texture(Texture0Texture, VARYING0 - f3)) * f2)) + ((texture(Texture0Texture, VARYING0 + f6) + texture(Texture0Texture, VARYING0 - f6)) * f5)) + ((texture(Texture0Texture, VARYING0 + f9) + texture(Texture0Texture, VARYING0 - f9)) * f8)) / vec4(((1.0 + (2.0 * f2)) + (2.0 * f5)) + (2.0 * f8));
}

//$$Texture0Texture=s0
