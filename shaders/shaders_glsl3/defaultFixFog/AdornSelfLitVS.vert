#version 150

#extension GL_ARB_shading_language_include : require
#include <AdornParams.h>
#include <Globals.h>
uniform vec4 CB1[6];
uniform vec4 CB0[58];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec3 NORMAL;
out vec2 VARYING0;
out vec4 VARYING1;
out vec3 VARYING2;

void main()
{
    mat4 v0 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 v1 = POSITION * v0;
    vec3 v2 = CB0[11].xyz - v1.xyz;
    float v3 = clamp(dot(normalize(NORMAL * mat3(v0[0].xyz, v0[1].xyz, v0[2].xyz)), normalize(v2)), 0.0, 1.0);
    gl_Position = v1 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = TEXCOORD0;
    VARYING1 = vec4((CB1[4].xyz * (0.5 + (0.5 * v3))) + vec3(pow(v3, 64.0)), CB1[4].w);
    VARYING2 = v2;
}

