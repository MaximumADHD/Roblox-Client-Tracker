#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    float f0 = (2.0 * CB1[2].z) * CB1[2].z;
    float f1 = exp((-4.0) / f0);
    float f2 = exp((-1.0) / f0) + f1;
    vec2 f3 = CB1[2].xy * (1.0 + (f1 / f2));
    float f4 = exp((-16.0) / f0);
    float f5 = exp((-9.0) / f0) + f4;
    vec2 f6 = CB1[2].xy * (3.0 + (f4 / f5));
    float f7 = exp((-36.0) / f0);
    float f8 = exp((-25.0) / f0) + f7;
    vec2 f9 = CB1[2].xy * (5.0 + (f7 / f8));
    gl_FragData[0] = (((texture2D(Texture0Texture, VARYING0) + ((texture2D(Texture0Texture, min(VARYING0 + f3, CB1[11].xy)) + texture2D(Texture0Texture, min(VARYING0 - f3, CB1[11].xy))) * f2)) + ((texture2D(Texture0Texture, min(VARYING0 + f6, CB1[11].xy)) + texture2D(Texture0Texture, min(VARYING0 - f6, CB1[11].xy))) * f5)) + ((texture2D(Texture0Texture, min(VARYING0 + f9, CB1[11].xy)) + texture2D(Texture0Texture, min(VARYING0 - f9, CB1[11].xy))) * f8)) / vec4(((1.0 + (2.0 * f2)) + (2.0 * f5)) + (2.0 * f8));
}

//$$Texture0Texture=s0
