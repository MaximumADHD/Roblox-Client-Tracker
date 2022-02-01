#version 150

#extension GL_ARB_shading_language_include : require
#include <ImGuiExtShaderData.h>
uniform vec4 CB1[2];
uniform sampler3D DiffuseMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

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
    vec4 f10 = textureLod(DiffuseMapTexture, f9.xyz, CB1[1].z);
    vec4 f11;
    if (!(CB1[1].x == 0.0))
    {
        float f12 = (1.0 / CB1[0].y) / CB1[1].w;
        vec4 f13;
        if ((f2 < f12) || (f4 < f12))
        {
            f13 = vec4(vec3(0.0).x, vec3(0.0).y, vec3(0.0).z, f10.w);
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
    vec4 f14;
    if (f8 >= 1.0)
    {
        f14 = vec4(vec3(0.0).x, vec3(0.0).y, vec3(0.0).z, f11.w);
    }
    else
    {
        f14 = f11;
    }
    vec4 f15 = f14;
    f15.w = 1.0;
    _entryPointOutput = f15;
}

//$$DiffuseMapTexture=s0
