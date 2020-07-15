#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform vec4 CB1[216];
attribute vec4 POSITION;
attribute vec4 TEXCOORD1;
attribute vec4 TEXCOORD2;
varying vec3 VARYING0;

void main()
{
    vec4 v0 = TEXCOORD2 * vec4(0.0039215688593685626983642578125);
    ivec4 v1 = ivec4(TEXCOORD1) * ivec4(3);
    float v2 = v0.x;
    float v3 = v0.y;
    float v4 = v0.z;
    float v5 = v0.w;
    ivec4 v6 = v1 + ivec4(1);
    ivec4 v7 = v1 + ivec4(2);
    vec4 v8 = vec4(dot((((CB1[v1.x * 1 + 0] * v2) + (CB1[v1.y * 1 + 0] * v3)) + (CB1[v1.z * 1 + 0] * v4)) + (CB1[v1.w * 1 + 0] * v5), POSITION), dot((((CB1[v6.x * 1 + 0] * v2) + (CB1[v6.y * 1 + 0] * v3)) + (CB1[v6.z * 1 + 0] * v4)) + (CB1[v6.w * 1 + 0] * v5), POSITION), dot((((CB1[v7.x * 1 + 0] * v2) + (CB1[v7.y * 1 + 0] * v3)) + (CB1[v7.z * 1 + 0] * v4)) + (CB1[v7.w * 1 + 0] * v5), POSITION), 1.0);
    gl_Position = v8 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec3(dot(CB0[20], v8), dot(CB0[21], v8), dot(CB0[22], v8));
}

