#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[20];
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
    _entryPointOutput = f4;
}

//$$Texture0Texture=s0
