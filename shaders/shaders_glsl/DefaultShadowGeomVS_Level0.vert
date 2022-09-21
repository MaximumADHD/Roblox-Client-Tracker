#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
attribute vec4 POSITION;
varying vec3 VARYING0;

void main()
{
    vec4 v0 = vec4(POSITION.xyz, 1.0);
    gl_Position = v0 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec3(dot(CB0[25], v0), dot(CB0[26], v0), dot(CB0[27], v0));
}

