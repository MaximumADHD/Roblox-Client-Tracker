#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform vec4 CB1[216];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
varying vec2 VARYING0;
varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

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
    vec3 v9 = CB0[11].xyz - v7;
    vec2 v10 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v11 = vec3(0.0);
    v11.z = NORMAL.w - 1.0;
    vec3 v12 = -CB0[16].xyz;
    float v13 = dot(v8, v12);
    vec4 v14 = vec4(v4, v5, v6, 1.0);
    vec4 v15 = v14 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v16 = v11;
    v16.x = v10.x;
    vec3 v17 = v16;
    v17.y = v10.y;
    vec3 v18 = ((v7 + (v8 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v19 = vec4(0.0);
    v19.x = v18.x;
    vec4 v20 = v19;
    v20.y = v18.y;
    vec4 v21 = v20;
    v21.z = v18.z;
    vec4 v22 = v21;
    v22.w = 0.0;
    float v23 = COLOR1.y * 0.50359976291656494140625;
    float v24 = clamp(v13, 0.0, 1.0);
    vec3 v25 = (CB0[15].xyz * v24) + (CB0[17].xyz * clamp(-v13, 0.0, 1.0));
    vec4 v26 = vec4(0.0);
    v26.x = v25.x;
    vec4 v27 = v26;
    v27.y = v25.y;
    vec4 v28 = v27;
    v28.z = v25.z;
    vec4 v29 = v28;
    v29.w = v24 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v23 * dot(v8, normalize(v12 + normalize(v9)))) - v23));
    vec4 v30 = vec4(dot(CB0[25], v14), dot(CB0[26], v14), dot(CB0[27], v14), 0.0);
    v30.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v15;
    VARYING0 = TEXCOORD0;
    VARYING1 = v17;
    VARYING2 = COLOR0;
    VARYING3 = v22;
    VARYING4 = vec4(v9, v15.w);
    VARYING5 = v29;
    VARYING6 = v30;
}

