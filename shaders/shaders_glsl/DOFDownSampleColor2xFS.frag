#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D iChannel0Texture;

varying vec2 VARYING0;

void main()
{
    vec2 f0 = (CB1[0].zw * 0.5) * CB1[1].xy;
    vec4 f1 = texture2D(iChannel0Texture, VARYING0 + f0);
    vec4 f2 = texture2D(iChannel0Texture, VARYING0 - f0);
    gl_FragData[0] = vec4((f1 + f2).xyz * 0.5, max(f1.w, f2.w));
}

//$$iChannel0Texture=s0
