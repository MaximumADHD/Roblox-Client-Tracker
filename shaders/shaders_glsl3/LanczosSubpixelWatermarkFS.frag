#version 150
#extension GL_ARB_shader_bit_encoding : require

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[18];
uniform sampler2D Texture6Texture;
uniform sampler2D Texture0Texture;

out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (gl_FragCoord.xy / CB1[0].xy) * CB1[1].zw;
    vec2 f1 = vec2(1.0) / CB1[1].zw;
    vec2 f2 = CB1[2].xy * vec2(0.5);
    vec2 f3 = ((floor(f0 - f2) + vec2(0.5)) + (CB1[2].xy * vec2(-2.0))) + f2;
    vec4 f4;
    f4 = vec4(0.0);
    vec4 f5;
    for (int f6 = 0; float(f6) < 3.0; f4 = f5, f6++)
    {
        vec2 f7 = f3 + (CB1[2].xy * vec2(float(2 * f6)));
        float f8 = dot(f0 - (f7 - vec2(0.5)), CB1[2].xy);
        float f9 = dot(f0 - (f7 + vec2(0.5)), CB1[2].xy);
        float f10;
        do
        {
            if (f8 == 0.0)
            {
                f10 = 1.0;
                break;
            }
            else
            {
                if ((f8 > 3.0) || (f8 < (-3.0)))
                {
                    f10 = 0.0;
                    break;
                }
                else
                {
                    float f11 = 3.1415927410125732421875 * f8;
                    vec2 f12 = sin(vec2(f11, f8 * 1.0471975803375244140625));
                    f10 = ((3.0 * f12.x) * f12.y) / (f11 * f11);
                    break;
                }
            }
        } while(false);
        float f13;
        do
        {
            if (f9 == 0.0)
            {
                f13 = 1.0;
                break;
            }
            else
            {
                if ((f9 > 3.0) || (f9 < (-3.0)))
                {
                    f13 = 0.0;
                    break;
                }
                else
                {
                    float f14 = 3.1415927410125732421875 * f9;
                    vec2 f15 = sin(vec2(f14, f9 * 1.0471975803375244140625));
                    f13 = ((3.0 * f15.x) * f15.y) / (f14 * f14);
                    break;
                }
            }
        } while(false);
        float f16 = f10 + f13;
        f5 = f4 + (texture(Texture0Texture, min(((f7 + (CB1[2].xy * ((-0.5) + (f13 / f16)))) * f1) * CB1[1].xy, CB1[12].xy)) * f16);
    }
    vec2 f17;
    do
    {
        uint f18 = uint(CB1[17].w);
        uint f19 = uint(CB1[0].x) - 1u;
        uint f20 = uint(CB1[0].y) - 1u;
        if (f18 == 0u)
        {
            f17 = gl_FragCoord.xy;
            break;
        }
        if (f18 == 1u)
        {
            f17 = vec2(gl_FragCoord.y, float(f19) - gl_FragCoord.x);
            break;
        }
        if (f18 == 2u)
        {
            f17 = vec2(float(f19) - gl_FragCoord.x, float(f20) - gl_FragCoord.y);
            break;
        }
        f17 = vec2(float(f20) - gl_FragCoord.y, gl_FragCoord.x);
        break;
    } while(false);
    uint f21 = floatBitsToUint(CB1[16].w);
    vec3 f22 = clamp(f4.xyz + ((((vec3(uvec3((textureLod(Texture6Texture, vec4(fract((f17 * CB1[17].xy) + CB1[16].xy), 0.0, 0.0).xy, 0.0).xyz * 255.0) + vec3(0.5)) ^ uvec3(f21 & 255u, (f21 >> 8u) & 255u, (f21 >> 16u) & 255u)) * 0.007843137718737125396728515625) - vec3(1.0)) * CB1[16].z) * (vec3(CB1[17].z) + ((f4.xyz * ((1.0 - CB1[17].z) * 4.0)) * (vec3(1.0) - f4.xyz)))), vec3(0.0), vec3(1.0));
    vec4 f23 = f4;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    _entryPointOutput = f25;
}

//$$Texture6Texture=s6
//$$Texture0Texture=s0
