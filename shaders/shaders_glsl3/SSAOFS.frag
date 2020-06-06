#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D depthBufferTexture;
uniform sampler2D randMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = textureLod(depthBufferTexture, vec4(VARYING0, 0.0, 0.0).xy, 0.0);
    float f1 = f0.x;
    vec4 f2 = (texture(randMapTexture, fract((VARYING0 * CB1[0].xy) * vec2(0.25))) * 2.0) - vec4(1.0);
    float f3 = f2.y;
    vec2 f4 = clamp(CB1[1].xy * (0.0040000001899898052215576171875 / f1), CB1[0].zw * 10.0, CB1[0].zw * 100.0);
    float f5 = log2(0.100000001490116119384765625 * length(f4 * CB1[0].xy)) - 2.0;
    float f6;
    float f7;
    vec2 f8;
    f8 = vec2(0.0);
    f7 = 2.0;
    f6 = 1.0;
    for (int f9 = 0; f9 < 8; )
    {
        float f10 = float(f9);
        float f11 = f10 + 1.0;
        float f12 = f11 * 0.100000001490116119384765625;
        float f13 = f10 * 0.78539812564849853515625;
        float f14 = f11 * 0.010000000707805156707763671875;
        vec2 f15 = ((vec2(cos(f13), sin(f13)) * f12) * mat2(vec2(f3, f2.x), vec2(-f2.x, f3))) * f4;
        vec2 f16 = f8;
        f16.x = textureLod(depthBufferTexture, vec4(VARYING0 + f15, 0.0, f5).xy, f5).x;
        vec2 f17 = f16;
        f17.y = textureLod(depthBufferTexture, vec4(VARYING0 - f15, 0.0, f5).xy, f5).x;
        vec2 f18 = ((f17 - vec2(f1)) * (124.99999237060546875 / sqrt(1.0 - (f12 * f12)))) + vec2(0.5);
        float f19 = f18.x;
        float f20 = f18.y;
        float f21 = clamp(min(f19, f20) + 0.75, 0.0, 1.0);
        f8 = f17;
        f7 += (2.0 * f21);
        f6 += ((clamp(f19 + f14, 0.0, 1.0) + clamp(f20 + f14, 0.0, 1.0)) * f21);
        f9++;
        continue;
    }
    _entryPointOutput = vec4((f1 > 0.9900000095367431640625) ? 1.0 : pow(clamp((f6 / f7) * 2.0, 0.0, 1.0), 1.0), f1, 0.0, 1.0);
}

//$$depthBufferTexture=s0
//$$randMapTexture=s1
