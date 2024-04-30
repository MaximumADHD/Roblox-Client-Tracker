#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <UIParams.h>
uniform vec4 CB0[57];
uniform vec4 CB1[8];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec2 VARYING0;
out vec4 VARYING1;
out vec3 VARYING2;

void main()
{
    vec4 v0 = POSITION * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v1 = v0;
    v1.z = v0.z - CB1[5].x;
    gl_Position = v1;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0;
    VARYING2 = CB0[11].xyz - POSITION.xyz;
}

