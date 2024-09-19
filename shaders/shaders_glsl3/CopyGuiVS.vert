#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    vec2 v0 = (POSITION.xy * vec2(0.5, -0.5)) + vec2(0.5);
    vec2 v1 = v0;
    v1.x = v0.x * CB1[2].x;
    vec2 v2 = v1;
    v2.y = v0.y * CB1[2].y;
    gl_Position = POSITION;
    VARYING0 = v2;
}

