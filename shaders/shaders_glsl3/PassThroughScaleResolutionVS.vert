#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[58];
uniform vec4 CB1[10];
in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    vec2 v0 = (POSITION.xy * 0.5) + vec2(0.5);
    gl_Position = POSITION;
    VARYING0 = (v0 * CB1[2].xy) - ((floor(v0 + ((CB0[50].xy * 0.5) / CB1[2].xy)) * 0.5) * CB0[50].xy);
}

