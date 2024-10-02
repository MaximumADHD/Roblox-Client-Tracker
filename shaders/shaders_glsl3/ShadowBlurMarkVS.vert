#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
in vec4 POSITION;

void main()
{
    vec4 v0 = vec4(0.0);
    v0.x = dot(CB1[2], POSITION);
    vec4 v1 = v0;
    v1.y = dot(CB1[3], POSITION);
    vec4 v2 = v1;
    v2.z = 0.5;
    vec4 v3 = v2;
    v3.w = 1.0;
    gl_Position = v3;
}

