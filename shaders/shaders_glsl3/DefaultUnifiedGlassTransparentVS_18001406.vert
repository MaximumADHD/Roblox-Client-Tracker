#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <FastClusterInstanceData.h>
uniform vec4 CB0[61];
uniform vec4 CB1[216];
uniform vec4 CB11[512];
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
    vec4 v1 = COLOR0 * CB11[int(COLOR1.x) * 2 + 0];
    vec4 v2 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v3 = ivec4(TEXCOORD4);
    int v4 = 3 * v3.x;
    float v5 = v2.x;
    int v6 = 3 * v3.y;
    float v7 = v2.y;
    int v8 = 3 * v3.z;
    float v9 = v2.z;
    int v10 = 3 * v3.w;
    float v11 = v2.w;
    vec4 v12 = (((CB1[v4 * 1 + 0] * v5) + (CB1[v6 * 1 + 0] * v7)) + (CB1[v8 * 1 + 0] * v9)) + (CB1[v10 * 1 + 0] * v11);
    vec4 v13 = (((CB1[(v4 + 1) * 1 + 0] * v5) + (CB1[(v6 + 1) * 1 + 0] * v7)) + (CB1[(v8 + 1) * 1 + 0] * v9)) + (CB1[(v10 + 1) * 1 + 0] * v11);
    vec4 v14 = (((CB1[(v4 + 2) * 1 + 0] * v5) + (CB1[(v6 + 2) * 1 + 0] * v7)) + (CB1[(v8 + 2) * 1 + 0] * v9)) + (CB1[(v10 + 2) * 1 + 0] * v11);
    float v15 = dot(v12, POSITION);
    float v16 = dot(v13, POSITION);
    float v17 = dot(v14, POSITION);
    vec3 v18 = vec3(v15, v16, v17);
    vec3 v19 = vec3(dot(v12.xyz, v0), dot(v13.xyz, v0), dot(v14.xyz, v0));
    vec3 v20 = CB0[11].xyz - v18;
    vec3 v21 = normalize(v20);
    vec3 v22 = v19 * ((dot(v19, v21) > 0.0) ? 1.0 : (-1.0));
    vec2 v23 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v24 = vec3(0.0);
    v24.z = NORMAL.w - 1.0;
    vec3 v25 = -CB0[16].xyz;
    float v26 = dot(v22, v25);
    vec4 v27 = vec4(v15, v16, v17, 1.0);
    vec4 v28 = v27 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v29 = v24;
    v29.x = v23.x;
    vec3 v30 = v29;
    v30.y = v23.y;
    vec3 v31 = ((v18 + (v22 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v32 = vec4(0.0);
    v32.x = v31.x;
    vec4 v33 = v32;
    v33.y = v31.y;
    vec4 v34 = v33;
    v34.z = v31.z;
    vec4 v35 = v34;
    v35.w = 0.0;
    float v36 = v1.w * 2.0;
    float v37 = clamp(v36 - 1.0, 0.0, 1.0);
    float v38 = (clamp(2.0 - (dot(v22, v21) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v36, 0.0, 1.0);
    vec4 v39 = v1;
    v39.w = mix(v37, 1.0, v38);
    vec4 v40 = vec4(dot(CB0[25], v27), dot(CB0[26], v27), dot(CB0[27], v27), 0.0);
    v40.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v37, 1.0, v38);
    float v41 = COLOR1.y * 0.50359976291656494140625;
    float v42 = clamp(v26, 0.0, 1.0);
    vec3 v43 = (CB0[15].xyz * v42) + (CB0[17].xyz * clamp(-v26, 0.0, 1.0));
    vec4 v44 = vec4(0.0);
    v44.x = v43.x;
    vec4 v45 = v44;
    v45.y = v43.y;
    vec4 v46 = v45;
    v46.z = v43.z;
    vec4 v47 = v46;
    v47.w = v42 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v41 * dot(v22, normalize(v25 + v21))) - v41));
    gl_Position = v28;
    VARYING0 = TEXCOORD0;
    VARYING1 = v30;
    VARYING2 = v39;
    VARYING3 = v35;
    VARYING4 = vec4(v20, v28.w);
    VARYING5 = vec4(v22, COLOR1.z);
    VARYING6 = v47;
    VARYING7 = v40;
}

