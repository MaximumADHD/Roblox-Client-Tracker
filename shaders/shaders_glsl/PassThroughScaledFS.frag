#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    gl_FragData[0] = texture2D(Texture0Texture, clamp(VARYING0, vec2(0.0), CB0[50].zw - (CB0[50].xy * 0.5)));
}

//$$Texture0Texture=s0
