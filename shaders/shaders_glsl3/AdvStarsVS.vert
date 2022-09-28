#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[22];
in vec3 POSITION;
in vec2 TEXCOORD0;
in vec4 TEXCOORD1;
out vec4 VARYING0;
out vec2 VARYING1;

void main()
{
    vec4 v0 = (vec4(POSITION, 1.0) * mat4(CB1[0], CB1[1], CB1[2], CB1[3])) * mat4(CB1[4], CB1[5], CB1[6], CB1[7]);
    v0.z = 0.0;
    gl_Position = v0;
    VARYING0 = TEXCOORD1;
    VARYING1 = TEXCOORD0;
    gl_PointSize = 2.0;
}

