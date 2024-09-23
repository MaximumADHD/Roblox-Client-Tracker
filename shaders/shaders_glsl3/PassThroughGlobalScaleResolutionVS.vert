#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    gl_Position = POSITION;
    VARYING0 = ((POSITION.xy * 0.5) + vec2(0.5)) * CB0[50].zw;
}

