#version 150

#extension GL_ARB_shading_language_include : require
#include <AdornParams.h>
#include <Globals.h>
uniform vec4 CB1[6];
uniform vec4 CB0[58];
in vec4 POSITION;
out vec4 VARYING0;
out vec3 VARYING1;

void main()
{
    float v0 = POSITION.x * 0.5;
    float v1 = (v0 + 0.5) * CB1[5].z;
    float v2 = atan(((2.0 * CB1[5].x) * v1) + CB1[5].y);
    vec2 v3 = POSITION.yz * CB1[5].w;
    float v4 = v3.x;
    vec4 v5 = vec4(((-v4) * sin(v2)) + v1, (v4 * cos(v2)) + (v1 * ((CB1[5].x * v1) + CB1[5].y)), v3.y, 1.0) * mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    gl_Position = vec4(v5.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec4(CB1[4].xyz, 0.5 - v0);
    VARYING1 = CB0[11].xyz - v5.xyz;
}

