#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB1[216];
uniform vec4 CB0[52];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec3 VARYING0;

void main()
{
    int v0 = int(COLOR0.x) * 3;
    vec3 v1 = vec3(TEXCOORD0.x, TEXCOORD0.y, vec3(0.0).z);
    v1.z = COLOR0.w * 0.0039215688593685626983642578125;
    gl_Position = vec4(dot(CB1[v0 * 1 + 0], POSITION), dot(CB1[(v0 + 1) * 1 + 0], POSITION), dot(CB1[(v0 + 2) * 1 + 0], POSITION), 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = v1;
}

