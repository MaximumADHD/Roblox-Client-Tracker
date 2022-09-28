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
        int f8 = texelFetch(LightGrid, ivec3(f7, int(max(0.0, (log2(f5 * 0.100000001490116119384765625) * 1.709511280059814453125) + 1.0))), 0).x & 4095;
        if (any(lessThan(abs(vec2(f7) - f6), vec2(0.03125))))
        {
            f0 = vec4(0.0, 0.0, 0.0, 1.0);
            break;
        }
        if (f8 <= 0)
        {
            f0 = vec4(0.0);
            break;
        }
        else
        {
            if (f8 <= 1)
            {
                f0 = vec4(0.0, 1.0, 0.0, 0.25);
                break;
            }
            else
            {
                if (f8 <= 3)
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
    } while(false);
    _entryPointOutput = f0;
}

//$$GBufferDepthTexture=s0
//$$LightGrid=s12
