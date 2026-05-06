#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[18];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = vec4(((((((((texture(Texture0Texture, min(VARYING0, CB1[12].xy)).xyz + texture(Texture0Texture, min(VARYING1.xy, CB1[12].xy)).xyz) + texture(Texture0Texture, min(VARYING1.zw, CB1[12].xy)).xyz) + texture(Texture0Texture, min(VARYING2.xy, CB1[12].xy)).xyz) + texture(Texture0Texture, min(VARYING2.zw, CB1[12].xy)).xyz) + texture(Texture0Texture, min(VARYING3.xy, CB1[12].xy)).xyz) + texture(Texture0Texture, min(VARYING3.zw, CB1[12].xy)).xyz) + texture(Texture0Texture, min(VARYING4.xy, CB1[12].xy)).xyz) + texture(Texture0Texture, min(VARYING4.zw, CB1[12].xy)).xyz) * 0.111111111938953399658203125, 1.0);
}

//$$Texture0Texture=s0
