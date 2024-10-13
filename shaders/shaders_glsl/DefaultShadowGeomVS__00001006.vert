#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB1[216];
attribute vec4 POSITION;
attribute vec4 TEXCOORD4;
attribute vec4 TEXCOORD5;
varying vec3 VARYING0;

void main()
{
    vec4 v0 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v1 = ivec4(TEXCOORD4);
    int v2 = 3 * v1.x;
    float v3 = v0.x;
    int v4 = 3 * v1.y;
    float v5 = v0.y;
    int v6 = 3 * v1.z;
    float v7 = v0.z;
    int v8 = 3 * v1.w;
    float v9 = v0.w;
    vec4 v10 = vec4(dot((((CB1[v2 * 1 + 0] * v3) + (CB1[v4 * 1 + 0] * v5)) + (CB1[v6 * 1 + 0] * v7)) + (CB1[v8 * 1 + 0] * v9), POSITION), dot((((CB1[(v2 + 1) * 1 + 0] * v3) + (CB1[(v4 + 1) * 1 + 0] * v5)) + (CB1[(v6 + 1) * 1 + 0] * v7)) + (CB1[(v8 + 1) * 1 + 0] * v9), POSITION), dot((((CB1[(v2 + 2) * 1 + 0] * v3) + (CB1[(v4 + 2) * 1 + 0] * v5)) + (CB1[(v6 + 2) * 1 + 0] * v7)) + (CB1[(v8 + 2) * 1 + 0] * v9), POSITION), 1.0);
    gl_Position = v10 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec3(dot(CB0[25], v10), dot(CB0[26], v10), dot(CB0[27], v10));
}

