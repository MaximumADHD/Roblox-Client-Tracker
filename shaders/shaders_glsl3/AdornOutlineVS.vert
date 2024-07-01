#version 150

#extension GL_ARB_shading_language_include : require
#include <AdornParams.h>
#include <Globals.h>
uniform vec4 CB1[6];
uniform vec4 CB0[58];
in vec4 POSITION;
out vec4 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;

void main()
{
    mat4 v0 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 v1 = POSITION * v0;
    gl_Position = v1 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = CB1[4];
    VARYING1 = v1;
    VARYING2 = vec4((vec4(0.0, 0.0, 0.0, 1.0) * v0).xyz, length(vec4(1.0, 0.0, 0.0, 0.0) * v0));
}

