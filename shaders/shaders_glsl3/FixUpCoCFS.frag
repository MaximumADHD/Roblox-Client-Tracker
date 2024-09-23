#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D iChannel0Texture;
uniform sampler2D iChannel1Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = CB1[0].zwzw * vec4(-1.0, -1.0, 1.0, 1.0);
    vec2 f1 = VARYING0 + f0.xy;
    vec4 f2 = texture(iChannel0Texture, VARYING0 + f0.zy);
    vec2 f3 = VARYING0 + f0.xw;
    vec2 f4 = VARYING0 + f0.zw;
    vec4 f5[4] = vec4[](texture(iChannel0Texture, f1), f2, texture(iChannel0Texture, f3), texture(iChannel0Texture, f4));
    vec4 f6 = texture(iChannel0Texture, VARYING0);
    float f7[4] = float[](texture(iChannel1Texture, f1).x, f2.x, texture(iChannel1Texture, f3).x, texture(iChannel1Texture, f4).x);
    vec4 f8 = texture(iChannel1Texture, VARYING0);
    float f9 = f8.x;
    vec3 f10;
    float f11;
    f11 = 1.0;
    f10 = f6.xyz;
    vec3 f12;
    float f13;
    for (int f14 = 0; f14 < 4; f11 = f13, f10 = f12, f14++)
    {
        if (f7[f14] <= (f9 * 1.0499999523162841796875))
        {
            f13 = f11 + 1.0;
            f12 = f10 + f5[f14].xyz;
        }
        else
        {
            f13 = f11;
            f12 = f10;
        }
    }
    _entryPointOutput = vec4(f10 / vec3(f11), f6.w);
}

//$$iChannel0Texture=s0
//$$iChannel1Texture=s1
