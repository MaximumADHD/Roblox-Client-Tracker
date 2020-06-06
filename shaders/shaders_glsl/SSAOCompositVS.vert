#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
attribute vec4 POSITION;
varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;

void main()
{
    vec2 v0 = (POSITION.xy * 0.5) + vec2(0.5);
    vec2 v1 = CB1[0].zw * 2.0;
    vec2 v2 = vec2(v1.x, 0.0);
    vec2 v3 = v0 + v2;
    vec2 v4 = v0 - v2;
    vec2 v5 = vec2(0.0, v1.y);
    vec2 v6 = v0 + v5;
    vec2 v7 = v0 - v5;
    gl_Position = POSITION;
    VARYING0 = v0;
    VARYING1 = vec4(v3.x, v3.y, v4.x, v4.y);
    VARYING2 = vec4(v6.x, v6.y, v7.x, v7.y);
}

