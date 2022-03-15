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
    float v8 = dot(CB1[v1 * 1 + 0].xyz, v0);
    float v9 = dot(CB1[v2 * 1 + 0].xyz, v0);
    float v10 = dot(CB1[v3 * 1 + 0].xyz, v0);
    vec3 v11 = vec3(v8, v9, v10);
    vec3 v12 = CB0[7].xyz - v7;
    vec3 v13 = -CB0[11].xyz;
    float v14 = dot(v11, v13);
    vec4 v15 = vec4(v4, v5, v6, 1.0);
    vec4 v16 = v15 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v17 = ((v7 + (v11 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v18 = vec4(0.0);
    v18.x = v17.x;
    vec4 v19 = v18;
    v19.y = v17.y;
    vec4 v20 = v19;
    v20.z = v17.z;
    vec4 v21 = v20;
    v21.w = 0.0;
    vec4 v22 = vec4(v12, v16.w);
    float v23 = COLOR0.w * 2.0;
    float v24 = clamp(v23 - 1.0, 0.0, 1.0);
    float v25 = (clamp(2.0 - (dot(v11, normalize(v22.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v23, 0.0, 1.0);
    vec4 v26 = COLOR0;
    v26.w = mix(v24, 1.0, v25);
    vec4 v27 = vec4(dot(CB0[20], v15), dot(CB0[21], v15), dot(CB0[22], v15), 0.0);
    v27.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v24, 1.0, v25);
    float v28 = COLOR1.y * 0.50359570980072021484375;
    float v29 = clamp(v14, 0.0, 1.0);
    vec3 v30 = (CB0[10].xyz * v29) + (CB0[12].xyz * clamp(-v14, 0.0, 1.0));
    vec4 v31 = vec4(0.0);
    v31.x = v30.x;
    vec4 v32 = v31;
    v32.y = v30.y;
    vec4 v33 = v32;
    v33.z = v30.z;
    vec4 v34 = v33;
    v34.w = (v29 * CB0[23].w) * (COLOR1.y * exp2((v28 * dot(v11, normalize(v13 + normalize(v12)))) - v28));
    gl_Position = v16;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = v26;
    VARYING3 = v21;
    VARYING4 = v22;
    VARYING5 = vec4(v8, v9, v10, COLOR1.z);
    VARYING6 = v34;
    VARYING7 = v27;
    VARYING8 = NORMAL.w;
}

