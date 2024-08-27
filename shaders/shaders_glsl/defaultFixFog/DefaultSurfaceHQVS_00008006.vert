#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB1[216];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
attribute vec4 TEXCOORD4;
attribute vec4 TEXCOORD5;
attribute vec4 TEXCOORD2;
varying vec2 VARYING0;
varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying vec3 VARYING8;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v2 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v3 = ivec4(TEXCOORD4);
    int v4 = 3 * v3.x;
    float v5 = v2.x;
    int v6 = 3 * v3.y;
    float v7 = v2.y;
    int v8 = 3 * v3.z;
    float v9 = v2.z;
    int v10 = 3 * v3.w;
    float v11 = v2.w;
    vec4 v12 = (((CB1[v4 * 1 + 0] * v5) + (CB1[v6 * 1 + 0] * v7)) + (CB1[v8 * 1 + 0] * v9)) + (CB1[v10 * 1 + 0] * v11);
    vec4 v13 = (((CB1[(v4 + 1) * 1 + 0] * v5) + (CB1[(v6 + 1) * 1 + 0] * v7)) + (CB1[(v8 + 1) * 1 + 0] * v9)) + (CB1[(v10 + 1) * 1 + 0] * v11);
    vec4 v14 = (((CB1[(v4 + 2) * 1 + 0] * v5) + (CB1[(v6 + 2) * 1 + 0] * v7)) + (CB1[(v8 + 2) * 1 + 0] * v9)) + (CB1[(v10 + 2) * 1 + 0] * v11);
    float v15 = dot(v12, POSITION);
    float v16 = dot(v13, POSITION);
    float v17 = dot(v14, POSITION);
    vec3 v18 = vec3(v15, v16, v17);
    vec3 v19 = v12.xyz;
    float v20 = dot(v19, v0);
    vec3 v21 = v13.xyz;
    float v22 = dot(v21, v0);
    vec3 v23 = v14.xyz;
    float v24 = dot(v23, v0);
    vec3 v25 = vec3(0.0);
    v25.z = -1.0;
    vec4 v26 = vec4(0.0);
    v26.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v27 = vec4(v15, v16, v17, 1.0);
    vec4 v28 = v27 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v29 = v25;
    v29.x = 0.0;
    vec3 v30 = v29;
    v30.y = 0.0;
    vec3 v31 = ((v18 + (vec3(v20, v22, v24) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v32 = vec4(0.0);
    v32.x = v31.x;
    vec4 v33 = v32;
    v33.y = v31.y;
    vec4 v34 = v33;
    v34.z = v31.z;
    vec4 v35 = v34;
    v35.w = 0.0;
    vec4 v36 = vec4(dot(CB0[25], v27), dot(CB0[26], v27), dot(CB0[27], v27), 0.0);
    v36.w = 0.0;
    vec4 v37 = v26;
    v37.x = dot(v19, v1);
    vec4 v38 = v37;
    v38.y = dot(v21, v1);
    vec4 v39 = v38;
    v39.z = dot(v23, v1);
    vec4 v40 = vec4(v20, v22, v24, 0.0);
    v40.w = 0.0;
    gl_Position = v28;
    VARYING0 = TEXCOORD0;
    VARYING1 = v30;
    VARYING2 = COLOR0;
    VARYING3 = v35;
    VARYING4 = vec4(CB0[11].xyz - v18, v28.w);
    VARYING5 = v40;
    VARYING6 = v39;
    VARYING7 = v36;
    VARYING8 = vec3(COLOR1.z * 0.0039215688593685626983642578125, COLOR1.w * 0.0039215688593685626983642578125, NORMAL.w * 0.0039215688593685626983642578125);
}

