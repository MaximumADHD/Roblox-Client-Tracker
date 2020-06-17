#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform vec4 CB2[1];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec2 VARYING0;
out vec4 VARYING1;

void main()
{
    vec4 v0 = POSITION * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v1 = v0;
    v1.z = v0.z - CB2[0].x;
    gl_Position = v1;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0;
}

