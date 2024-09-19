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
    float f10 = exp((-64.0) / f0);
    float f11 = exp((-49.0) / f0) + f10;
    vec2 f12 = CB1[2].xy * (7.0 + (f10 / f11));
    float f13 = exp((-100.0) / f0);
    float f14 = exp((-81.0) / f0) + f13;
    vec2 f15 = CB1[2].xy * (9.0 + (f13 / f14));
    gl_FragData[0] = (((((texture2D(Texture0Texture, VARYING0) + ((texture2D(Texture0Texture, min(VARYING0 + f3, CB1[11].xy)) + texture2D(Texture0Texture, min(VARYING0 - f3, CB1[11].xy))) * f2)) + ((texture2D(Texture0Texture, min(VARYING0 + f6, CB1[11].xy)) + texture2D(Texture0Texture, min(VARYING0 - f6, CB1[11].xy))) * f5)) + ((texture2D(Texture0Texture, min(VARYING0 + f9, CB1[11].xy)) + texture2D(Texture0Texture, min(VARYING0 - f9, CB1[11].xy))) * f8)) + ((texture2D(Texture0Texture, min(VARYING0 + f12, CB1[11].xy)) + texture2D(Texture0Texture, min(VARYING0 - f12, CB1[11].xy))) * f11)) + ((texture2D(Texture0Texture, min(VARYING0 + f15, CB1[11].xy)) + texture2D(Texture0Texture, min(VARYING0 - f15, CB1[11].xy))) * f14)) / vec4(((((1.0 + (2.0 * f2)) + (2.0 * f5)) + (2.0 * f8)) + (2.0 * f11)) + (2.0 * f14));
}

//$$Texture0Texture=s0
