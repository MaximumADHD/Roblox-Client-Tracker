#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[16];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = CB1[0].zwzw * vec4(-0.5, -0.5, 0.5, 0.5);
    _entryPointOutput = (((texture(Texture0Texture, min(VARYING0 + f0.xy, CB1[12].xy)) + texture(Texture0Texture, min(VARYING0 + f0.zy, CB1[12].xy))) + texture(Texture0Texture, min(VARYING0 + f0.xw, CB1[12].xy))) + texture(Texture0Texture, min(VARYING0 + f0.zw, CB1[12].xy))) * 0.25;
}

//$$Texture0Texture=s0
