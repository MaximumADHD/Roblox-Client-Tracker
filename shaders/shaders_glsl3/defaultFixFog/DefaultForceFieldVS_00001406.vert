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
    vec4 v1 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v2 = ivec4(TEXCOORD4);
    int v3 = 3 * v2.x;
    float v4 = v1.x;
    int v5 = 3 * v2.y;
    float v6 = v1.y;
    int v7 = 3 * v2.z;
    float v8 = v1.z;
    int v9 = 3 * v2.w;
    float v10 = v1.w;
    vec4 v11 = (((CB1[v3 * 1 + 0] * v4) + (CB1[v5 * 1 + 0] * v6)) + (CB1[v7 * 1 + 0] * v8)) + (CB1[v9 * 1 + 0] * v10);
    vec4 v12 = (((CB1[(v3 + 1) * 1 + 0] * v4) + (CB1[(v5 + 1) * 1 + 0] * v6)) + (CB1[(v7 + 1) * 1 + 0] * v8)) + (CB1[(v9 + 1) * 1 + 0] * v10);
    vec4 v13 = (((CB1[(v3 + 2) * 1 + 0] * v4) + (CB1[(v5 + 2) * 1 + 0] * v6)) + (CB1[(v7 + 2) * 1 + 0] * v8)) + (CB1[(v9 + 2) * 1 + 0] * v10);
    float v14 = dot(v11, POSITION);
    float v15 = dot(v12, POSITION);
    float v16 = dot(v13, POSITION);
    vec3 v17 = vec3(v14, v15, v16);
    vec3 v18 = vec3(dot(v11.xyz, v0), dot(v12.xyz, v0), dot(v13.xyz, v0));
    vec3 v19 = CB0[11].xyz - v17;
    vec3 v20 = normalize(v19);
    vec3 v21 = v18 * ((dot(v18, v20) > 0.0) ? 1.0 : (-1.0));
    vec3 v22 = -CB0[16].xyz;
    float v23 = dot(v21, v22);
    vec4 v24 = vec4(v14, v15, v16, 1.0);
    vec4 v25 = v24 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v26 = ((v17 + (v21 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v27 = vec4(0.0);
    v27.x = v26.x;
    vec4 v28 = v27;
    v28.y = v26.y;
    vec4 v29 = v28;
    v29.z = v26.z;
    vec4 v30 = v29;
    v30.w = 0.0;
    float v31 = COLOR1.y * 0.50359976291656494140625;
    float v32 = clamp(v23, 0.0, 1.0);
    vec3 v33 = (CB0[15].xyz * v32) + (CB0[17].xyz * clamp(-v23, 0.0, 1.0));
    vec4 v34 = vec4(0.0);
    v34.x = v33.x;
    vec4 v35 = v34;
    v35.y = v33.y;
    vec4 v36 = v35;
    v36.z = v33.z;
    vec4 v37 = v36;
    v37.w = v32 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v31 * dot(v21, normalize(v22 + v20))) - v31));
    vec4 v38 = vec4(dot(CB0[25], v24), dot(CB0[26], v24), dot(CB0[27], v24), 0.0);
    v38.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v25;
    VARYING0 = TEXCOORD0;
    VARYING1 = max(0.0500000007450580596923828125, COLOR1.w * 0.0039215688593685626983642578125);
    VARYING2 = COLOR0;
    VARYING3 = v30;
    VARYING4 = vec4(v19, v25.w);
    VARYING5 = vec4(v21, COLOR1.z);
    VARYING6 = v37;
    VARYING7 = v38;
}

