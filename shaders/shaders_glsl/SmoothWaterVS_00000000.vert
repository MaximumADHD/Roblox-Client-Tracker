#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB2[74];
uniform vec4 CB1[1];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec4 TEXCOORD0;
attribute vec4 TEXCOORD1;
varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec3 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec3 v0 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 v1 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    bvec3 v2 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    vec3 v3 = vec3(v2.x ? vec3(1.0).x : vec3(0.0).x, v2.y ? vec3(1.0).y : vec3(0.0).y, v2.z ? vec3(1.0).z : vec3(0.0).z);
    vec4 v4 = vec4(v0, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v5 = v4;
    v5.z = v4.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 v6 = CB0[11].xyz - v0;
    int v7 = int(TEXCOORD1.x);
    int v8 = int(TEXCOORD1.y);
    int v9 = int(TEXCOORD1.z);
    vec4 v10 = vec4(0.0);
    v10.x = v3.x;
    vec4 v11 = v10;
    v11.y = v3.y;
    vec4 v12 = v11;
    v12.z = v3.z;
    vec4 v13 = v12;
    v13.w = dot(v3, TEXCOORD0.xyz) * 0.0039215688593685626983642578125;
    vec4 v14 = vec4(0.0);
    v14.x = v1.x;
    vec4 v15 = v14;
    v15.y = v1.y;
    vec4 v16 = v15;
    v16.z = v1.z;
    vec4 v17 = v16;
    v17.w = clamp(exp2((CB0[18].z * length(v6)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    bvec3 v18 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = v5;
    VARYING0 = v13;
    VARYING1 = vec3(v18.x ? vec3(1.0).x : vec3(0.0).x, v18.y ? vec3(1.0).y : vec3(0.0).y, v18.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING2 = (vec2(dot(v0, CB2[v7 * 1 + 0].xyz), dot(v0, CB2[(18 + v7) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING3 = (vec2(dot(v0, CB2[v8 * 1 + 0].xyz), dot(v0, CB2[(18 + v8) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING4 = (vec2(dot(v0, CB2[v9 * 1 + 0].xyz), dot(v0, CB2[(18 + v9) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING5 = ((v0 + (v1 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING6 = v17;
    VARYING7 = vec4(v6, v4.w);
}

