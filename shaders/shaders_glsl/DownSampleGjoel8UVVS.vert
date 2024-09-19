#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
attribute vec4 POSITION;
varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;

void main()
{
    vec2 v0 = (POSITION.xy * 0.5) + vec2(0.5);
    vec2 v1 = CB1[0].zw * vec2(0.75, 0.0);
    vec2 v2 = CB1[0].zw * vec2(0.0, 0.75);
    vec2 v3 = CB1[0].zw * vec2(0.705122768878936767578125);
    vec4 v4 = v0.xyxy;
    gl_Position = POSITION;
    VARYING0 = v0 * CB1[1].xy;
    VARYING1 = (v4 + vec4(v1, v1 * (-1.0))) * CB1[1].xyxy;
    VARYING2 = (v4 + vec4(v2, v2 * (-1.0))) * CB1[1].xyxy;
    VARYING3 = (v4 + vec4(v3, v3 * (-1.0))) * CB1[1].xyxy;
    VARYING4 = (v4 + vec4(CB1[0].zw * vec2(0.705122768878936767578125, -0.705122768878936767578125), CB1[0].zw * vec2(-0.705122768878936767578125, 0.705122768878936767578125))) * CB1[1].xyxy;
}

