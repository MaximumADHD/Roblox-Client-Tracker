#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;

void main()
{
    gl_FragData[0] = vec4(((((((((texture2D(Texture0Texture, VARYING0).xyz + texture2D(Texture0Texture, min(VARYING1.xy, CB1[11].xy)).xyz) + texture2D(Texture0Texture, min(VARYING1.zw, CB1[11].xy)).xyz) + texture2D(Texture0Texture, min(VARYING2.xy, CB1[11].xy)).xyz) + texture2D(Texture0Texture, min(VARYING2.zw, CB1[11].xy)).xyz) + texture2D(Texture0Texture, min(VARYING3.xy, CB1[11].xy)).xyz) + texture2D(Texture0Texture, min(VARYING3.zw, CB1[11].xy)).xyz) + texture2D(Texture0Texture, min(VARYING4.xy, CB1[11].xy)).xyz) + texture2D(Texture0Texture, min(VARYING4.zw, CB1[11].xy)).xyz) * 0.111111111938953399658203125, 1.0);
}

//$$Texture0Texture=s0
