#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

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
    float f10 = exp((-64.0) / f0);
    float f11 = exp((-49.0) / f0) + f10;
    vec2 f12 = CB1[1].xy * (7.0 + (f10 / f11));
    float f13 = exp((-100.0) / f0);
    float f14 = exp((-81.0) / f0) + f13;
    vec2 f15 = CB1[1].xy * (9.0 + (f13 / f14));
    float f16 = exp((-144.0) / f0);
    float f17 = exp((-121.0) / f0) + f16;
    vec2 f18 = CB1[1].xy * (11.0 + (f16 / f17));
    float f19 = exp((-196.0) / f0);
    float f20 = exp((-169.0) / f0) + f19;
    vec2 f21 = CB1[1].xy * (13.0 + (f19 / f20));
    gl_FragData[0] = (((((((texture2D(Texture0Texture, VARYING0) + ((texture2D(Texture0Texture, VARYING0 + f3) + texture2D(Texture0Texture, VARYING0 - f3)) * f2)) + ((texture2D(Texture0Texture, VARYING0 + f6) + texture2D(Texture0Texture, VARYING0 - f6)) * f5)) + ((texture2D(Texture0Texture, VARYING0 + f9) + texture2D(Texture0Texture, VARYING0 - f9)) * f8)) + ((texture2D(Texture0Texture, VARYING0 + f12) + texture2D(Texture0Texture, VARYING0 - f12)) * f11)) + ((texture2D(Texture0Texture, VARYING0 + f15) + texture2D(Texture0Texture, VARYING0 - f15)) * f14)) + ((texture2D(Texture0Texture, VARYING0 + f18) + texture2D(Texture0Texture, VARYING0 - f18)) * f17)) + ((texture2D(Texture0Texture, VARYING0 + f21) + texture2D(Texture0Texture, VARYING0 - f21)) * f20)) / vec4(((((((1.0 + (2.0 * f2)) + (2.0 * f5)) + (2.0 * f8)) + (2.0 * f11)) + (2.0 * f14)) + (2.0 * f17)) + (2.0 * f20));
}

//$$Texture0Texture=s0
