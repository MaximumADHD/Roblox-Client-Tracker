#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    float f2 = fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    if (smoothstep(0.0, 1.0, f1) < (f2 + ((fract(CB0[46].z) - f2) * clamp((0.001000000047497451305389404296875 * floor(CB0[46].z)) * gl_FragCoord.w, 0.0, 1.0))))
    {
        discard;
    }
    gl_FragData[0] = vec4(0.0, 0.0, 0.0, f1);
}

//$$DiffuseMapTexture=s3
