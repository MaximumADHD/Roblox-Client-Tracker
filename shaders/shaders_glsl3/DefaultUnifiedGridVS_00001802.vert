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
    int v1 = int(COLOR1.x);
    int v2 = int(CB11[v1 * 2 + 1].w) * 3;
    int v3 = v2 + 1;
    int v4 = v2 + 2;
    float v5 = dot(CB1[v2 * 1 + 0], POSITION);
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    float v7 = dot(CB1[v4 * 1 + 0], POSITION);
    vec3 v8 = vec3(v5, v6, v7);
    float v9 = dot(CB1[v2 * 1 + 0].xyz, v0);
    float v10 = dot(CB1[v3 * 1 + 0].xyz, v0);
    float v11 = dot(CB1[v4 * 1 + 0].xyz, v0);
    vec3 v12 = vec3(v9, v10, v11);
    vec3 v13 = CB0[11].xyz - v8;
    vec2 v14 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v15 = vec3(0.0);
    v15.z = NORMAL.w - 1.0;
    vec3 v16 = -CB0[16].xyz;
    float v17 = dot(v12, v16);
    vec4 v18 = vec4(v5, v6, v7, 1.0);
    vec4 v19 = v18 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v20 = v15;
    v20.x = v14.x;
    vec3 v21 = v20;
    v21.y = v14.y;
    vec3 v22 = ((v8 + (v12 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v23 = vec4(0.0);
    v23.x = v22.x;
    vec4 v24 = v23;
    v24.y = v22.y;
    vec4 v25 = v24;
    v25.z = v22.z;
    vec4 v26 = v25;
    v26.w = 0.0;
    vec4 v27 = vec4(dot(CB0[25], v18), dot(CB0[26], v18), dot(CB0[27], v18), 0.0);
    v27.w = COLOR1.w * 0.0039215688593685626983642578125;
    float v28 = COLOR1.y * 0.50359976291656494140625;
    float v29 = clamp(v17, 0.0, 1.0);
    vec3 v30 = (CB0[15].xyz * v29) + (CB0[17].xyz * clamp(-v17, 0.0, 1.0));
    vec4 v31 = vec4(0.0);
    v31.x = v30.x;
    vec4 v32 = v31;
    v32.y = v30.y;
    vec4 v33 = v32;
    v33.z = v30.z;
    vec4 v34 = v33;
    v34.w = v29 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v28 * dot(v12, normalize(v16 + normalize(v13)))) - v28));
    gl_Position = v19;
    VARYING0 = TEXCOORD0;
    VARYING1 = v21;
    VARYING2 = COLOR0 * CB11[v1 * 2 + 0];
    VARYING3 = v26;
    VARYING4 = vec4(v13, v19.w);
    VARYING5 = vec4(v9, v10, v11, COLOR1.z);
    VARYING6 = v34;
    VARYING7 = v27;
}

