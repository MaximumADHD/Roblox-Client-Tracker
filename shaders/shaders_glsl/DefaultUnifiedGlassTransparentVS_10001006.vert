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
varying vec4 VARYING7;

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
    float v18 = dot(v11.xyz, v0);
    float v19 = dot(v12.xyz, v0);
    float v20 = dot(v13.xyz, v0);
    vec3 v21 = vec3(v18, v19, v20);
    vec3 v22 = CB0[11].xyz - v17;
    vec3 v23 = normalize(v22);
    vec2 v24 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v25 = vec3(0.0);
    v25.z = NORMAL.w - 1.0;
    vec3 v26 = -CB0[16].xyz;
    float v27 = dot(v21, v26);
    vec4 v28 = vec4(v14, v15, v16, 1.0);
    vec4 v29 = v28 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v30 = v25;
    v30.x = v24.x;
    vec3 v31 = v30;
    v31.y = v24.y;
    vec3 v32 = ((v17 + (v21 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v33 = vec4(0.0);
    v33.x = v32.x;
    vec4 v34 = v33;
    v34.y = v32.y;
    vec4 v35 = v34;
    v35.z = v32.z;
    vec4 v36 = v35;
    v36.w = 0.0;
    float v37 = COLOR0.w * 2.0;
    float v38 = clamp(v37 - 1.0, 0.0, 1.0);
    float v39 = (clamp(2.0 - (dot(v21, v23) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v37, 0.0, 1.0);
    vec4 v40 = COLOR0;
    v40.w = mix(v38, 1.0, v39);
    vec4 v41 = vec4(dot(CB0[25], v28), dot(CB0[26], v28), dot(CB0[27], v28), 0.0);
    v41.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v38, 1.0, v39);
    float v42 = COLOR1.y * 0.50359976291656494140625;
    float v43 = clamp(v27, 0.0, 1.0);
    vec3 v44 = (CB0[15].xyz * v43) + (CB0[17].xyz * clamp(-v27, 0.0, 1.0));
    vec4 v45 = vec4(0.0);
    v45.x = v44.x;
    vec4 v46 = v45;
    v46.y = v44.y;
    vec4 v47 = v46;
    v47.z = v44.z;
    vec4 v48 = v47;
    v48.w = v43 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v42 * dot(v21, normalize(v26 + v23))) - v42));
    gl_Position = v29;
    VARYING0 = TEXCOORD0;
    VARYING1 = v31;
    VARYING2 = v40;
    VARYING3 = v36;
    VARYING4 = vec4(v22, v29.w);
    VARYING5 = vec4(v18, v19, v20, COLOR1.z);
    VARYING6 = v48;
    VARYING7 = v41;
}

