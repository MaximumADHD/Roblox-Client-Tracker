#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <UIParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[9];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
attribute vec4 COLOR0;
varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;

void main()
{
    vec4 v0 = POSITION * mat4(CB1[1], CB1[2], CB1[3], CB1[4]);
    vec4 v1 = v0 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v2 = v1;
    v2.z = v1.z - CB1[5].x;
    float v3 = dot(CB1[0].xyz, -CB0[16].xyz);
    vec3 v4 = v0.xyz;
    vec4 v5 = vec4(v0.xyz, 1.0);
    gl_Position = v2;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0;
    VARYING2 = (CB0[15].xyz * clamp(v3, 0.0, 1.0)) + (CB0[17].xyz * clamp(-v3, 0.0, 1.0));
    VARYING3 = ((v4 + (CB1[0].xyz * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING4 = vec4(dot(CB0[25], v5), dot(CB0[26], v5), dot(CB0[27], v5), 1.0);
    VARYING5 = CB0[11].xyz - v4;
}

