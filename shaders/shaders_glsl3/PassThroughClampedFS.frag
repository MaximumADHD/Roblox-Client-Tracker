#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[20];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = texture(Texture0Texture, min(VARYING0, CB1[12].xy));
}

//$$Texture0Texture=s0
