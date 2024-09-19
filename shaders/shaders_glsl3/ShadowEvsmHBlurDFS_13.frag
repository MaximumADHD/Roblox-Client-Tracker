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
    float f5 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(-6.0, 0.0)) + VARYING0).x) - 1.0;
    float f6 = (2.0 * (((CB1[3].y / (f5 - CB1[3].x)) * CB1[3].z) + (f5 * CB1[3].w))) - 1.0;
    float f7 = exp(CB1[2].z * f6);
    float f8 = -exp(f3 * f6);
    float f9 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(-5.0, 0.0)) + VARYING0).x) - 1.0;
    float f10 = (2.0 * (((CB1[3].y / (f9 - CB1[3].x)) * CB1[3].z) + (f9 * CB1[3].w))) - 1.0;
    float f11 = exp(CB1[2].z * f10);
    float f12 = -exp(f3 * f10);
    float f13 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(-4.0, 0.0)) + VARYING0).x) - 1.0;
    float f14 = (2.0 * (((CB1[3].y / (f13 - CB1[3].x)) * CB1[3].z) + (f13 * CB1[3].w))) - 1.0;
    float f15 = exp(CB1[2].z * f14);
    float f16 = -exp(f3 * f14);
    float f17 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(-3.0, 0.0)) + VARYING0).x) - 1.0;
    float f18 = (2.0 * (((CB1[3].y / (f17 - CB1[3].x)) * CB1[3].z) + (f17 * CB1[3].w))) - 1.0;
    float f19 = exp(CB1[2].z * f18);
    float f20 = -exp(f3 * f18);
    float f21 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(-2.0, 0.0)) + VARYING0).x) - 1.0;
    float f22 = (2.0 * (((CB1[3].y / (f21 - CB1[3].x)) * CB1[3].z) + (f21 * CB1[3].w))) - 1.0;
    float f23 = exp(CB1[2].z * f22);
    float f24 = -exp(f3 * f22);
    float f25 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(-1.0, 0.0)) + VARYING0).x) - 1.0;
    float f26 = (2.0 * (((CB1[3].y / (f25 - CB1[3].x)) * CB1[3].z) + (f25 * CB1[3].w))) - 1.0;
    float f27 = exp(CB1[2].z * f26);
    float f28 = -exp(f3 * f26);
    float f29 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(1.0, 0.0)) + VARYING0).x) - 1.0;
    float f30 = (2.0 * (((CB1[3].y / (f29 - CB1[3].x)) * CB1[3].z) + (f29 * CB1[3].w))) - 1.0;
    float f31 = exp(CB1[2].z * f30);
    float f32 = -exp(f3 * f30);
    float f33 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(2.0, 0.0)) + VARYING0).x) - 1.0;
    float f34 = (2.0 * (((CB1[3].y / (f33 - CB1[3].x)) * CB1[3].z) + (f33 * CB1[3].w))) - 1.0;
    float f35 = exp(CB1[2].z * f34);
    float f36 = -exp(f3 * f34);
    float f37 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(3.0, 0.0)) + VARYING0).x) - 1.0;
    float f38 = (2.0 * (((CB1[3].y / (f37 - CB1[3].x)) * CB1[3].z) + (f37 * CB1[3].w))) - 1.0;
    float f39 = exp(CB1[2].z * f38);
    float f40 = -exp(f3 * f38);
    float f41 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(4.0, 0.0)) + VARYING0).x) - 1.0;
    float f42 = (2.0 * (((CB1[3].y / (f41 - CB1[3].x)) * CB1[3].z) + (f41 * CB1[3].w))) - 1.0;
    float f43 = exp(CB1[2].z * f42);
    float f44 = -exp(f3 * f42);
    float f45 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(5.0, 0.0)) + VARYING0).x) - 1.0;
    float f46 = (2.0 * (((CB1[3].y / (f45 - CB1[3].x)) * CB1[3].z) + (f45 * CB1[3].w))) - 1.0;
    float f47 = exp(CB1[2].z * f46);
    float f48 = -exp(f3 * f46);
    float f49 = (2.0 * texture(EvsmTexture0Texture, (CB1[2].xy * vec2(6.0, 0.0)) + VARYING0).x) - 1.0;
    float f50 = (2.0 * (((CB1[3].y / (f49 - CB1[3].x)) * CB1[3].z) + (f49 * CB1[3].w))) - 1.0;
    float f51 = exp(CB1[2].z * f50);
    float f52 = -exp(f3 * f50);
    _entryPointOutput = ((((((((((((vec4(f2, f2 * f2, f4, f4 * f4) * CB1[4].x) + (vec4(f7, f7 * f7, f8, f8 * f8) * CB1[5].z)) + (vec4(f11, f11 * f11, f12, f12 * f12) * CB1[5].y)) + (vec4(f15, f15 * f15, f16, f16 * f16) * CB1[5].x)) + (vec4(f19, f19 * f19, f20, f20 * f20) * CB1[4].w)) + (vec4(f23, f23 * f23, f24, f24 * f24) * CB1[4].z)) + (vec4(f27, f27 * f27, f28, f28 * f28) * CB1[4].y)) + (vec4(f31, f31 * f31, f32, f32 * f32) * CB1[4].y)) + (vec4(f35, f35 * f35, f36, f36 * f36) * CB1[4].z)) + (vec4(f39, f39 * f39, f40, f40 * f40) * CB1[4].w)) + (vec4(f43, f43 * f43, f44, f44 * f44) * CB1[5].x)) + (vec4(f47, f47 * f47, f48, f48 * f48) * CB1[5].y)) + (vec4(f51, f51 * f51, f52, f52 * f52) * CB1[5].z);
}

//$$EvsmTexture0Texture=s0
