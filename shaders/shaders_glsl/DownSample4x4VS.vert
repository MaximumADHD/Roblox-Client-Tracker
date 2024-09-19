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
    vec2 v1 = CB1[0].zw * 0.25;
    vec2 v2 = v0 + (v1 * vec2(-1.0));
    vec4 v3 = vec4(0.0);
    v3.x = v2.x;
    vec4 v4 = v3;
    v4.y = v2.y;
    vec2 v5 = v0 + (v1 * vec2(1.0, -1.0));
    vec4 v6 = v4;
    v6.z = v5.x;
    vec4 v7 = v6;
    v7.w = v5.y;
    vec2 v8 = v0 + (v1 * vec2(-1.0, 1.0));
    vec4 v9 = vec4(0.0);
    v9.x = v8.x;
    vec4 v10 = v9;
    v10.y = v8.y;
    vec2 v11 = v0 + v1;
    vec4 v12 = v10;
    v12.z = v11.x;
    vec4 v13 = v12;
    v13.w = v11.y;
    gl_Position = POSITION;
    VARYING0 = v0;
    VARYING1 = v7;
    VARYING2 = v13;
}

