#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture0Texture;

varying vec4 VARYING1;
varying vec4 VARYING2;

void main()
{
    gl_FragData[0] = (((texture2D(Texture0Texture, min(VARYING1.xy, CB1[11].xy)) + texture2D(Texture0Texture, min(VARYING1.zw, CB1[11].xy))) + texture2D(Texture0Texture, min(VARYING2.xy, CB1[11].xy))) + texture2D(Texture0Texture, min(VARYING2.zw, CB1[11].xy))) * 0.25;
}

//$$Texture0Texture=s0
