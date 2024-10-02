#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D mapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = vec2(0.0, CB1[0].w);
    vec4 f1 = texture(mapTexture, VARYING0);
    float f2 = f1.y;
    float f3 = clamp(f2 * 0.06399999558925628662109375, 7.999999797903001308441162109375e-05, 0.008000000379979610443115234375);
    float f4;
    float f5;
    f5 = 0.0;
    f4 = 0.0;
    for (int f6 = -3; f6 <= 3; )
    {
        float f7 = float(f6);
        vec4 f8 = texture(mapTexture, VARYING0 + (f0 * f7));
        float f9 = exp(((-f7) * f7) * 0.22222222387790679931640625) * float(abs(f8.y - f2) < f3);
        f5 += f9;
        f4 += (f8.x * f9);
        f6++;
        continue;
    }
    _entryPointOutput = vec4(f4 / f5, f2, 0.0, 1.0);
}

//$$mapTexture=s2
