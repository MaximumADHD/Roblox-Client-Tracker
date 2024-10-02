#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB3[65];
uniform vec4 CB1[15];
in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    int v0 = int(POSITION.z);
    vec2 v1 = (POSITION.xy * CB3[0].zw) + CB3[v0 * 1 + 0].zw;
    vec2 v2 = v1;
    v2.y = CB1[10].y - v1.y;
    gl_Position = vec4((vec2(2.0) * ((POSITION.xy * CB3[0].xy) + CB3[v0 * 1 + 0].xy)) + vec2(-1.0), 0.0, 1.0);
    VARYING0 = v2;
}

