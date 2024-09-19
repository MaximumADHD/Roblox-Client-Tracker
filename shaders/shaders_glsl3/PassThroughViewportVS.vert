#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    gl_Position = POSITION;
    VARYING0 = ((POSITION.xy * 0.5) + vec2(0.5)) * CB1[1].xy;
}

