#version 150
#extension GL_ARB_shader_bit_encoding : require

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[20];
uniform sampler2D Texture6Texture;

out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (gl_FragCoord.xy + CB1[16].yz) / vec2(CB1[16].w, CB1[17].x);
    vec2 f1 = fract(f0);
    vec2 f2;
    if (CB1[19].x > 0.5)
    {
        vec2 f3 = floor(f0);
        uint f4 = floatBitsToUint(CB1[19].y) + uint((f3.y * 256.0) + f3.x);
        uint f5 = ((f4 ^ 61u) ^ (f4 >> 16u)) * 9u;
        uint f6 = (f5 ^ (f5 >> 4u)) * 668265261u;
        uint f7 = f6 ^ (f6 >> 15u);
        uint f8 = (f7 >> uint(1)) & 3u;
        vec2 f9;
        if ((f7 & 1u) != 0u)
        {
            vec2 f10 = f1;
            f10.x = 1.0 - f1.x;
            f9 = f10;
        }
        else
        {
            f9 = f1;
        }
        vec2 f11;
        if (f8 == 1u)
        {
            f11 = vec2(f9.y, 1.0 - f9.x);
        }
        else
        {
            vec2 f12;
            if (f8 == 2u)
            {
                f12 = vec2(1.0) - f9;
            }
            else
            {
                vec2 f13;
                if (f8 == 3u)
                {
                    f13 = vec2(1.0 - f9.y, f9.x);
                }
                else
                {
                    f13 = f9;
                }
                f12 = f13;
            }
            f11 = f12;
        }
        f2 = f11;
    }
    else
    {
        f2 = f1;
    }
    vec3 f14 = (textureLod(Texture6Texture, vec4(f2, 0.0, 0.0).xy, 0.0).xyz * 2.0) - vec3(1.0);
    vec3 f15;
    if ((CB1[18].x > 0.0) || (CB1[18].y > 0.0))
    {
        vec2 f16 = min(f1, vec2(1.0) - f1);
        float f17;
        float f18;
        if (CB1[19].z > 0.5)
        {
            f18 = clamp(f16.y / CB1[18].y, 0.0, 1.0);
            f17 = clamp(f16.x / CB1[18].x, 0.0, 1.0);
        }
        else
        {
            f18 = smoothstep(0.0, CB1[18].y, f16.y);
            f17 = smoothstep(0.0, CB1[18].x, f16.x);
        }
        f15 = f14 * (f17 * f18);
    }
    else
    {
        f15 = f14;
    }
    vec3 f19;
    if (CB1[18].z > 0.0)
    {
        f19 = mix(f15, vec3(dot(f15, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625))), vec3(CB1[18].z));
    }
    else
    {
        f19 = f15;
    }
    _entryPointOutput = vec4(max(f19 * CB1[16].x, vec3(0.0)), 0.0);
}

//$$Texture6Texture=s6
