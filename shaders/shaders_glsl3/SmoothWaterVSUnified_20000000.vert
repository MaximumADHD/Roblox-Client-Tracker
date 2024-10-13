#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[58];
uniform vec4 CB3[3];
uniform vec4 CB2[74];
uniform vec4 CB1[1];
in vec4 POSITION;
in vec4 NORMAL;
in vec4 TEXCOORD0;
in vec4 TEXCOORD1;
out vec4 VARYING0;
out vec3 VARYING1;
out vec2 VARYING2;
out vec2 VARYING3;
out vec2 VARYING4;
out vec3 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out vec4 VARYING8;

void main()
{
    vec3 v0 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 v1 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    bvec3 v2 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    vec3 v3 = vec3(v2.x ? vec3(1.0).x : vec3(0.0).x, v2.y ? vec3(1.0).y : vec3(0.0).y, v2.z ? vec3(1.0).z : vec3(0.0).z);
    float v4 = dot(v3, TEXCOORD0.xyz) * 0.0039215688593685626983642578125;
    float v5 = v0.z;
    float v6 = v0.x;
    float v7 = v0.y + (((sin(((v5 - v6) * CB3[0].x) - CB3[0].y) + sin(((v5 + v6) * CB3[0].x) + CB3[0].y)) * CB3[0].z) * (v4 * clamp(1.0 - (dot(v0 - CB0[11].xyz, -CB0[10].xyz) * CB0[28].y), 0.0, 1.0)));
    vec3 v8 = v0;
    v8.y = v7;
    vec4 v9 = vec4(v0.x, v7, v0.z, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v10 = v9;
    v10.z = v9.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 v11 = CB0[11].xyz - v8;
    int v12 = int(TEXCOORD1.x);
    int v13 = int(TEXCOORD1.y);
    int v14 = int(TEXCOORD1.z);
    vec4 v15 = vec4(0.0);
    v15.x = v3.x;
    vec4 v16 = v15;
    v16.y = v3.y;
    vec4 v17 = v16;
    v17.z = v3.z;
    vec4 v18 = v17;
    v18.w = v4;
    vec4 v19 = vec4(0.0);
    v19.x = v1.x;
    vec4 v20 = v19;
    v20.y = v1.y;
    vec4 v21 = v20;
    v21.z = v1.z;
    vec4 v22 = v21;
    v22.w = clamp(exp2((CB0[18].z * length(v11)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    float v23 = v9.w;
    bvec3 v24 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    vec2 v25 = (v10.xy * 0.5) + vec2(0.5 * v23);
    vec4 v26 = v10;
    v26.x = v25.x;
    vec4 v27 = v26;
    v27.y = v25.y;
    gl_Position = v10;
    VARYING0 = v18;
    VARYING1 = vec3(v24.x ? vec3(1.0).x : vec3(0.0).x, v24.y ? vec3(1.0).y : vec3(0.0).y, v24.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING2 = (vec2(dot(v8, CB2[v12 * 1 + 0].xyz), dot(v8, CB2[(18 + v12) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING3 = (vec2(dot(v8, CB2[v13 * 1 + 0].xyz), dot(v8, CB2[(18 + v13) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING4 = (vec2(dot(v8, CB2[v14 * 1 + 0].xyz), dot(v8, CB2[(18 + v14) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING5 = ((v8 + (v1 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING6 = v22;
    VARYING7 = vec4(v11, v23);
    VARYING8 = v27;
}

