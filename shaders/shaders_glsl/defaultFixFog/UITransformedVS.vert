#version 110

#extension GL_ARB_shading_language_include : require
#include <UIParams.h>
#include <Globals.h>
uniform vec4 CB1[9];
uniform vec4 CB0[58];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
attribute vec4 COLOR0;
varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 v0 = (POSITION * mat4(CB1[1], CB1[2], CB1[3], CB1[4])) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v1 = v0;
    v1.z = v0.z - CB1[5].x;
    gl_Position = v1;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0;
}

