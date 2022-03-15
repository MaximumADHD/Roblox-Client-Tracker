#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
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
varying vec4 VARYING7;
varying float VARYING8;

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
    vec3 v8 = vec3(dot(CB1[v1 * 1 + 0].xyz, v0), dot(CB1[v2 * 1 + 0].xyz, v0), dot(CB1[v3 * 1 + 0].xyz, v0));
    vec3 v9 = CB0[7].xyz - v7;
    vec3 v10 = normalize(v9);
    vec3 v11 = v8 * ((dot(v8, v10) > 0.0) ? 1.0 : (-1.0));
    vec3 v12 = -CB0[11].xyz;
    float v13 = dot(v11, v12);
    vec4 v14 = vec4(v4, v5, v6, 1.0);
    vec4 v15 = v14 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 v16 = TEXCOORD1;
    v16.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    vec3 v17 = ((v7 + (v11 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v18 = vec4(0.0);
    v18.x = v17.x;
    vec4 v19 = v18;
    v19.y = v17.y;
    vec4 v20 = v19;
    v20.z = v17.z;
    vec4 v21 = v20;
    v21.w = 0.0;
    float v22 = COLOR1.y * 0.50359570980072021484375;
    float v23 = clamp(v13, 0.0, 1.0);
    vec3 v24 = (CB0[10].xyz * v23) + (CB0[12].xyz * clamp(-v13, 0.0, 1.0));
    vec4 v25 = vec4(0.0);
    v25.x = v24.x;
    vec4 v26 = v25;
    v26.y = v24.y;
    vec4 v27 = v26;
    v27.z = v24.z;
    vec4 v28 = v27;
    v28.w = (v23 * CB0[23].w) * (COLOR1.y * exp2((v22 * dot(v11, normalize(v12 + v10))) - v22));
    vec4 v29 = vec4(dot(CB0[20], v14), dot(CB0[21], v14), dot(CB0[22], v14), 0.0);
    v29.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v15;
    VARYING0 = TEXCOORD0;
    VARYING1 = v16;
    VARYING2 = COLOR0;
    VARYING3 = v21;
    VARYING4 = vec4(v9, v15.w);
    VARYING5 = vec4(v11, COLOR1.z);
    VARYING6 = v28;
    VARYING7 = v29;
    VARYING8 = NORMAL.w;
}

