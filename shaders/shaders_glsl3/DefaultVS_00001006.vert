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
out vec2 VARYING0;
out vec3 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v1 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v2 = ivec4(TEXCOORD4) * ivec4(3);
    float v3 = v1.x;
    float v4 = v1.y;
    float v5 = v1.z;
    float v6 = v1.w;
    vec4 v7 = (((CB1[v2.x * 1 + 0] * v3) + (CB1[v2.y * 1 + 0] * v4)) + (CB1[v2.z * 1 + 0] * v5)) + (CB1[v2.w * 1 + 0] * v6);
    ivec4 v8 = v2 + ivec4(1);
    vec4 v9 = (((CB1[v8.x * 1 + 0] * v3) + (CB1[v8.y * 1 + 0] * v4)) + (CB1[v8.z * 1 + 0] * v5)) + (CB1[v8.w * 1 + 0] * v6);
    ivec4 v10 = v2 + ivec4(2);
    vec4 v11 = (((CB1[v10.x * 1 + 0] * v3) + (CB1[v10.y * 1 + 0] * v4)) + (CB1[v10.z * 1 + 0] * v5)) + (CB1[v10.w * 1 + 0] * v6);
    float v12 = dot(v7, POSITION);
    float v13 = dot(v9, POSITION);
    float v14 = dot(v11, POSITION);
    vec3 v15 = vec3(v12, v13, v14);
    vec3 v16 = vec3(dot(v7.xyz, v0), dot(v9.xyz, v0), dot(v11.xyz, v0));
    vec3 v17 = CB0[11].xyz - v15;
    vec2 v18 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v19 = vec3(0.0);
    v19.z = NORMAL.w - 1.0;
    vec3 v20 = -CB0[16].xyz;
    float v21 = dot(v16, v20);
    vec4 v22 = vec4(v12, v13, v14, 1.0);
    vec4 v23 = v22 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v24 = v19;
    v24.x = v18.x;
    vec3 v25 = v24;
    v25.y = v18.y;
    vec3 v26 = ((v15 + (v16 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v27 = vec4(0.0);
    v27.x = v26.x;
    vec4 v28 = v27;
    v28.y = v26.y;
    vec4 v29 = v28;
    v29.z = v26.z;
    vec4 v30 = v29;
    v30.w = 0.0;
    float v31 = COLOR1.y * 0.50359570980072021484375;
    float v32 = clamp(v21, 0.0, 1.0);
    vec3 v33 = (CB0[15].xyz * v32) + (CB0[17].xyz * clamp(-v21, 0.0, 1.0));
    vec4 v34 = vec4(0.0);
    v34.x = v33.x;
    vec4 v35 = v34;
    v35.y = v33.y;
    vec4 v36 = v35;
    v36.z = v33.z;
    vec4 v37 = v36;
    v37.w = (v32 * CB0[28].w) * (COLOR1.y * exp2((v31 * dot(v16, normalize(v20 + normalize(v17)))) - v31));
    vec4 v38 = vec4(dot(CB0[25], v22), dot(CB0[26], v22), dot(CB0[27], v22), 0.0);
    v38.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v23;
    VARYING0 = TEXCOORD0;
    VARYING1 = v25;
    VARYING2 = COLOR0;
    VARYING3 = v30;
    VARYING4 = vec4(v17, v23.w);
    VARYING5 = v37;
    VARYING6 = v38;
}

