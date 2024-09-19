#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0 + (CB1[2].xy * (-3.0)));
    vec4 f1 = texture2D(Texture0Texture, VARYING0 + (CB1[2].xy * (-2.0)));
    vec4 f2 = texture2D(Texture0Texture, VARYING0 + (CB1[2].xy * (-1.0)));
    vec4 f3 = texture2D(Texture0Texture, VARYING0);
    vec4 f4 = texture2D(Texture0Texture, VARYING0 + (CB1[2].xy * 1.0));
    vec4 f5 = texture2D(Texture0Texture, VARYING0 + (CB1[2].xy * 2.0));
    vec4 f6 = texture2D(Texture0Texture, VARYING0 + (CB1[2].xy * 3.0));
    gl_FragData[0] = vec4(min(min(min(min(min(min(min(1.0, f0.x), f1.x), f2.x), f3.x), f4.x), f5.x), f6.x), ((((((((f0.y * 0.13533528149127960205078125) + (f1.y * 0.4111122786998748779296875)) + (f2.y * 0.8007373809814453125)) + f3.y) + (f4.y * 0.8007373809814453125)) + (f5.y * 0.4111122786998748779296875)) + (f6.y * 0.13533528149127960205078125)) * texture2D(Texture1Texture, VARYING0).x) * 0.270682156085968017578125, 0.0, 0.0);
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
