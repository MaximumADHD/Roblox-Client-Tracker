#version 150
#extension GL_ARB_shader_bit_encoding : require

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[20];
uniform sampler2D Texture6Texture;
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0);
    vec3 f1 = f0.xyz;
    vec3 f2;
    do
    {
        vec2 f3 = (gl_FragCoord.xy + CB1[16].yz) / vec2(CB1[16].w, CB1[17].x);
        vec2 f4 = fract(f3);
        vec2 f5;
        if (CB1[19].x > 0.5)
        {
            vec2 f6 = floor(f3);
            uint f7 = floatBitsToUint(CB1[19].y) + uint((f6.y * 256.0) + f6.x);
            uint f8 = ((f7 ^ 61u) ^ (f7 >> 16u)) * 9u;
            uint f9 = (f8 ^ (f8 >> 4u)) * 668265261u;
            uint f10 = f9 ^ (f9 >> 15u);
            uint f11 = (f10 >> uint(1)) & 3u;
            vec2 f12;
            if ((f10 & 1u) != 0u)
            {
                vec2 f13 = f4;
                f13.x = 1.0 - f4.x;
                f12 = f13;
            }
            else
            {
                f12 = f4;
            }
            vec2 f14;
            if (f11 == 1u)
            {
                f14 = vec2(f12.y, 1.0 - f12.x);
            }
            else
            {
                vec2 f15;
                if (f11 == 2u)
                {
                    f15 = vec2(1.0) - f12;
                }
                else
                {
                    vec2 f16;
                    if (f11 == 3u)
                    {
                        f16 = vec2(1.0 - f12.y, f12.x);
                    }
                    else
                    {
                        f16 = f12;
                    }
                    f15 = f16;
                }
                f14 = f15;
            }
            f5 = f14;
        }
        else
        {
            f5 = f4;
        }
        vec3 f17 = (textureLod(Texture6Texture, vec4(f5, 0.0, 0.0).xy, 0.0).xyz * 2.0) - vec3(1.0);
        vec3 f18;
        if ((CB1[18].x > 0.0) || (CB1[18].y > 0.0))
        {
            vec2 f19 = min(f4, vec2(1.0) - f4);
            float f20;
            float f21;
            if (CB1[19].z > 0.5)
            {
                f21 = clamp(f19.y / CB1[18].y, 0.0, 1.0);
                f20 = clamp(f19.x / CB1[18].x, 0.0, 1.0);
            }
            else
            {
                f21 = smoothstep(0.0, CB1[18].y, f19.y);
                f20 = smoothstep(0.0, CB1[18].x, f19.x);
            }
            f18 = f17 * (f20 * f21);
        }
        else
        {
            f18 = f17;
        }
        vec3 f22;
        if (CB1[18].z > 0.0)
        {
            f22 = mix(f18, vec3(dot(f18, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625))), vec3(CB1[18].z));
        }
        else
        {
            f22 = f18;
        }
        int f23 = int(roundEven(CB1[17].y));
        if (f23 == 1)
        {
            f2 = clamp((abs(f22) * CB1[16].x) * CB1[17].z, vec3(0.0), vec3(1.0));
            break;
        }
        else
        {
            if (f23 == 2)
            {
                f2 = (f22 * 0.5) + vec3(0.5);
                break;
            }
            else
            {
                if (f23 == 3)
                {
                    vec3 f24 = f1 - vec3(0.001000000047497451305389404296875);
                    vec3 f25 = vec3(0.999000012874603271484375) - f1;
                    bvec3 f26 = greaterThanEqual(f22, vec3(0.0));
                    vec3 f27 = vec3(f26.x ? f25.x : f24.x, f26.y ? f25.y : f24.y, f26.z ? f25.z : f24.z) / max(abs(f22), vec3(9.9999999747524270787835121154785e-07));
                    vec3 f28 = clamp(f1 + (f22 * clamp(min(min(f27.x, f27.y), f27.z), 0.0, CB1[16].x)), vec3(0.0), vec3(1.0));
                    vec3 f29 = clamp(f1 + (f22 * CB1[16].x), vec3(0.0), vec3(1.0));
                    bvec3 f30 = bvec3(CB1[18].w > 0.5);
                    f2 = mix(vec3(f30.x ? f28.x : f29.x, f30.y ? f28.y : f29.y, f30.z ? f28.z : f29.z), vec3(1.0, 0.0, 0.0), vec3(step(0.980000019073486328125, max(f4.x, f4.y))));
                    break;
                }
                else
                {
                    if (CB1[18].w > 0.5)
                    {
                        vec3 f31 = f1 - vec3(0.001000000047497451305389404296875);
                        vec3 f32 = vec3(0.999000012874603271484375) - f1;
                        bvec3 f33 = greaterThanEqual(f22, vec3(0.0));
                        vec3 f34 = vec3(f33.x ? f32.x : f31.x, f33.y ? f32.y : f31.y, f33.z ? f32.z : f31.z) / max(abs(f22), vec3(9.9999999747524270787835121154785e-07));
                        f2 = clamp(f1 + (f22 * clamp(min(min(f34.x, f34.y), f34.z), 0.0, CB1[16].x)), vec3(0.0), vec3(1.0));
                        break;
                    }
                    else
                    {
                        f2 = clamp(f1 + (f22 * CB1[16].x), vec3(0.0), vec3(1.0));
                        break;
                    }
                }
            }
        }
    } while(false);
    _entryPointOutput = vec4(f2, 1.0);
}

//$$Texture6Texture=s6
//$$Texture0Texture=s0
