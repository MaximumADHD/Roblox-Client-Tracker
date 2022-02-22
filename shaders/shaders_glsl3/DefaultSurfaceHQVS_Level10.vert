#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 COLOR0;
in vec4 COLOR1;
in vec4 TEXCOORD2;
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
    vec3 v1 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v2 = int(COLOR1.x) * 3;
    int v3 = v2 + 1;
    int v4 = v2 + 2;
    float v5 = dot(CB1[v2 * 1 + 0], POSITION);
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    float v7 = dot(CB1[v4 * 1 + 0], POSITION);
    vec3 v8 = vec3(v5, v6, v7);
    float v9 = dot(CB1[v2 * 1 + 0].xyz, v0);
    float v10 = dot(CB1[v3 * 1 + 0].xyz, v0);
    float v11 = dot(CB1[v4 * 1 + 0].xyz, v0);
    vec4 v12 = vec4(0.0);
    v12.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v13 = vec4(v5, v6, v7, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v14 = ((v8 + (vec3(v9, v10, v11) * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v15 = vec4(0.0);
    v15.x = v14.x;
    vec4 v16 = v15;
    v16.y = v14.y;
    vec4 v17 = v16;
    v17.z = v14.z;
    vec4 v18 = v17;
    v18.w = 0.0;
    vec4 v19 = vec4(v5, v6, v7, 0.0);
    v19.w = COLOR1.w * 0.0039215688593685626983642578125;
    vec4 v20 = v12;
    v20.x = dot(CB1[v2 * 1 + 0].xyz, v1);
    vec4 v21 = v20;
    v21.y = dot(CB1[v3 * 1 + 0].xyz, v1);
    vec4 v22 = v21;
    v22.z = dot(CB1[v4 * 1 + 0].xyz, v1);
    vec4 v23 = vec4(v9, v10, v11, 0.0);
    v23.w = 0.0;
    gl_Position = v13;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = v18;
    VARYING4 = vec4(CB0[7].xyz - v8, v13.w);
    VARYING5 = v23;
    VARYING6 = v22;
    VARYING7 = v19;
    VARYING8 = NORMAL.w;
}

