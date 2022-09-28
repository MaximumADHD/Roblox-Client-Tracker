#version 110

#extension GL_ARB_shading_language_include : require
#include <AdornParams.h>
#include <Globals.h>
uniform vec4 CB1[6];
uniform vec4 CB0[58];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
attribute vec3 NORMAL;
varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;

void main()
{
    mat4 v0 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 v1 = POSITION * v0;
    float v2 = dot(normalize(NORMAL * mat3(v0[0].xyz, v0[1].xyz, v0[2].xyz)), -CB0[16].xyz);
    gl_Position = v1 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = TEXCOORD0;
    VARYING1 = vec4(CB1[4].xyz * ((CB0[13].xyz + (CB0[15].xyz * clamp(v2, 0.0, 1.0))) + (CB0[17].xyz * clamp(-v2, 0.0, 1.0))), CB1[4].w);
    VARYING2 = CB0[11].xyz - v1.xyz;
}

