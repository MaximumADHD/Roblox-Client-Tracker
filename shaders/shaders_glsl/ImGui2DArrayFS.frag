#version 110
#extension GL_EXT_texture_array : require
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <ImGuiExtShaderData.h>
uniform vec4 CB1[2];
uniform sampler2DArray DiffuseMapTexture;

varying vec2 VARYING0;

void main()
{
    float f0 = floor(CB1[0].x);
    float f1 = VARYING0.x * f0;
    float f2 = fract(f1);
    float f3 = VARYING0.y * f0;
    float f4 = fract(f3);
    float f5 = floor(f1) + (floor(f3) * f0);
    float f6 = f5 + CB1[1].y;
    vec4 f7 = vec4(f2, f4, f5, CB1[1].z);
    f7.z = f6;
    float f8 = f6 / CB1[0].w;
    vec4 f9 = f7;
    f9.z = f8;
    vec4 f10 = texture2DArrayLod(DiffuseMapTexture, f9.xyz, CB1[1].z);
    vec4 f11;
    if (!(CB1[1].x == 0.0))
    {
        float f12 = (1.0 / CB1[0].y) / CB1[1].w;
        vec4 f13;
        if ((f2 < f12) || (f4 < f12))
        {
            vec4 f14 = f10;
            f14.x = 0.0;
            vec4 f15 = f14;
            f15.y = 0.0;
            vec4 f16 = f15;
            f16.z = 0.0;
            f13 = f16;
        }
        else
        {
            f13 = f10;
        }
        f11 = f13;
    }
    else
    {
        f11 = f10;
    }
    vec4 f17;
    if (f8 >= 1.0)
    {
        vec4 f18 = f11;
        f18.x = 0.0;
        vec4 f19 = f18;
        f19.y = 0.0;
        vec4 f20 = f19;
        f20.z = 0.0;
        f17 = f20;
    }
    else
    {
        f17 = f11;
    }
    vec4 f21 = f17;
    f21.w = 1.0;
    gl_FragData[0] = f21;
}

//$$DiffuseMapTexture=s0
