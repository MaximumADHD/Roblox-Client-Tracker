#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[8];
uniform vec4 CB0[53];
uniform sampler2D GBufferDepthTexture;
uniform isampler3D LightGrid;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0;
    switch (0u)
    {
        default:
        {
            vec4 f1 = texture(GBufferDepthTexture, VARYING0);
            vec3 f2 = vec3((vec2((VARYING0.x * 2.0) - 1.0, 1.0 - (VARYING0.y * 2.0)) * CB1[4].xy) + CB1[4].zw, -1.0) * (f1.x * 500.0);
            vec4 f3 = vec4(((CB0[7].xyz + (CB0[4].xyz * f2.x)) + (CB0[5].xyz * f2.y)) + (CB0[6].xyz * f2.z), 1.0) * mat4(CB0[49], CB0[50], CB0[51], CB0[52]);
            float f4 = f3.w;
            vec2 f5 = f3.xy / vec2(f4);
            ivec2 f6 = ivec2(f5);
            int f7 = texelFetch(LightGrid, ivec3(f6, int(max(0.0, (log2(f4 * 0.100000001490116119384765625) * 1.709511280059814453125) + 1.0))), 0).x & 4095;
            if (any(lessThan(abs(vec2(f6) - f5), vec2(0.03125))))
            {
                f0 = vec4(0.0, 0.0, 0.0, 1.0);
                break;
            }
            if (f7 <= 0)
            {
                f0 = vec4(0.0);
                break;
            }
            else
            {
                if (f7 <= 1)
                {
                    f0 = vec4(0.0, 1.0, 0.0, 0.25);
                    break;
                }
                else
                {
                    if (f7 <= 3)
                    {
                        f0 = vec4(1.0, 1.0, 0.0, 0.25);
                        break;
                    }
                    else
                    {
                        f0 = vec4(1.0, 0.0, 0.0, 0.25);
                        break;
                    }
                }
            }
        }
    }
    _entryPointOutput = f0;
}

//$$GBufferDepthTexture=s0
//$$LightGrid=s12
