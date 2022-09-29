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
attribute vec4 TEXCOORD4;
attribute vec4 TEXCOORD5;
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
    vec4 v1 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v2 = ivec4(TEXCOORD4) * ivec4(3);
    float v3 = v1.x;
    float v4 = v1.y;
    float v5 = v1.z;
    float v6 = v1.w;
    vec4 v7 = (((CB1[v2.x * 1 + 0] * v3) + (CB1[v2.y * 1 + 0] * v4)) + (CB1[v2.z * 1 + 0] * v5)) + (CB1[v2.w * 1 + 0] * v6);
    ivec4 v8 = v2 + ivec4(1);
    vec4 v9 = (((CB1[v8.x * 1 + 0] * v3) + (CB1[v8.y * 1 + 0] * v4)) + (CB1[v8.z * 1 + 0] * v5)) + (CB1[v8.w * 1 + 0] * v6);
    ivec4 v10 = v2 + ivec4(2);
    vec4 v11 = (((CB1[v10.x * 1 + 0] * v3) + (CB1[v10.y * 1 + 0] * v4)) + (CB1[v10.z * 1 + 0] * v5)) + (CB1[v10.w * 1 + 0] * v6);
    float v12 = dot(v7, POSITION);
    float v13 = dot(v9, POSITION);
    float v14 = dot(v11, POSITION);
    vec3 v15 = vec3(v12, v13, v14);
    float v16 = dot(v7.xyz, v0);
    float v17 = dot(v9.xyz, v0);
    float v18 = dot(v11.xyz, v0);
    vec3 v19 = vec3(v16, v17, v18);
    vec3 v20 = CB0[11].xyz - v15;
    vec3 v21 = -CB0[16].xyz;
    float v22 = dot(v19, v21);
    vec4 v23 = vec4(v12, v13, v14, 1.0);
    vec4 v24 = v23 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 v25 = TEXCOORD1;
    v25.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    vec3 v26 = ((v15 + (v19 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v27 = vec4(0.0);
    v27.x = v26.x;
    vec4 v28 = v27;
    v28.y = v26.y;
    vec4 v29 = v28;
    v29.z = v26.z;
    vec4 v30 = v29;
    v30.w = 0.0;
    float v31 = COLOR1.y * 0.50359570980072021484375;
    float v32 = clamp(v22, 0.0, 1.0);
    vec3 v33 = (CB0[15].xyz * v32) + (CB0[17].xyz * clamp(-v22, 0.0, 1.0));
    vec4 v34 = vec4(0.0);
    v34.x = v33.x;
    vec4 v35 = v34;
    v35.y = v33.y;
    vec4 v36 = v35;
    v36.z = v33.z;
    vec4 v37 = v36;
    v37.w = (v32 * CB0[28].w) * (COLOR1.y * exp2((v31 * dot(v19, normalize(v21 + normalize(v20)))) - v31));
    vec4 v38 = vec4(dot(CB0[25], v23), dot(CB0[26], v23), dot(CB0[27], v23), 0.0);
    v38.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v24;
    VARYING0 = TEXCOORD0;
    VARYING1 = v25;
    VARYING2 = COLOR0;
    VARYING3 = v30;
    VARYING4 = vec4(v20, v24.w);
    VARYING5 = vec4(v16, v17, v18, COLOR1.z);
    VARYING6 = v37;
    VARYING7 = v38;
    VARYING8 = NORMAL.w;
}

