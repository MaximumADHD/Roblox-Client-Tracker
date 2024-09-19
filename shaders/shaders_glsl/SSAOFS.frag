#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D depthBufferTexture;
uniform sampler2D randMapTexture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2DLod(depthBufferTexture, VARYING0, 0.0);
    float f1 = f0.x;
    vec4 f2 = texture2D(randMapTexture, fract((VARYING0 * CB1[0].xy) * vec2(0.25)));
    vec4 f3 = (f2 * 2.0) - vec4(1.0);
    float f4 = f3.y;
    mat2 f5 = mat2(vec2(f4, f3.x), vec2(-f3.x, f4));
    vec2 f6 = clamp(CB1[2].xy * (0.0040000001899898052215576171875 / f1), CB1[0].zw * 10.0, CB1[0].zw * 100.0);
    float f7 = log2(0.100000001490116119384765625 * length(f6 * CB1[0].xy)) - 2.0;
    float f8;
    float f9;
    vec2 f10;
    f10 = vec2(0.0);
    f9 = 2.0;
    f8 = 1.0;
    for (int f11 = 0; f11 < 8; )
    {
        float f12 = float(f11);
        float f13 = f12 + 1.0;
        float f14 = f13 * 0.100000001490116119384765625;
        float f15 = f12 * 0.78539812564849853515625;
        float f16 = f13 * 0.010000000707805156707763671875;
        vec2 f17 = ((vec2(cos(f15), sin(f15)) * f14) * f5) * f6;
        vec2 f18 = f10;
        f18.x = texture2DLod(depthBufferTexture, VARYING0 + f17, f7).x;
        vec2 f19 = f18;
        f19.y = texture2DLod(depthBufferTexture, VARYING0 - f17, f7).x;
        vec2 f20 = ((f19 - vec2(f1)) * (124.99999237060546875 / sqrt(1.0 - (f14 * f14)))) + vec2(0.5);
        float f21 = f20.x;
        float f22 = f20.y;
        float f23 = clamp(min(f21, f22) + 0.75, 0.0, 1.0);
        f10 = f19;
        f9 += (2.0 * f23);
        f8 += ((clamp(f21 + f16, 0.0, 1.0) + clamp(f22 + f16, 0.0, 1.0)) * f23);
        f11++;
        continue;
    }
    gl_FragData[0] = vec4((f1 > 0.9900000095367431640625) ? 1.0 : pow(clamp((f8 / f9) * 2.0, 0.0, 1.0), 1.0), f1, 0.0, 1.0);
}

//$$depthBufferTexture=s0
//$$randMapTexture=s1
