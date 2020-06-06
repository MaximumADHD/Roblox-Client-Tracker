#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = CB1[0].zwzw * vec4(-0.5, -0.5, 0.5, 0.5);
    _entryPointOutput = (((texture(Texture0Texture, VARYING0 + f0.xy) + texture(Texture0Texture, VARYING0 + f0.zy)) + texture(Texture0Texture, VARYING0 + f0.xw)) + texture(Texture0Texture, VARYING0 + f0.zw)) * 0.25;
}

//$$Texture0Texture=s0
