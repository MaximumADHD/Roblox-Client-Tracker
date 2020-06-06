#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D mapTexture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(mapTexture, VARYING0);
    float f1 = f0.y;
    float f2;
    float f3;
    f3 = 0.0;
    f2 = 0.0;
    for (int f4 = -3; f4 <= 3; )
    {
        float f5 = float(f4);
        vec4 f6 = texture2D(mapTexture, VARYING0 + (vec2(CB1[0].z, 0.0) * f5));
        float f7 = exp(((-f5) * f5) * 0.22222222387790679931640625) * float(abs(f6.y - f1) < clamp(f1 * 0.06399999558925628662109375, 7.999999797903001308441162109375e-05, 0.008000000379979610443115234375));
        f3 += f7;
        f2 += (f6.x * f7);
        f4++;
        continue;
    }
    gl_FragData[0] = vec4(f2 / f3, f1, 0.0, 1.0);
}

//$$mapTexture=s2
