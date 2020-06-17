#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform vec4 CB1[216];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
attribute vec4 TEXCOORD2;
varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v2 = int(COLOR1.x) * 3;
    int v3 = v2 + 1;
    int v4 = v2 + 2;
    float v5 = dot(CB1[v2 * 1 + 0], POSITION);
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    float v7 = dot(CB1[v4 * 1 + 0], POSITION);
    vec3 v8 = vec3(v5, v6, v7);
    float v9 = dot(CB1[v2 * 1 + 0].xyz, v0);
    float v10 = dot(CB1[v3 * 1 + 0].xyz, v0);
    float v11 = dot(CB1[v4 * 1 + 0].xyz, v0);
    vec3 v12 = vec3(dot(CB1[v2 * 1 + 0].xyz, v1), dot(CB1[v3 * 1 + 0].xyz, v1), dot(CB1[v4 * 1 + 0].xyz, v1));
    vec4 v13 = vec4(0.0);
    v13.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v14 = vec4(v5, v6, v7, 1.0);
    vec4 v15 = v14 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v16 = ((v8 + (vec3(v9, v10, v11) * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v17 = vec4(v16.x, v16.y, v16.z, vec4(0.0).w);
    v17.w = 0.0;
    vec4 v18 = vec4(dot(CB0[20], v14), dot(CB0[21], v14), dot(CB0[22], v14), 0.0);
    v18.w = COLOR1.w * 0.0039215688593685626983642578125;
    vec4 v19 = vec4(v9, v10, v11, 0.0);
    v19.w = 0.0;
    gl_Position = v15;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = v17;
    VARYING4 = vec4(CB0[7].xyz - v8, v15.w);
    VARYING5 = v19;
    VARYING6 = vec4(v12.x, v12.y, v12.z, v13.w);
    VARYING7 = v18;
    VARYING8 = NORMAL.w;
}

