#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <UnpackInfo.h>
uniform vec4 CB2[99];
uniform vec4 CB0[58];
uniform vec4 CB1[1];
in vec4 POSITION;
in vec4 NORMAL;
in vec4 TEXCOORD0;
in vec4 TEXCOORD1;
out vec4 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec3 VARYING4;
out vec4 VARYING5;
out vec3 VARYING6;
out vec3 VARYING7;
out vec3 VARYING8;
out vec4 VARYING9;

void main()
{
    vec3 v0 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 v1 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v2 = vec4(v0, 1.0);
    vec4 v3 = v2 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v4 = v3;
    v4.z = v3.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 v5 = CB0[11].xyz - v0;
    int v6 = int(TEXCOORD1.x);
    int v7 = 36 + int(TEXCOORD0.x);
    vec2 v8 = vec2(dot(v0, CB2[v6 * 1 + 0].xyz), dot(v0, CB2[(18 + v6) * 1 + 0].xyz)) * CB2[v7 * 1 + 0].x;
    float v9 = ((NORMAL.w * 0.0078125) - 1.0) * CB2[v7 * 1 + 0].z;
    int v10 = int(TEXCOORD1.y);
    int v11 = 36 + int(TEXCOORD0.y);
    vec2 v12 = vec2(dot(v0, CB2[v10 * 1 + 0].xyz), dot(v0, CB2[(18 + v10) * 1 + 0].xyz)) * CB2[v11 * 1 + 0].x;
    float v13 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB2[v11 * 1 + 0].z;
    int v14 = int(TEXCOORD1.z);
    int v15 = 36 + int(TEXCOORD0.z);
    vec2 v16 = vec2(dot(v0, CB2[v14 * 1 + 0].xyz), dot(v0, CB2[(18 + v14) * 1 + 0].xyz)) * CB2[v15 * 1 + 0].x;
    float v17 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB2[v15 * 1 + 0].z;
    bvec3 v18 = equal(mod(abs(POSITION.www), vec3(4.0)), vec3(1.0, 2.0, 3.0));
    vec3 v19 = vec3(v18.x ? vec3(1.0).x : vec3(0.0).x, v18.y ? vec3(1.0).y : vec3(0.0).y, v18.z ? vec3(1.0).z : vec3(0.0).z);
    vec3 v20 = vec3(0.0);
    v20.x = float((TEXCOORD0.x == TEXCOORD0.y) || (TEXCOORD0.x == TEXCOORD0.z));
    vec3 v21 = v20;
    v21.y = float((TEXCOORD0.y == TEXCOORD0.x) || (TEXCOORD0.y == TEXCOORD0.z));
    vec3 v22 = v21;
    v22.z = float((TEXCOORD0.z == TEXCOORD0.x) || (TEXCOORD0.z == TEXCOORD0.y));
    vec4 v23 = vec4(0.0);
    v23.x = TEXCOORD0.x;
    vec4 v24 = v23;
    v24.y = TEXCOORD0.y;
    vec4 v25 = v24;
    v25.z = TEXCOORD0.z;
    bvec3 v26 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    vec4 v27 = v25;
    v27.w = (dot(v22, v19) * 20.0) - 19.0;
    gl_Position = v4;
    VARYING0 = vec4(v19, (abs(POSITION.w) > 3.0) ? 0.0 : 1.0);
    VARYING1 = vec4(((v8 * sqrt(1.0 - (v9 * v9))) + (v8.yx * vec2(v9, -v9))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[v7 * 1 + 0].y), ((v12 * sqrt(1.0 - (v13 * v13))) + (v12.yx * vec2(v13, -v13))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[v11 * 1 + 0].y));
    VARYING2 = vec4(CB2[v7 * 1 + 0].w, 0.0, CB2[v11 * 1 + 0].w, 0.0);
    VARYING3 = vec4(((v16 * sqrt(1.0 - (v17 * v17))) + (v16.yx * vec2(v17, -v17))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[v15 * 1 + 0].y), CB2[v15 * 1 + 0].w, 0.0);
    VARYING4 = ((v0 + (v1 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING5 = vec4(dot(CB0[25], v2), dot(CB0[26], v2), dot(CB0[27], v2), length(v5));
    VARYING6 = v1;
    VARYING7 = vec3(v26.x ? vec3(1.0).x : vec3(0.0).x, v26.y ? vec3(1.0).y : vec3(0.0).y, v26.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING8 = v5;
    VARYING9 = v27;
}

