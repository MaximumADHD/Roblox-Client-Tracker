#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <TrailParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[1];
in vec4 POSITION;
in vec3 TEXCOORD0;
in vec4 TEXCOORD1;
out vec3 VARYING0;
out vec4 VARYING1;
out vec3 VARYING2;
out vec3 VARYING3;
out vec3 VARYING4;

void main()
{
    vec3 v0 = vec3(0.0);
    v0.x = TEXCOORD0.x;
    vec3 v1 = v0;
    v1.y = TEXCOORD0.y;
    vec2 v2 = v1.xy * TEXCOORD0.z;
    vec3 v3 = v1;
    v3.x = v2.x;
    vec3 v4 = v3;
    v4.y = v2.y;
    vec3 v5 = v4;
    v5.z = TEXCOORD0.z;
    vec4 v6 = vec4(POSITION.xyz, 1.0);
    gl_Position = (POSITION + (CB0[10] * CB1[0].x)) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = v5;
    VARYING1 = TEXCOORD1 * 0.0039215688593685626983642578125;
    VARYING2 = (POSITION.yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING3 = vec3(dot(CB0[25], v6), dot(CB0[26], v6), dot(CB0[27], v6));
    VARYING4 = CB0[11].xyz - POSITION.xyz;
}

