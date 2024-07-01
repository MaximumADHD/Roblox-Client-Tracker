#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[10];
uniform vec4 CB0[58];
uniform sampler2D GBufferDepthTexture;
uniform isampler3D LightGrid;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0;
    do
    {
        vec2 f1 = vec2((VARYING0.x * 2.0) - 1.0, 1.0 - (VARYING0.y * 2.0));
        vec4 f2 = texture(GBufferDepthTexture, VARYING0);
        vec3 f3 = vec3(vec2(dot(f1, CB1[3].xy), dot(f1, CB1[3].zw)) + CB1[4].zw, -1.0) * (f2.x * 500.0);
        vec4 f4 = vec4(((CB0[11].xyz + (CB0[8].xyz * f3.x)) + (CB0[9].xyz * f3.y)) + (CB0[10].xyz * f3.z), 1.0) * mat4(CB0[54], CB0[55], CB0[56], CB0[57]);
        float f5 = f4.w;
        vec2 f6 = f4.xy / vec2(f5);
        ivec2 f7 = ivec2(f6);
        int f8 = int(max(0.0, (log2(f5 * 0.100000001490116119384765625) * 1.709511280059814453125) + 1.0));
        int f9 = texelFetch(LightGrid, ivec3(f7, f8), 0).x & 4095;
        bool f10;
        vec4 f11;
        vec4 f12;
        switch (int(CB1[5].x))
        {
            case 1:
            {
                if (any(lessThan(abs(vec2(f7) - f6), vec2(0.03125))))
                {
                    f12 = vec4(0.0);
                    f11 = vec4(0.0, 0.0, 0.0, 1.0);
                    f10 = true;
                    break;
                }
                vec4 f13;
                if (f9 <= 0)
                {
                    f13 = vec4(0.0);
                }
                else
                {
                    vec4 f14;
                    if (f9 <= 1)
                    {
                        f14 = vec4(0.0, 1.0, 0.0, 0.5);
                    }
                    else
                    {
                        vec4 f15;
                        if (f9 <= 3)
                        {
                            f15 = vec4(1.0, 0.5, 0.0, 0.5);
                        }
                        else
                        {
                            vec4 f16;
                            if (f9 <= 5)
                            {
                                f16 = vec4(1.0, 1.0, 0.0, 0.5);
                            }
                            else
                            {
                                vec4 f17;
                                if (f9 <= 8)
                                {
                                    f17 = vec4(0.0, 0.4000000059604644775390625, 0.4000000059604644775390625, 0.5);
                                }
                                else
                                {
                                    bvec4 f18 = bvec4(f9 <= 10);
                                    f17 = vec4(f18.x ? vec4(0.0, 0.0, 1.0, 0.5).x : vec4(1.0, 0.0, 0.0, 0.5).x, f18.y ? vec4(0.0, 0.0, 1.0, 0.5).y : vec4(1.0, 0.0, 0.0, 0.5).y, f18.z ? vec4(0.0, 0.0, 1.0, 0.5).z : vec4(1.0, 0.0, 0.0, 0.5).z, f18.w ? vec4(0.0, 0.0, 1.0, 0.5).w : vec4(1.0, 0.0, 0.0, 0.5).w);
                                }
                                f16 = f17;
                            }
                            f15 = f16;
                        }
                        f14 = f15;
                    }
                    f13 = f14;
                }
                f12 = f13;
                f11 = vec4(0.0);
                f10 = false;
                break;
            }
            case 2:
            {
                float f19 = (float(f8) + 0.5) * 0.0625;
                vec4 f20 = vec4(f19, f19, f19, 0.75);
                vec4 f21;
                if (f8 == 0)
                {
                    vec4 f22 = f20;
                    f22.x = 1.0;
                    vec4 f23 = f22;
                    f23.y = 0.0;
                    vec4 f24 = f23;
                    f24.z = 0.0;
                    f21 = f24;
                }
                else
                {
                    f21 = f20;
                }
                f12 = f21;
                f11 = vec4(0.0);
                f10 = false;
                break;
            }
            default:
            {
                f12 = vec4(0.0);
                f11 = vec4(0.0);
                f10 = false;
                break;
            }
        }
        if (f10)
        {
            f0 = f11;
            break;
        }
        f0 = f12;
        break;
    } while(false);
    _entryPointOutput = f0;
}

//$$GBufferDepthTexture=s0
//$$LightGrid=s12
