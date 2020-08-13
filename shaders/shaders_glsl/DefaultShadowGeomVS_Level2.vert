#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform vec4 CB1[216];
attribute vec4 POSITION;
attribute vec4 COLOR0;
varying vec3 VARYING0;

void main()
{
    int v0 = int(COLOR0.x) * 3;
    vec4 v1 = vec4(dot(CB1[v0 * 1 + 0], POSITION), dot(CB1[(v0 + 1) * 1 + 0], POSITION), dot(CB1[(v0 + 2) * 1 + 0], POSITION), 1.0);
    gl_Position = v1 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec3(dot(CB0[20], v1), dot(CB0[21], v1), dot(CB0[22], v1));
}

