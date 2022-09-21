#version 110

#extension GL_ARB_shading_language_include : require
#include <AdornParams.h>
#include <Globals.h>
uniform vec4 CB1[6];
uniform vec4 CB0[58];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;

void main()
{
    vec4 v0 = POSITION * mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    gl_Position = v0 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = TEXCOORD0;
    VARYING1 = vec4(CB1[4].xyz, CB1[4].w);
    VARYING2 = CB0[11].xyz - v0.xyz;
}

