#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdornParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[6];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
attribute vec3 NORMAL;
varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;

void main()
{
    mat4 v0 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 v1 = POSITION * v0;
    vec3 v2 = v1.xyz;
    vec3 v3 = normalize(NORMAL * mat3(v0[0].xyz, v0[1].xyz, v0[2].xyz));
    float v4 = dot(v3, -CB0[16].xyz);
    gl_Position = vec4(v1.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = TEXCOORD0;
    VARYING1 = CB1[4];
    VARYING2 = (CB0[15].xyz * clamp(v4, 0.0, 1.0)) + (CB0[17].xyz * clamp(-v4, 0.0, 1.0));
    VARYING3 = ((v2 + (v3 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING4 = CB0[11].xyz - v2;
}

