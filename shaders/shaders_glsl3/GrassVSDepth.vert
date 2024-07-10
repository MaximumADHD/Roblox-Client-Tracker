#version 150

#extension GL_ARB_shading_language_include : require
#include <GrassParams.h>
#include <Globals.h>
uniform vec4 CB1[2];
uniform vec4 CB0[58];
in vec4 POSITION;

void main()
{
    vec4 v0 = POSITION * CB1[0].w;
    vec3 v1 = v0.xyz + CB1[0].xyz;
    gl_Position = vec4(v1.x, v1.y - (smoothstep(0.0, 1.0, 1.0 - ((CB1[1].x - length(CB0[11].xyz - v1)) * CB1[1].y)) * v0.w), v1.z, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
}

