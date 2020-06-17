#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <UIParams.h>
uniform vec4 CB0[52];
uniform vec4 CB1[5];
uniform vec4 CB2[1];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec2 VARYING0;
out vec4 VARYING1;
out vec3 VARYING2;
out vec3 VARYING3;
out vec4 VARYING4;
out vec3 VARYING5;

void main()
{
    vec4 v0 = POSITION * mat4(CB1[1], CB1[2], CB1[3], CB1[4]);
    vec4 v1 = v0 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v2 = v1;
    v2.z = v1.z - CB2[0].x;
    float v3 = dot(CB1[0].xyz, -CB0[11].xyz);
    vec3 v4 = v0.xyz;
    gl_Position = v2;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0;
    VARYING2 = (CB0[10].xyz * clamp(v3, 0.0, 1.0)) + (CB0[12].xyz * clamp(-v3, 0.0, 1.0));
    VARYING3 = ((v4 + (CB1[0].xyz * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING4 = vec4(v0.xyz, v3);
    VARYING5 = CB0[7].xyz - v4;
}

