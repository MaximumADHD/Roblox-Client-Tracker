#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;

void main()
{
    vec3 f0 = VARYING1.xyz - VARYING2.xyz;
    float f1 = max(0.0, VARYING2.w - 1.0);
    float f2 = 2.0 * dot(f0, normalize(VARYING1.xyz - CB0[11].xyz));
    float f3 = dot(f0, f0);
    float f4 = f2 * f2;
    if (f4 < (4.0 * (f3 - (VARYING2.w * VARYING2.w))))
    {
        discard;
    }
    if (f4 > (4.0 * (f3 - (f1 * f1))))
    {
        discard;
    }
    gl_FragData[0] = VARYING0;
}

