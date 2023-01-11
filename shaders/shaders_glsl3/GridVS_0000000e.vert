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
in vec4 TEXCOORD4;
in vec4 TEXCOORD5;
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
    float v16 = dot(v7.xyz, v0);
    float v17 = dot(v9.xyz, v0);
    float v18 = dot(v11.xyz, v0);
    vec3 v19 = vec3(v16, v17, v18);
    vec3 v20 = CB0[11].xyz - v15;
    vec2 v21 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v22 = vec3(0.0);
    v22.z = NORMAL.w - 1.0;
    vec3 v23 = -CB0[16].xyz;
    float v24 = dot(v19, v23);
    vec4 v25 = vec4(v12, v13, v14, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v26 = v22;
    v26.x = v21.x;
    vec3 v27 = v26;
    v27.y = v21.y;
    vec3 v28 = ((v15 + (v19 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v29 = vec4(0.0);
    v29.x = v28.x;
    vec4 v30 = v29;
    v30.y = v28.y;
    vec4 v31 = v30;
    v31.z = v28.z;
    vec4 v32 = v31;
    v32.w = 0.0;
    vec4 v33 = vec4(v12, v13, v14, 0.0);
    v33.w = COLOR1.w * 0.0039215688593685626983642578125;
    float v34 = COLOR1.y * 0.50359570980072021484375;
    float v35 = clamp(v24, 0.0, 1.0);
    vec3 v36 = (CB0[15].xyz * v35) + (CB0[17].xyz * clamp(-v24, 0.0, 1.0));
    vec4 v37 = vec4(0.0);
    v37.x = v36.x;
    vec4 v38 = v37;
    v38.y = v36.y;
    vec4 v39 = v38;
    v39.z = v36.z;
    vec4 v40 = v39;
    v40.w = (v35 * CB0[28].w) * (COLOR1.y * exp2((v34 * dot(v19, normalize(v23 + normalize(v20)))) - v34));
    gl_Position = v25;
    VARYING0 = TEXCOORD0;
    VARYING1 = v27;
    VARYING2 = COLOR0;
    VARYING3 = v32;
    VARYING4 = vec4(v20, v25.w);
    VARYING5 = vec4(v16, v17, v18, COLOR1.z);
    VARYING6 = v40;
    VARYING7 = v33;
}

