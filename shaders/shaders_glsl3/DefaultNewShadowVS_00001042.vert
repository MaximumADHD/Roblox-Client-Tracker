#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB1[216];
uniform vec4 CB0[58];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 COLOR0;
in vec4 COLOR1;
out vec3 VARYING0;
out vec2 VARYING1;

void main()
{
    int v0 = int(COLOR1.x) * 3;
    vec4 v1 = vec4(dot(CB1[v0 * 1 + 0], POSITION), dot(CB1[(v0 + 1) * 1 + 0], POSITION), dot(CB1[(v0 + 2) * 1 + 0], POSITION), 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v2 = v1;
    v2.z = 0.5;
    vec3 v3 = vec3(0.0);
    v3.x = TEXCOORD0.x;
    vec3 v4 = v3;
    v4.y = TEXCOORD0.y;
    vec3 v5 = v4;
    v5.z = COLOR0.w;
    gl_Position = v2;
    VARYING0 = v5;
    VARYING1 = vec2(v1.zw);
}

