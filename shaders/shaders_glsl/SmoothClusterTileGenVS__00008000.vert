#version 110

#extension GL_ARB_shading_language_include : require
#include <AtlasParams.h>
#include <UnpackInfo.h>
uniform vec4 CB2[99];
uniform vec4 CB6[2];
uniform vec4 CB1[1];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec4 TEXCOORD0;
attribute vec4 TEXCOORD1;
attribute vec3 TEXCOORD2;
varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec3 VARYING5;
varying vec3 VARYING6;

void main()
{
    vec3 v0 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    int v1 = int(TEXCOORD1.x);
    int v2 = 36 + int(TEXCOORD0.x);
    int v3 = int(TEXCOORD1.y);
    int v4 = 36 + int(TEXCOORD0.y);
    int v5 = int(TEXCOORD1.z);
    int v6 = 36 + int(TEXCOORD0.z);
    bvec3 v7 = equal(mod(abs(POSITION.www), vec3(4.0)), vec3(1.0, 2.0, 3.0));
    bvec3 v8 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = vec4((((((TEXCOORD2.xy * CB6[0].zw) + CB6[0].xy) + vec2(0.25)) * CB6[1].zw) * vec2(2.0, -2.0)) + vec2(-1.0, 1.0), 0.5, 1.0);
    VARYING0 = vec4(vec3(v7.x ? vec3(1.0).x : vec3(0.0).x, v7.y ? vec3(1.0).y : vec3(0.0).y, v7.z ? vec3(1.0).z : vec3(0.0).z), (abs(POSITION.w) > 3.0) ? 0.0 : 1.0);
    VARYING1 = vec4((vec2(dot(v0, CB2[v1 * 1 + 0].xyz), dot(v0, CB2[(18 + v1) * 1 + 0].xyz)) * CB2[v2 * 1 + 0].x) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[v2 * 1 + 0].y), (vec2(dot(v0, CB2[v3 * 1 + 0].xyz), dot(v0, CB2[(18 + v3) * 1 + 0].xyz)) * CB2[v4 * 1 + 0].x) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[v4 * 1 + 0].y));
    VARYING2 = vec4(CB2[v2 * 1 + 0].zw, CB2[v4 * 1 + 0].zw);
    VARYING3 = vec4((vec2(dot(v0, CB2[v5 * 1 + 0].xyz), dot(v0, CB2[(18 + v5) * 1 + 0].xyz)) * CB2[v6 * 1 + 0].x) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[v6 * 1 + 0].y), CB2[v6 * 1 + 0].zw);
    VARYING4 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    VARYING5 = vec3(v8.x ? vec3(1.0).x : vec3(0.0).x, v8.y ? vec3(1.0).y : vec3(0.0).y, v8.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING6 = TEXCOORD0.xyz;
}

