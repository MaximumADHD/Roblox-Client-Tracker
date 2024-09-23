#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = texture(Texture0Texture, clamp(VARYING0, vec2(0.0), CB0[50].zw - (CB0[50].xy * 0.5)));
}

//$$Texture0Texture=s0
