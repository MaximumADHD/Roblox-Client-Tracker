#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB1[216];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
attribute vec4 TEXCOORD4;
attribute vec4 TEXCOORD5;
varying vec2 VARYING0;
varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

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
    vec3 v18 = normalize(v17);
    vec3 v19 = v16 * ((dot(v16, v18) > 0.0) ? 1.0 : (-1.0));
    vec3 v20 = vec3(0.0);
    v20.z = NORMAL.w;
    vec3 v21 = -CB0[16].xyz;
    float v22 = dot(v19, v21);
    vec4 v23 = vec4(v12, v13, v14, 1.0);
    vec4 v24 = v23 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v25 = v20;
    v25.x = TEXCOORD1.x;
    vec3 v26 = v25;
    v26.y = TEXCOORD1.y;
    vec3 v27 = ((v15 + (v19 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v28 = vec4(0.0);
    v28.x = v27.x;
    vec4 v29 = v28;
    v29.y = v27.y;
    vec4 v30 = v29;
    v30.z = v27.z;
    vec4 v31 = v30;
    v31.w = 0.0;
    vec4 v32 = vec4(v17, v24.w);
    float v33 = COLOR0.w * 2.0;
    float v34 = clamp(v33 - 1.0, 0.0, 1.0);
    float v35 = (clamp(2.0 - (dot(v19, normalize(v32.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v33, 0.0, 1.0);
    vec4 v36 = COLOR0;
    v36.w = mix(v34, 1.0, v35);
    vec4 v37 = vec4(dot(CB0[25], v23), dot(CB0[26], v23), dot(CB0[27], v23), 0.0);
    v37.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v34, 1.0, v35);
    float v38 = COLOR1.y * 0.50359570980072021484375;
    float v39 = clamp(v22, 0.0, 1.0);
    vec3 v40 = (CB0[15].xyz * v39) + (CB0[17].xyz * clamp(-v22, 0.0, 1.0));
    vec4 v41 = vec4(0.0);
    v41.x = v40.x;
    vec4 v42 = v41;
    v42.y = v40.y;
    vec4 v43 = v42;
    v43.z = v40.z;
    vec4 v44 = v43;
    v44.w = (v39 * CB0[28].w) * (COLOR1.y * exp2((v38 * dot(v19, normalize(v21 + v18))) - v38));
    gl_Position = v24;
    VARYING0 = TEXCOORD0;
    VARYING1 = v26;
    VARYING2 = v36;
    VARYING3 = v31;
    VARYING4 = v32;
    VARYING5 = vec4(v19, COLOR1.z);
    VARYING6 = v44;
    VARYING7 = v37;
}

