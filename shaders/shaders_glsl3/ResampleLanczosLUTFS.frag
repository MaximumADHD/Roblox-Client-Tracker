#version 150

const float f0[10] = float[](1.0, 0.81030094623565673828125, 0.3807168900966644287109375, 0.0, -0.1458230316638946533203125, -0.093326739966869354248046875, 0.0, 0.0310789309442043304443359375, 0.01266095228493213653564453125, 0.0);

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[15];
uniform vec4 CB0[58];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec2 f1 = (CB1[3].zw * ((floor(VARYING0 * CB1[0].xy) + vec2(0.5)) / CB1[0].xy)) + ((vec2(1.0) - CB1[3].zw) * VARYING0);
    int f2;
    vec4 f3;
    f3 = vec4(0.0);
    f2 = -3;
    float f4;
    for (;;)
    {
        f4 = float(f2);
        if (f4 <= 3.0)
        {
            vec2 f5 = ((CB1[3].zw * f4) * CB0[50].xy) + f1;
            vec2 f6 = (VARYING0 - f5) * CB1[0].xy;
            float f7 = clamp(abs(f6.x + f6.y) * 3.0, 0.0, 9.0);
            int f8 = int(floor(f7));
            f3 += (texture(Texture0Texture, clamp(f5, vec2(0.0), CB1[2].yz)) * mix(f0[f8], f0[clamp(f8 + 1, 0, 9)], f7 - float(f8)));
            f2++;
            continue;
        }
        else
        {
            break;
        }
    }
    _entryPointOutput = f3;
}

//$$Texture0Texture=s0
