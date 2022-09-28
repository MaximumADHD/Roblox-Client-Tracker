#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB1[216];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying float VARYING7;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v1 = int(COLOR1.x) * 3;
    int v2 = v1 + 1;
    int v3 = v1 + 2;
    float v4 = dot(CB1[v1 * 1 + 0], POSITION);
    float v5 = dot(CB1[v2 * 1 + 0], POSITION);
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    vec3 v7 = vec3(v4, v5, v6);
    float v8 = dot(CB1[v1 * 1 + 0].xyz, v0);
    float v9 = dot(CB1[v2 * 1 + 0].xyz, v0);
    float v10 = dot(CB1[v3 * 1 + 0].xyz, v0);
    vec4 v11 = vec4(v4, v5, v6, 1.0);
    vec4 v12 = v11 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 v13 = TEXCOORD1;
    v13.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    vec3 v14 = ((v7 + (vec3(v8, v9, v10) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v15 = vec4(0.0);
    v15.x = v14.x;
    vec4 v16 = v15;
    v16.y = v14.y;
    vec4 v17 = v16;
    v17.z = v14.z;
    vec4 v18 = v17;
    v18.w = 0.0;
    vec4 v19 = vec4(dot(CB0[25], v11), dot(CB0[26], v11), dot(CB0[27], v11), 0.0);
    v19.w = COLOR1.z * 0.0039215688593685626983642578125;
    vec4 v20 = vec4(v8, v9, v10, 0.0);
    v20.w = inversesqrt(0.1745329201221466064453125 * COLOR1.y);
    gl_Position = v12;
    VARYING0 = TEXCOORD0;
    VARYING1 = v13;
    VARYING2 = COLOR0;
    VARYING3 = v18;
    VARYING4 = vec4(CB0[11].xyz - v7, v12.w);
    VARYING5 = v20;
    VARYING6 = v19;
    VARYING7 = NORMAL.w;
}

