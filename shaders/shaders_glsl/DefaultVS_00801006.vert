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
varying vec2 VARYING0;
varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec3 VARYING7;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v1 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v2 = ivec4(TEXCOORD4);
    int v3 = 3 * v2.x;
    float v4 = v1.x;
    int v5 = 3 * v2.y;
    float v6 = v1.y;
    int v7 = 3 * v2.z;
    float v8 = v1.z;
    int v9 = 3 * v2.w;
    float v10 = v1.w;
    vec4 v11 = (((CB1[v3 * 1 + 0] * v4) + (CB1[v5 * 1 + 0] * v6)) + (CB1[v7 * 1 + 0] * v8)) + (CB1[v9 * 1 + 0] * v10);
    vec4 v12 = (((CB1[(v3 + 1) * 1 + 0] * v4) + (CB1[(v5 + 1) * 1 + 0] * v6)) + (CB1[(v7 + 1) * 1 + 0] * v8)) + (CB1[(v9 + 1) * 1 + 0] * v10);
    vec4 v13 = (((CB1[(v3 + 2) * 1 + 0] * v4) + (CB1[(v5 + 2) * 1 + 0] * v6)) + (CB1[(v7 + 2) * 1 + 0] * v8)) + (CB1[(v9 + 2) * 1 + 0] * v10);
    float v14 = dot(v11, POSITION);
    float v15 = dot(v12, POSITION);
    float v16 = dot(v13, POSITION);
    vec3 v17 = vec3(v14, v15, v16);
    vec3 v18 = vec3(dot(v11.xyz, v0), dot(v12.xyz, v0), dot(v13.xyz, v0));
    vec3 v19 = CB0[11].xyz - v17;
    vec3 v20 = vec3(0.0);
    v20.z = -1.0;
    vec3 v21 = -CB0[16].xyz;
    float v22 = dot(v18, v21);
    vec4 v23 = vec4(v14, v15, v16, 1.0);
    vec4 v24 = v23 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v25 = v20;
    v25.x = 0.0;
    vec3 v26 = v25;
    v26.y = 0.0;
    vec3 v27 = ((v17 + (v18 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v28 = vec4(0.0);
    v28.x = v27.x;
    vec4 v29 = v28;
    v29.y = v27.y;
    vec4 v30 = v29;
    v30.z = v27.z;
    vec4 v31 = v30;
    v31.w = 0.0;
    float v32 = COLOR1.y * 0.50359976291656494140625;
    float v33 = clamp(v22, 0.0, 1.0);
    vec3 v34 = (CB0[15].xyz * v33) + (CB0[17].xyz * clamp(-v22, 0.0, 1.0));
    vec4 v35 = vec4(0.0);
    v35.x = v34.x;
    vec4 v36 = v35;
    v36.y = v34.y;
    vec4 v37 = v36;
    v37.z = v34.z;
    vec4 v38 = v37;
    v38.w = v33 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v32 * dot(v18, normalize(v21 + normalize(v19)))) - v32));
    vec4 v39 = vec4(dot(CB0[25], v23), dot(CB0[26], v23), dot(CB0[27], v23), 0.0);
    v39.w = 0.0;
    gl_Position = v24;
    VARYING0 = TEXCOORD0;
    VARYING1 = v26;
    VARYING2 = COLOR0;
    VARYING3 = v31;
    VARYING4 = vec4(v19, v24.w);
    VARYING5 = v38;
    VARYING6 = v39;
    VARYING7 = vec3(COLOR1.z * 0.0039215688593685626983642578125, COLOR1.w * 0.0039215688593685626983642578125, NORMAL.w * 0.0039215688593685626983642578125);
}

