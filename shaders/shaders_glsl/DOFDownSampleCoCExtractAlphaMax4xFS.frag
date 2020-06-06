#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D iChannel0Texture;

varying vec2 VARYING0;

void main()
{
    vec2 f0 = CB1[0].zw * (2.0 * CB1[1].x);
    vec2 f1 = CB1[0].zw * CB1[1].x;
    gl_FragData[0] = max(texture2D(iChannel0Texture, VARYING0).w, max(max(texture2D(iChannel0Texture, VARYING0 + f0).w, texture2D(iChannel0Texture, VARYING0 + f1).w), max(texture2D(iChannel0Texture, VARYING0 - f1).w, texture2D(iChannel0Texture, VARYING0 - f0).w)));
}

//$$iChannel0Texture=s0
