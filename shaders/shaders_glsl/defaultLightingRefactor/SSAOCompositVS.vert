#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
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
    vec4 v4 = vec4(0.0);
    v4.x = v3.x;
    vec4 v5 = v4;
    v5.y = v3.y;
    vec2 v6 = v0 - v2;
    vec4 v7 = v5;
    v7.z = v6.x;
    vec4 v8 = v7;
    v8.w = v6.y;
    vec2 v9 = vec2(0.0, v1.y);
    vec2 v10 = v0 + v9;
    vec4 v11 = vec4(0.0);
    v11.x = v10.x;
    vec4 v12 = v11;
    v12.y = v10.y;
    vec2 v13 = v0 - v9;
    vec4 v14 = v12;
    v14.z = v13.x;
    vec4 v15 = v14;
    v15.w = v13.y;
    gl_Position = POSITION;
    VARYING0 = v0;
    VARYING1 = v8;
    VARYING2 = v15;
}

