#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D iChannel0Texture;
uniform sampler2D iChannel1Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = CB1[0].zwzw * vec4(-1.0, -1.0, 1.0, 1.0);
    vec2 f1 = VARYING0 + f0.xy;
    vec2 f2 = VARYING0 + f0.zy;
    vec2 f3 = VARYING0 + f0.xw;
    vec2 f4 = VARYING0 + f0.zw;
    vec4 f5[4] = vec4[](texture2D(iChannel0Texture, f1), texture2D(iChannel0Texture, f2), texture2D(iChannel0Texture, f3), texture2D(iChannel0Texture, f4));
    vec4 f6 = texture2D(iChannel0Texture, VARYING0);
    float f7[4] = float[](texture2D(iChannel1Texture, f1).x, texture2D(iChannel0Texture, f2).x, texture2D(iChannel1Texture, f3).x, texture2D(iChannel1Texture, f4).x);
    vec3 f8;
    float f9;
    f9 = 1.0;
    f8 = f6.xyz;
    vec3 f10;
    float f11;
    for (int f12 = 0; f12 < 4; f9 = f11, f8 = f10, f12++)
    {
        if (f7[f12] <= (texture2D(iChannel1Texture, VARYING0).x * 1.0499999523162841796875))
        {
            f11 = f9 + 1.0;
            f10 = f8 + f5[f12].xyz;
        }
        else
        {
            f11 = f9;
            f10 = f8;
        }
    }
    gl_FragData[0] = vec4(f8 / vec3(f9), f6.w);
}

//$$iChannel0Texture=s0
//$$iChannel1Texture=s1
