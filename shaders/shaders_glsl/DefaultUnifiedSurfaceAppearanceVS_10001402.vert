#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[61];
uniform vec4 CB1[216];
uniform vec4 CB3[1];
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
varying vec3 VARYING7;

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
    vec3 v10 = normalize(v9);
    vec3 v11 = v8 * ((dot(v8, v10) > 0.0) ? 1.0 : (-1.0));
    vec3 v12 = vec3(0.0);
    v12.z = -1.0;
    vec3 v13 = -CB0[16].xyz;
    float v14 = dot(v11, v13);
    vec4 v15 = vec4(v4, v5, v6, 1.0);
    vec4 v16 = v15 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v17 = v12;
    v17.x = 0.0;
    vec3 v18 = v17;
    v18.y = 0.0;
    vec3 v19 = ((v7 + (v11 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v20 = vec4(0.0);
    v20.x = v19.x;
    vec4 v21 = v20;
    v21.y = v19.y;
    vec4 v22 = v21;
    v22.z = v19.z;
    vec4 v23 = v22;
    v23.w = 0.0;
    float v24 = CB3[0].z * 0.50359976291656494140625;
    float v25 = clamp(v14, 0.0, 1.0);
    vec3 v26 = (CB0[15].xyz * v25) + (CB0[17].xyz * clamp(-v14, 0.0, 1.0));
    vec4 v27 = vec4(0.0);
    v27.x = v26.x;
    vec4 v28 = v27;
    v28.y = v26.y;
    vec4 v29 = v28;
    v29.z = v26.z;
    vec4 v30 = v29;
    v30.w = v25 * ((CB3[0].z * 0.055555999279022216796875) * exp2((v24 * dot(v11, normalize(v13 + v10))) - v24));
    vec4 v31 = vec4(dot(CB0[25], v15), dot(CB0[26], v15), dot(CB0[27], v15), 0.0);
    v31.w = 0.0;
    gl_Position = v16;
    VARYING0 = TEXCOORD0;
    VARYING1 = v18;
    VARYING2 = COLOR0;
    VARYING3 = v23;
    VARYING4 = vec4(v9, v16.w);
    VARYING5 = v30;
    VARYING6 = v31;
    VARYING7 = vec3(COLOR1.z * 0.0039215688593685626983642578125, COLOR1.w * 0.0039215688593685626983642578125, NORMAL.w * 0.0039215688593685626983642578125);
}

