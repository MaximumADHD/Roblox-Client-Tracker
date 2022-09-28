#version 110

#extension GL_ARB_shading_language_include : require
#include <PerformanceOverlayParams.h>
#include <Globals.h>
uniform vec4 CB1[5];
uniform vec4 CB0[58];
attribute vec4 POSITION;
attribute vec3 NORMAL;
varying vec3 VARYING0;

void main()
{
    mat4 v0 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    gl_Position = (POSITION * v0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = normalize(NORMAL * mat3(v0[0].xyz, v0[1].xyz, v0[2].xyz));
}

