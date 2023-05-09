#version 150

#extension GL_ARB_shading_language_include : require
#include <AtlasParams.h>
uniform vec4 CB2[99];
uniform vec4 CB6[2];
uniform vec4 unpackInfo[1];
in vec4 POSITION;
in vec4 NORMAL;
in vec4 TEXCOORD0;
in vec4 TEXCOORD1;
in vec3 TEXCOORD2;
out vec4 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec3 VARYING4;
out vec3 VARYING5;
out vec4 VARYING6;

void main()
{
    vec3 v0 = (POSITION.xyz * unpackInfo[0].w) + unpackInfo[0].xyz;
    int v1 = int(TEXCOORD1.x);
    int v2 = 36 + int(TEXCOORD0.x);
    vec2 v3 = vec2(dot(v0, CB2[v1 * 1 + 0].xyz), dot(v0, CB2[(18 + v1) * 1 + 0].xyz)) * CB2[v2 * 1 + 0].x;
    float v4 = ((NORMAL.w * 0.0078125) - 1.0) * CB2[v2 * 1 + 0].z;
    int v5 = int(TEXCOORD1.y);
    int v6 = 36 + int(TEXCOORD0.y);
    vec2 v7 = vec2(dot(v0, CB2[v5 * 1 + 0].xyz), dot(v0, CB2[(18 + v5) * 1 + 0].xyz)) * CB2[v6 * 1 + 0].x;
    float v8 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB2[v6 * 1 + 0].z;
    int v9 = int(TEXCOORD1.z);
    int v10 = 36 + int(TEXCOORD0.z);
    vec2 v11 = vec2(dot(v0, CB2[v9 * 1 + 0].xyz), dot(v0, CB2[(18 + v9) * 1 + 0].xyz)) * CB2[v10 * 1 + 0].x;
    float v12 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB2[v10 * 1 + 0].z;
    bvec3 v13 = equal(mod(abs(POSITION.www), vec3(4.0)), vec3(1.0, 2.0, 3.0));
    vec3 v14 = vec3(v13.x ? vec3(1.0).x : vec3(0.0).x, v13.y ? vec3(1.0).y : vec3(0.0).y, v13.z ? vec3(1.0).z : vec3(0.0).z);
    vec3 v15 = vec3(0.0);
    v15.x = float((TEXCOORD0.x == TEXCOORD0.y) || (TEXCOORD0.x == TEXCOORD0.z));
    vec3 v16 = v15;
    v16.y = float((TEXCOORD0.y == TEXCOORD0.x) || (TEXCOORD0.y == TEXCOORD0.z));
    vec3 v17 = v16;
    v17.z = float((TEXCOORD0.z == TEXCOORD0.x) || (TEXCOORD0.z == TEXCOORD0.y));
    vec4 v18 = vec4(0.0);
    v18.x = TEXCOORD0.x;
    vec4 v19 = v18;
    v19.y = TEXCOORD0.y;
    vec4 v20 = v19;
    v20.z = TEXCOORD0.z;
    bvec3 v21 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    vec4 v22 = v20;
    v22.w = (dot(v17, v14) * 20.0) - 19.0;
    gl_Position = vec4((((((TEXCOORD2.xy * CB6[0].zw) + CB6[0].xy) + vec2(0.5)) * CB6[1].zw) * vec2(2.0, -2.0)) + vec2(-1.0, 1.0), 0.5, 1.0);
    VARYING0 = vec4(v14, (abs(POSITION.w) > 3.0) ? 0.0 : 1.0);
    VARYING1 = vec4(((v3 * sqrt(1.0 - (v4 * v4))) + (v3.yx * vec2(v4, -v4))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[v2 * 1 + 0].y), ((v7 * sqrt(1.0 - (v8 * v8))) + (v7.yx * vec2(v8, -v8))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[v6 * 1 + 0].y));
    VARYING2 = vec4(CB2[v2 * 1 + 0].w, 0.0, CB2[v6 * 1 + 0].w, 0.0);
    VARYING3 = vec4(((v11 * sqrt(1.0 - (v12 * v12))) + (v11.yx * vec2(v12, -v12))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[v10 * 1 + 0].y), CB2[v10 * 1 + 0].w, 0.0);
    VARYING4 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    VARYING5 = vec3(v21.x ? vec3(1.0).x : vec3(0.0).x, v21.y ? vec3(1.0).y : vec3(0.0).y, v21.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING6 = v22;
}

