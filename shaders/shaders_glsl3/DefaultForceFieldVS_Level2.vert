#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 COLOR0;
in vec4 COLOR1;
out vec2 VARYING0;
out vec2 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out float VARYING8;

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
    vec3 v12 = -CB0[11].xyz;
    float v13 = dot(v11, v12);
    vec3 v14 = CB0[7].xyz - v7;
    vec4 v15 = vec4(v4, v5, v6, 1.0);
    vec4 v16 = v15 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 v17 = TEXCOORD1;
    v17.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    vec3 v18 = ((v7 + (v11 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v19 = vec4(v18.x, v18.y, v18.z, vec4(0.0).w);
    v19.w = 0.0;
    float v20 = COLOR1.y * 0.50359570980072021484375;
    float v21 = clamp(v13, 0.0, 1.0);
    vec3 v22 = (CB0[10].xyz * v21) + (CB0[12].xyz * clamp(-v13, 0.0, 1.0));
    vec4 v23 = vec4(v22.x, v22.y, v22.z, vec4(0.0).w);
    v23.w = (v21 * CB0[23].w) * (COLOR1.y * exp2((v20 * dot(v11, normalize(v12 + normalize(v14)))) - v20));
    vec4 v24 = vec4(dot(CB0[20], v15), dot(CB0[21], v15), dot(CB0[22], v15), 0.0);
    v24.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v16;
    VARYING0 = TEXCOORD0;
    VARYING1 = v17;
    VARYING2 = COLOR0;
    VARYING3 = v19;
    VARYING4 = vec4(v14, v16.w);
    VARYING5 = vec4(v8, v9, v10, COLOR1.z);
    VARYING6 = v23;
    VARYING7 = v24;
    VARYING8 = NORMAL.w;
}

