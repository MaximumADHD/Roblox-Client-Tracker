#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <FastClusterInstanceData.h>
uniform vec4 CB0[61];
uniform vec4 CB11[512];
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec4 COLOR0;
in vec4 COLOR1;
in vec4 TEXCOORD2;
out vec2 VARYING0;
out vec3 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v2 = int(COLOR1.x);
    int v3 = int(CB11[v2 * 2 + 1].w) * 3;
    int v4 = v3 + 1;
    int v5 = v3 + 2;
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    float v7 = dot(CB1[v4 * 1 + 0], POSITION);
    float v8 = dot(CB1[v5 * 1 + 0], POSITION);
    vec3 v9 = vec3(v6, v7, v8);
    float v10 = dot(CB1[v3 * 1 + 0].xyz, v0);
    float v11 = dot(CB1[v4 * 1 + 0].xyz, v0);
    float v12 = dot(CB1[v5 * 1 + 0].xyz, v0);
    vec2 v13 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v14 = vec3(0.0);
    v14.z = NORMAL.w - 1.0;
    vec4 v15 = vec4(0.0);
    v15.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v16 = vec4(v6, v7, v8, 1.0);
    vec4 v17 = v16 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v18 = v14;
    v18.x = v13.x;
    vec3 v19 = v18;
    v19.y = v13.y;
    vec3 v20 = ((v9 + (vec3(v10, v11, v12) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v21 = vec4(0.0);
    v21.x = v20.x;
    vec4 v22 = v21;
    v22.y = v20.y;
    vec4 v23 = v22;
    v23.z = v20.z;
    vec4 v24 = v23;
    v24.w = 0.0;
    vec4 v25 = vec4(dot(CB0[25], v16), dot(CB0[26], v16), dot(CB0[27], v16), 0.0);
    v25.w = COLOR1.w * 0.0039215688593685626983642578125;
    vec4 v26 = v15;
    v26.x = dot(CB1[v3 * 1 + 0].xyz, v1);
    vec4 v27 = v26;
    v27.y = dot(CB1[v4 * 1 + 0].xyz, v1);
    vec4 v28 = v27;
    v28.z = dot(CB1[v5 * 1 + 0].xyz, v1);
    vec4 v29 = vec4(v10, v11, v12, 0.0);
    v29.w = 0.0;
    gl_Position = v17;
    VARYING0 = TEXCOORD0;
    VARYING1 = v19;
    VARYING2 = COLOR0 * CB11[v2 * 2 + 0];
    VARYING3 = v24;
    VARYING4 = vec4(CB0[11].xyz - v9, v17.w);
    VARYING5 = v29;
    VARYING6 = v28;
    VARYING7 = v25;
}

