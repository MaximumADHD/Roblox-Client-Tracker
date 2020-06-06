#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
uniform vec4 CB2[74];
uniform vec4 CB1[1];
uniform vec4 CB4[36];
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
out vec4 VARYING8;

void main()
{
    vec3 v0 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 v1 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    float v2 = v0.x;
    vec4 v3 = vec4(v2, v0.yz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v4 = v3;
    v4.z = v3.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    int v5 = int(TEXCOORD1.x);
    int v6 = 36 + int(TEXCOORD0.x);
    vec2 v7 = vec2(dot(v0, CB2[v5 * 1 + 0].xyz), dot(v0, CB2[(18 + v5) * 1 + 0].xyz)) * CB2[v6 * 1 + 0].x;
    float v8 = ((NORMAL.w * 0.0078125) - 1.0) * CB2[v6 * 1 + 0].z;
    int v9 = int(TEXCOORD1.y);
    int v10 = 36 + int(TEXCOORD0.y);
    vec2 v11 = vec2(dot(v0, CB2[v9 * 1 + 0].xyz), dot(v0, CB2[(18 + v9) * 1 + 0].xyz)) * CB2[v10 * 1 + 0].x;
    float v12 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB2[v10 * 1 + 0].z;
    int v13 = int(TEXCOORD1.z);
    int v14 = 36 + int(TEXCOORD0.z);
    vec2 v15 = vec2(dot(v0, CB2[v13 * 1 + 0].xyz), dot(v0, CB2[(18 + v13) * 1 + 0].xyz)) * CB2[v14 * 1 + 0].x;
    float v16 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB2[v14 * 1 + 0].z;
    vec4 v17 = vec4(0.0);
    v17.w = 1.0;
    bvec3 v18 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    vec3 v19 = vec3(v18.x ? vec3(1.0).x : vec3(0.0).x, v18.y ? vec3(1.0).y : vec3(0.0).y, v18.z ? vec3(1.0).z : vec3(0.0).z);
    bvec3 v20 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = v4;
    VARYING0 = vec4(v19.x, v19.y, v19.z, v17.w);
    VARYING1 = vec4(((v7 * sqrt(1.0 - (v8 * v8))) + (v7.yx * vec2(v8, -v8))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[v6 * 1 + 0].y), ((v11 * sqrt(1.0 - (v12 * v12))) + (v11.yx * vec2(v12, -v12))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[v10 * 1 + 0].y));
    VARYING2 = vec4(TEXCOORD0.x, 0.0, TEXCOORD0.y, 0.0);
    VARYING3 = vec4(((v15 * sqrt(1.0 - (v16 * v16))) + (v15.yx * vec2(v16, -v16))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[v14 * 1 + 0].y), TEXCOORD0.z, 0.0);
    VARYING4 = ((v0 + (v1 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING5 = vec4(v2, v0.yz, length(CB0[7].xyz - v0));
    VARYING6 = v1;
    VARYING7 = vec3(v20.x ? vec3(1.0).x : vec3(0.0).x, v20.y ? vec3(1.0).y : vec3(0.0).y, v20.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING8 = ((CB4[int(TEXCOORD0.x + 0.5) * 1 + 0] * v19.x) + (CB4[int(TEXCOORD0.y + 0.5) * 1 + 0] * v19.y)) + (CB4[int(TEXCOORD0.z + 0.5) * 1 + 0] * v19.z);
}

