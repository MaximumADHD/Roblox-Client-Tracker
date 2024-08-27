#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec4 COLOR0;
in vec4 COLOR1;
out vec2 VARYING0;
out float VARYING1;
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
    vec3 v13 = -CB0[16].xyz;
    float v14 = dot(v11, v13);
    vec4 v15 = vec4(v4, v5, v6, 1.0);
    vec4 v16 = v15 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v17 = ((v7 + (v11 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v18 = vec4(0.0);
    v18.x = v17.x;
    vec4 v19 = v18;
    v19.y = v17.y;
    vec4 v20 = v19;
    v20.z = v17.z;
    vec4 v21 = v20;
    v21.w = 0.0;
    float v22 = COLOR1.y * 0.50359976291656494140625;
    float v23 = clamp(v14, 0.0, 1.0);
    vec3 v24 = (CB0[15].xyz * v23) + (CB0[17].xyz * clamp(-v14, 0.0, 1.0));
    vec4 v25 = vec4(0.0);
    v25.x = v24.x;
    vec4 v26 = v25;
    v26.y = v24.y;
    vec4 v27 = v26;
    v27.z = v24.z;
    vec4 v28 = v27;
    v28.w = v23 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v22 * dot(v11, normalize(v13 + normalize(v12)))) - v22));
    vec4 v29 = vec4(dot(CB0[25], v15), dot(CB0[26], v15), dot(CB0[27], v15), 0.0);
    v29.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v16;
    VARYING0 = TEXCOORD0;
    VARYING1 = max(0.0500000007450580596923828125, COLOR1.w * 0.0039215688593685626983642578125);
    VARYING2 = COLOR0;
    VARYING3 = v21;
    VARYING4 = vec4(v12, v16.w);
    VARYING5 = vec4(v8, v9, v10, COLOR1.z);
    VARYING6 = v28;
    VARYING7 = v29;
}

