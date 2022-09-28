#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB2[99];
uniform vec4 CB1[1];
uniform vec4 CB4[63];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec4 TEXCOORD0;
attribute vec4 TEXCOORD1;
varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING7;
varying vec3 VARYING8;
varying vec4 VARYING9;

void main()
{
    vec3 v0 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 v1 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v2 = vec4(v0, 1.0);
    vec4 v3 = v2 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v4 = v3;
    v4.z = v3.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 v5 = CB0[11].xyz - v0;
    int v6 = int(TEXCOORD1.x);
    int v7 = 36 + int(TEXCOORD0.x);
    int v8 = int(TEXCOORD1.y);
    int v9 = 36 + int(TEXCOORD0.y);
    int v10 = int(TEXCOORD1.z);
    int v11 = 36 + int(TEXCOORD0.z);
    vec4 v12 = vec4(0.0);
    v12.w = (abs(POSITION.w) > 3.0) ? 0.0 : 1.0;
    bvec3 v13 = equal(mod(abs(POSITION.www), vec3(4.0)), vec3(1.0, 2.0, 3.0));
    vec3 v14 = vec3(v13.x ? vec3(1.0).x : vec3(0.0).x, v13.y ? vec3(1.0).y : vec3(0.0).y, v13.z ? vec3(1.0).z : vec3(0.0).z);
    float v15 = v14.x;
    vec4 v16 = v12;
    v16.x = v15;
    float v17 = v14.y;
    vec4 v18 = v16;
    v18.y = v17;
    float v19 = v14.z;
    vec4 v20 = v18;
    v20.z = v19;
    bvec3 v21 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = v4;
    VARYING0 = v20;
    VARYING1 = vec4((vec2(dot(v0, CB2[v6 * 1 + 0].xyz), dot(v0, CB2[(18 + v6) * 1 + 0].xyz)) * CB2[v7 * 1 + 0].x) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[v7 * 1 + 0].y), (vec2(dot(v0, CB2[v8 * 1 + 0].xyz), dot(v0, CB2[(18 + v8) * 1 + 0].xyz)) * CB2[v9 * 1 + 0].x) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[v9 * 1 + 0].y));
    VARYING2 = vec4(CB2[v7 * 1 + 0].zw, CB2[v9 * 1 + 0].zw);
    VARYING3 = vec4((vec2(dot(v0, CB2[v10 * 1 + 0].xyz), dot(v0, CB2[(18 + v10) * 1 + 0].xyz)) * CB2[v11 * 1 + 0].x) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[v11 * 1 + 0].y), CB2[v11 * 1 + 0].zw);
    VARYING4 = ((v0 + (v1 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING5 = vec4(dot(CB0[25], v2), dot(CB0[26], v2), dot(CB0[27], v2), length(v5));
    VARYING6 = v1;
    VARYING7 = vec3(v21.x ? vec3(1.0).x : vec3(0.0).x, v21.y ? vec3(1.0).y : vec3(0.0).y, v21.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING8 = v5;
    VARYING9 = ((CB4[int(TEXCOORD0.x + 0.5) * 1 + 0] * v15) + (CB4[int(TEXCOORD0.y + 0.5) * 1 + 0] * v17)) + (CB4[int(TEXCOORD0.z + 0.5) * 1 + 0] * v19);
}

