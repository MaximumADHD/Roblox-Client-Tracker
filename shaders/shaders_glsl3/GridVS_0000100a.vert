#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec2 TEXCOORD1;
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
    vec3 v12 = CB0[11].xyz - v7;
    vec3 v13 = vec3(0.0);
    v13.z = NORMAL.w;
    vec3 v14 = -CB0[16].xyz;
    float v15 = dot(v11, v14);
    vec4 v16 = vec4(v4, v5, v6, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v17 = v13;
    v17.x = TEXCOORD1.x;
    vec3 v18 = v17;
    v18.y = TEXCOORD1.y;
    vec3 v19 = ((v7 + (v11 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v20 = vec4(0.0);
    v20.x = v19.x;
    vec4 v21 = v20;
    v21.y = v19.y;
    vec4 v22 = v21;
    v22.z = v19.z;
    vec4 v23 = v22;
    v23.w = 0.0;
    vec4 v24 = vec4(v4, v5, v6, 0.0);
    v24.w = COLOR1.w * 0.0039215688593685626983642578125;
    float v25 = COLOR1.y * 0.50359570980072021484375;
    float v26 = clamp(v15, 0.0, 1.0);
    vec3 v27 = (CB0[15].xyz * v26) + (CB0[17].xyz * clamp(-v15, 0.0, 1.0));
    vec4 v28 = vec4(0.0);
    v28.x = v27.x;
    vec4 v29 = v28;
    v29.y = v27.y;
    vec4 v30 = v29;
    v30.z = v27.z;
    vec4 v31 = v30;
    v31.w = (v26 * CB0[28].w) * (COLOR1.y * exp2((v25 * dot(v11, normalize(v14 + normalize(v12)))) - v25));
    gl_Position = v16;
    VARYING0 = TEXCOORD0;
    VARYING1 = v18;
    VARYING2 = COLOR0;
    VARYING3 = v23;
    VARYING4 = vec4(v12, v16.w);
    VARYING5 = vec4(v8, v9, v10, COLOR1.z);
    VARYING6 = v31;
    VARYING7 = v24;
}

