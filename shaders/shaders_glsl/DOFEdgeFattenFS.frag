#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D colorTexture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = CB1[0].zwzw * vec4(-2.0, -2.0, 2.0, 2.0);
    vec4 f1 = texture2D(colorTexture, VARYING0 + f0.xy);
    vec4 f2 = texture2D(colorTexture, VARYING0 + f0.zy);
    vec4 f3 = texture2D(colorTexture, VARYING0 + f0.xw);
    vec4 f4 = texture2D(colorTexture, VARYING0 + f0.zw);
    vec4 f5 = texture2D(colorTexture, VARYING0);
    float f6 = f1.w;
    float f7 = f2.w;
    float f8 = f4.w;
    float f9 = f3.w;
    float f10 = max(max(f6, f7), max(f8, f9));
    vec4 f11 = step(vec4(f10), vec4(f6, f7, f9, f8));
    float f12 = f5.w;
    vec4 f13;
    if ((f12 * f12) <= 0.002799999900162220001220703125)
    {
        vec4 f14 = ((((f1 * f11.x) + (f2 * f11.y)) + (f3 * f11.z)) + (f4 * f11.w)) * min(1.0, 1.0 / (dot(f11, vec4(1.0)) + 0.001000000047497451305389404296875));
        f14.w = f10;
        f13 = f14;
    }
    else
    {
        f13 = f5;
    }
    gl_FragData[0] = f13;
}

//$$colorTexture=s1
