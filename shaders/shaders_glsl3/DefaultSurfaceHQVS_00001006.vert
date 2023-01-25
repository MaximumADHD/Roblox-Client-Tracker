#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec4 COLOR0;
in vec4 COLOR1;
in vec4 TEXCOORD4;
in vec4 TEXCOORD5;
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
    vec4 v2 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v3 = ivec4(TEXCOORD4) * ivec4(3);
    float v4 = v2.x;
    float v5 = v2.y;
    float v6 = v2.z;
    float v7 = v2.w;
    vec4 v8 = (((CB1[v3.x * 1 + 0] * v4) + (CB1[v3.y * 1 + 0] * v5)) + (CB1[v3.z * 1 + 0] * v6)) + (CB1[v3.w * 1 + 0] * v7);
    ivec4 v9 = v3 + ivec4(1);
    vec4 v10 = (((CB1[v9.x * 1 + 0] * v4) + (CB1[v9.y * 1 + 0] * v5)) + (CB1[v9.z * 1 + 0] * v6)) + (CB1[v9.w * 1 + 0] * v7);
    ivec4 v11 = v3 + ivec4(2);
    vec4 v12 = (((CB1[v11.x * 1 + 0] * v4) + (CB1[v11.y * 1 + 0] * v5)) + (CB1[v11.z * 1 + 0] * v6)) + (CB1[v11.w * 1 + 0] * v7);
    float v13 = dot(v8, POSITION);
    float v14 = dot(v10, POSITION);
    float v15 = dot(v12, POSITION);
    vec3 v16 = vec3(v13, v14, v15);
    vec3 v17 = v8.xyz;
    float v18 = dot(v17, v0);
    vec3 v19 = v10.xyz;
    float v20 = dot(v19, v0);
    vec3 v21 = v12.xyz;
    float v22 = dot(v21, v0);
    vec2 v23 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v24 = vec3(0.0);
    v24.z = NORMAL.w - 1.0;
    vec4 v25 = vec4(0.0);
    v25.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v26 = vec4(v13, v14, v15, 1.0);
    vec4 v27 = v26 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v28 = v24;
    v28.x = v23.x;
    vec3 v29 = v28;
    v29.y = v23.y;
    vec3 v30 = ((v16 + (vec3(v18, v20, v22) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v31 = vec4(0.0);
    v31.x = v30.x;
    vec4 v32 = v31;
    v32.y = v30.y;
    vec4 v33 = v32;
    v33.z = v30.z;
    vec4 v34 = v33;
    v34.w = 0.0;
    vec4 v35 = vec4(dot(CB0[25], v26), dot(CB0[26], v26), dot(CB0[27], v26), 0.0);
    v35.w = COLOR1.w * 0.0039215688593685626983642578125;
    vec4 v36 = v25;
    v36.x = dot(v17, v1);
    vec4 v37 = v36;
    v37.y = dot(v19, v1);
    vec4 v38 = v37;
    v38.z = dot(v21, v1);
    vec4 v39 = vec4(v18, v20, v22, 0.0);
    v39.w = 0.0;
    gl_Position = v27;
    VARYING0 = TEXCOORD0;
    VARYING1 = v29;
    VARYING2 = COLOR0;
    VARYING3 = v34;
    VARYING4 = vec4(CB0[11].xyz - v16, v27.w);
    VARYING5 = v39;
    VARYING6 = v38;
    VARYING7 = v35;
}

