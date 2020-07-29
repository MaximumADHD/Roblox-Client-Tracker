#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
attribute vec2 POSITION;
attribute vec2 TEXCOORD0;
attribute vec4 COLOR0;
varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 v0 = vec4(POSITION, 0.0, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v1 = v0;
    v1.y = v0.y * (-1.0);
    gl_Position = v1;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0;
}

