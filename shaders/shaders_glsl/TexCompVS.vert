#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[2];
uniform vec4 CB0[58];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
varying vec2 VARYING0;

void main()
{
    gl_Position = vec4((POSITION.xy * CB1[0].zw) + CB1[0].xy, POSITION.zw) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = TEXCOORD0;
}

