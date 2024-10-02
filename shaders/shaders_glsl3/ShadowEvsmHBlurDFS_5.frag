#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D EvsmTexture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    float f0 = (2.0 * texture(EvsmTexture0Texture, VARYING0).x) - 1.0;
    float f1 = (2.0 * (((CB1[3].y / (f0 - CB1[3].x)) * CB1[3].z) + (f0 * CB1[3].w))) - 1.0;
    float f2 = exp(CB1[2].z * f1);
    float f3 = -CB1[2].w;
    float f4 = -exp(f3 * f1);
    float f5 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(-2.0, 0.0)) + VARYING0).x) - 1.0;
    float f6 = (2.0 * (((CB1[3].y / (f5 - CB1[3].x)) * CB1[3].z) + (f5 * CB1[3].w))) - 1.0;
    float f7 = exp(CB1[2].z * f6);
    float f8 = -exp(f3 * f6);
    float f9 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(-1.0, 0.0)) + VARYING0).x) - 1.0;
    float f10 = (2.0 * (((CB1[3].y / (f9 - CB1[3].x)) * CB1[3].z) + (f9 * CB1[3].w))) - 1.0;
    float f11 = exp(CB1[2].z * f10);
    float f12 = -exp(f3 * f10);
    float f13 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(1.0, 0.0)) + VARYING0).x) - 1.0;
    float f14 = (2.0 * (((CB1[3].y / (f13 - CB1[3].x)) * CB1[3].z) + (f13 * CB1[3].w))) - 1.0;
    float f15 = exp(CB1[2].z * f14);
    float f16 = -exp(f3 * f14);
    float f17 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(2.0, 0.0)) + VARYING0).x) - 1.0;
    float f18 = (2.0 * (((CB1[3].y / (f17 - CB1[3].x)) * CB1[3].z) + (f17 * CB1[3].w))) - 1.0;
    float f19 = exp(CB1[2].z * f18);
    float f20 = -exp(f3 * f18);
    _entryPointOutput = ((((vec4(f2, f2 * f2, f4, f4 * f4) * CB1[4].x) + (vec4(f7, f7 * f7, f8, f8 * f8) * CB1[4].z)) + (vec4(f11, f11 * f11, f12, f12 * f12) * CB1[4].y)) + (vec4(f15, f15 * f15, f16, f16 * f16) * CB1[4].y)) + (vec4(f19, f19 * f19, f20, f20 * f20) * CB1[4].z);
}

//$$EvsmTexture0Texture=s0
