#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    vec2 v0 = POSITION.xy * CB1[2].xy;
    vec4 v1 = POSITION;
    v1.x = v0.x;
    vec4 v2 = v1;
    v2.y = v0.y;
    vec2 v3 = v2.xy + CB1[2].zw;
    vec4 v4 = v2;
    v4.x = v3.x;
    vec4 v5 = v4;
    v5.y = v3.y;
    gl_Position = v5;
    VARYING0 = (POSITION.xy * 0.5) + vec2(0.5);
}

