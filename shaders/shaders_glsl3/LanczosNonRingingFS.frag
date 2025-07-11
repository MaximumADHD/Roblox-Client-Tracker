#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[16];
uniform sampler2D Texture0Texture;

out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (gl_FragCoord.xy / CB1[0].xy) * CB1[1].zw;
    vec2 f1 = vec2(1.0) / CB1[1].zw;
    vec2 f2 = floor(f0 - vec2(0.5)) + vec2(-1.5);
    int f3;
    vec3 f4;
    float f5;
    vec3 f6;
    vec3 f7;
    f7 = vec3(-1.0);
    f6 = vec3(1.0);
    f5 = 0.0;
    f4 = vec3(0.0);
    f3 = 0;
    vec3 f8;
    vec3 f9;
    vec3 f10;
    float f11;
    float f12;
    for (;;)
    {
        f12 = float(f3);
        if (f12 < 6.0)
        {
            int f13;
            f11 = f5;
            f10 = f4;
            f9 = f7;
            f8 = f6;
            f13 = 0;
            vec3 f14;
            vec3 f15;
            vec3 f16;
            float f17;
            float f18;
            for (;;)
            {
                f18 = float(f13);
                if (f18 < 6.0)
                {
                    vec2 f19 = f2 + vec2(f12, f18);
                    vec2 f20 = f0 - f19;
                    float f21 = f20.x;
                    float f22;
                    do
                    {
                        if (f21 == 0.0)
                        {
                            f22 = 1.0;
                            break;
                        }
                        else
                        {
                            if ((f21 > 3.0) || (f21 < (-3.0)))
                            {
                                f22 = 0.0;
                                break;
                            }
                            else
                            {
                                float f23 = 3.1415927410125732421875 * f21;
                                vec2 f24 = sin(vec2(f23, f21 * 1.0471975803375244140625));
                                f22 = ((3.0 * f24.x) * f24.y) / (f23 * f23);
                                break;
                            }
                        }
                    } while(false);
                    float f25 = f20.y;
                    float f26;
                    do
                    {
                        if (f25 == 0.0)
                        {
                            f26 = 1.0;
                            break;
                        }
                        else
                        {
                            if ((f25 > 3.0) || (f25 < (-3.0)))
                            {
                                f26 = 0.0;
                                break;
                            }
                            else
                            {
                                float f27 = 3.1415927410125732421875 * f25;
                                vec2 f28 = sin(vec2(f27, f25 * 1.0471975803375244140625));
                                f26 = ((3.0 * f28.x) * f28.y) / (f27 * f27);
                                break;
                            }
                        }
                    } while(false);
                    float f29 = f22 * f26;
                    vec3 f30 = texture(Texture0Texture, min((f19 * f1) * CB1[1].xy, CB1[12].xy)).xyz;
                    f14 = min(f8, f30);
                    f15 = max(f9, f30);
                    f16 = f10 + (f30 * f29);
                    f17 = f11 + f29;
                    f11 = f17;
                    f10 = f16;
                    f9 = f15;
                    f8 = f14;
                    f13++;
                    continue;
                }
                else
                {
                    break;
                }
            }
            f7 = f9;
            f6 = f8;
            f5 = f11;
            f4 = f10;
            f3++;
            continue;
        }
        else
        {
            break;
        }
    }
    _entryPointOutput = vec4(min(f7, max(f6, f4 / vec3(f5))), 1.0);
}

//$$Texture0Texture=s0
