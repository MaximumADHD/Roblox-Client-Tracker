#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture0Texture;

in vec4 VARYING1;
in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = (((texture(Texture0Texture, min(VARYING1.xy, CB1[11].xy)) + texture(Texture0Texture, min(VARYING1.zw, CB1[11].xy))) + texture(Texture0Texture, min(VARYING2.xy, CB1[11].xy))) + texture(Texture0Texture, min(VARYING2.zw, CB1[11].xy))) * 0.25;
}

//$$Texture0Texture=s0
