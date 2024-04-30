#version 150

#extension GL_ARB_shading_language_include : require
#include <SCTextureBasis.h>
#include <SCLayerData.h>
#include <Globals.h>
#include <UnpackInfo.h>
uniform vec4 CB2[36];
uniform vec4 CB5[189];
uniform vec4 CB0[57];
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

void main()
{
    vec3 v0 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 v1 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    float v2 = v0.x;
    vec4 v3 = vec4(v2, v0.yz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v4 = v3;
    v4.z = v3.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    int v5 = int(TEXCOORD1.x);
    int v6 = int(TEXCOORD0.x);
    vec2 v7 = vec2(dot(v0, CB2[v5 * 2 + 0].xyz), dot(v0, CB2[v5 * 2 + 1].xyz)) * CB5[v6 * 3 + 0].x;
    float v8 = ((NORMAL.w * 0.0078125) - 1.0) * CB5[v6 * 3 + 0].z;
    int v9 = int(TEXCOORD1.y);
    int v10 = int(TEXCOORD0.y);
    vec2 v11 = vec2(dot(v0, CB2[v9 * 2 + 0].xyz), dot(v0, CB2[v9 * 2 + 1].xyz)) * CB5[v10 * 3 + 0].x;
    float v12 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB5[v10 * 3 + 0].z;
    int v13 = int(TEXCOORD1.z);
    int v14 = int(TEXCOORD0.z);
    vec2 v15 = vec2(dot(v0, CB2[v13 * 2 + 0].xyz), dot(v0, CB2[v13 * 2 + 1].xyz)) * CB5[v14 * 3 + 0].x;
    float v16 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB5[v14 * 3 + 0].z;
    bvec3 v17 = equal(mod(abs(POSITION.www), vec3(4.0)), vec3(1.0, 2.0, 3.0));
    bvec3 v18 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = v4;
    VARYING0 = vec4(vec3(v17.x ? vec3(1.0).x : vec3(0.0).x, v17.y ? vec3(1.0).y : vec3(0.0).y, v17.z ? vec3(1.0).z : vec3(0.0).z), (abs(POSITION.w) > 3.0) ? 0.0 : 1.0);
    VARYING1 = vec4(((v7 * sqrt(1.0 - (v8 * v8))) + (v7.yx * vec2(v8, -v8))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB5[v6 * 3 + 0].y), ((v11 * sqrt(1.0 - (v12 * v12))) + (v11.yx * vec2(v12, -v12))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB5[v10 * 3 + 0].y));
    VARYING2 = vec4(CB5[v6 * 3 + 0].w, 0.0, CB5[v10 * 3 + 0].w, 0.0);
    VARYING3 = vec4(((v15 * sqrt(1.0 - (v16 * v16))) + (v15.yx * vec2(v16, -v16))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB5[v14 * 3 + 0].y), CB5[v14 * 3 + 0].w, 0.0);
    VARYING4 = ((v0 + (v1 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING5 = vec4(v2, v0.yz, length(CB0[11].xyz - v0));
    VARYING6 = v1;
    VARYING7 = vec3(v18.x ? vec3(1.0).x : vec3(0.0).x, v18.y ? vec3(1.0).y : vec3(0.0).y, v18.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING8 = TEXCOORD0.xyz;
}

