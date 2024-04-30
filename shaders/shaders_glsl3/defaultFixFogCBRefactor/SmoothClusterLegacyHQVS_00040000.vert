#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SCTextureBasis.h>
#include <SCLayerData.h>
uniform vec4 CB0[57];
uniform vec4 CB2[36];
uniform vec4 CB5[189];
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
out vec3 VARYING9;

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
    int v7 = int(TEXCOORD0.x);
    vec2 v8 = vec2(dot(v0, CB2[v6 * 2 + 0].xyz), dot(v0, CB2[v6 * 2 + 1].xyz)) * CB5[v7 * 3 + 0].x;
    float v9 = ((NORMAL.w * 0.0078125) - 1.0) * CB5[v7 * 3 + 0].z;
    int v10 = int(TEXCOORD1.y);
    int v11 = int(TEXCOORD0.y);
    vec2 v12 = vec2(dot(v0, CB2[v10 * 2 + 0].xyz), dot(v0, CB2[v10 * 2 + 1].xyz)) * CB5[v11 * 3 + 0].x;
    float v13 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB5[v11 * 3 + 0].z;
    int v14 = int(TEXCOORD1.z);
    int v15 = int(TEXCOORD0.z);
    vec2 v16 = vec2(dot(v0, CB2[v14 * 2 + 0].xyz), dot(v0, CB2[v14 * 2 + 1].xyz)) * CB5[v15 * 3 + 0].x;
    float v17 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB5[v15 * 3 + 0].z;
    vec4 v18 = vec4(0.0);
    v18.w = (abs(POSITION.w) > 3.0) ? 0.0 : 1.0;
    bvec3 v19 = equal(mod(abs(POSITION.www), vec3(4.0)), vec3(1.0, 2.0, 3.0));
    vec3 v20 = vec3(v19.x ? vec3(1.0).x : vec3(0.0).x, v19.y ? vec3(1.0).y : vec3(0.0).y, v19.z ? vec3(1.0).z : vec3(0.0).z);
    vec4 v21 = v18;
    v21.x = v20.x;
    vec4 v22 = v21;
    v22.y = v20.y;
    vec4 v23 = v22;
    v23.z = v20.z;
    bvec3 v24 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = v4;
    VARYING0 = v23;
    VARYING1 = vec4(((v8 * sqrt(1.0 - (v9 * v9))) + (v8.yx * vec2(v9, -v9))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB5[v7 * 3 + 0].y), ((v12 * sqrt(1.0 - (v13 * v13))) + (v12.yx * vec2(v13, -v13))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB5[v11 * 3 + 0].y));
    VARYING2 = vec4(CB5[v7 * 3 + 0].w, 0.0, CB5[v11 * 3 + 0].w, 0.0);
    VARYING3 = vec4(((v16 * sqrt(1.0 - (v17 * v17))) + (v16.yx * vec2(v17, -v17))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB5[v15 * 3 + 0].y), CB5[v15 * 3 + 0].w, 0.0);
    VARYING4 = ((v0 + (v1 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING5 = vec4(dot(CB0[25], v2), dot(CB0[26], v2), dot(CB0[27], v2), length(v5));
    VARYING6 = v1;
    VARYING7 = vec3(v24.x ? vec3(1.0).x : vec3(0.0).x, v24.y ? vec3(1.0).y : vec3(0.0).y, v24.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING8 = v5;
    VARYING9 = TEXCOORD0.xyz;
}

