#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[61];
uniform vec4 CB1[216];
uniform vec4 CB3[1];
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
out vec3 VARYING7;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v1 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v2 = ivec4(TEXCOORD4);
    int v3 = 3 * v2.w;
    vec4 v4 = vec4(v1.w);
    int v5 = 3 * v2.z;
    vec4 v6 = vec4(v1.z);
    int v7 = 3 * v2.y;
    vec4 v8 = vec4(v1.y);
    int v9 = 3 * v2.x;
    float v10 = v1.x;
    vec4 v11 = CB1[v3 * 1 + 0] * v4 + (CB1[v5 * 1 + 0] * v6 + (CB1[v7 * 1 + 0] * v8 + (CB1[v9 * 1 + 0] * v10)));
    vec4 v12 = CB1[(v3 + 1) * 1 + 0] * v4 + (CB1[(v5 + 1) * 1 + 0] * v6 + (CB1[(v7 + 1) * 1 + 0] * v8 + (CB1[(v9 + 1) * 1 + 0] * v10)));
    vec4 v13 = CB1[(v3 + 2) * 1 + 0] * v4 + (CB1[(v5 + 2) * 1 + 0] * v6 + (CB1[(v7 + 2) * 1 + 0] * v8 + (CB1[(v9 + 2) * 1 + 0] * v10)));
    float v14 = dot(v11, POSITION);
    float v15 = dot(v12, POSITION);
    float v16 = dot(v13, POSITION);
    vec3 v17 = vec3(v14, v15, v16);
    vec3 v18 = vec3(dot(v11.xyz, v0), dot(v12.xyz, v0), dot(v13.xyz, v0));
    vec3 v19 = CB0[11].xyz - v17;
    vec3 v20 = normalize(v19);
    vec3 v21 = v18 * ((dot(v18, v20) > 0.0) ? 1.0 : (-1.0));
    vec3 v22 = vec3(0.0);
    v22.z = -1.0;
    vec3 v23 = -CB0[16].xyz;
    float v24 = dot(v21, v23);
    vec4 v25 = vec4(v14, v15, v16, 1.0);
    vec4 v26 = v25 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v27 = v22;
    v27.x = 0.0;
    vec3 v28 = v27;
    v28.y = 0.0;
    vec3 v29 = ((v17 + (v21 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v30 = vec4(0.0);
    v30.x = v29.x;
    vec4 v31 = v30;
    v31.y = v29.y;
    vec4 v32 = v31;
    v32.z = v29.z;
    vec4 v33 = v32;
    v33.w = 0.0;
    float v34 = CB3[0].z * 0.50359976291656494140625;
    float v35 = clamp(v24, 0.0, 1.0);
    vec3 v36 = (CB0[15].xyz * v35) + (CB0[17].xyz * clamp(-v24, 0.0, 1.0));
    vec4 v37 = vec4(0.0);
    v37.x = v36.x;
    vec4 v38 = v37;
    v38.y = v36.y;
    vec4 v39 = v38;
    v39.z = v36.z;
    vec4 v40 = v39;
    v40.w = v35 * ((CB3[0].z * 0.055555999279022216796875) * exp2((v34 * dot(v21, normalize(v23 + v20))) - v34));
    vec4 v41 = vec4(dot(CB0[25], v25), dot(CB0[26], v25), dot(CB0[27], v25), 0.0);
    v41.w = 0.0;
    gl_Position = v26;
    VARYING0 = TEXCOORD0;
    VARYING1 = v28;
    VARYING2 = COLOR0;
    VARYING3 = v33;
    VARYING4 = vec4(v19, v26.w);
    VARYING5 = v40;
    VARYING6 = v41;
    VARYING7 = vec3(COLOR1.z * 0.0039215688593685626983642578125, COLOR1.w * 0.0039215688593685626983642578125, NORMAL.w * 0.0039215688593685626983642578125);
}

