#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
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
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

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
    vec3 v17 = CB0[7].xyz - v15;
    vec3 v18 = normalize(v17);
    vec3 v19 = v16 * ((dot(v16, v18) > (-0.0500000007450580596923828125)) ? 1.0 : (-1.0));
    vec3 v20 = -CB0[11].xyz;
    float v21 = dot(v19, v20);
    vec4 v22 = vec4(v12, v13, v14, 1.0);
    vec4 v23 = v22 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v24 = ((v15 + (v19 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v25 = vec4(v24.x, v24.y, v24.z, vec4(0.0).w);
    v25.w = 0.0;
    vec4 v26 = vec4(v17, v23.w);
    float v27 = COLOR0.w * 2.0;
    float v28 = clamp(v27 - 1.0, 0.0, 1.0);
    float v29 = (clamp(2.0 - (dot(v19, normalize(v26.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v27, 0.0, 1.0);
    vec4 v30 = COLOR0;
    v30.w = mix(v28, 1.0, v29);
    vec4 v31 = vec4(dot(CB0[20], v22), dot(CB0[21], v22), dot(CB0[22], v22), 0.0);
    v31.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v28, 1.0, v29);
    float v32 = COLOR1.y * 0.50359570980072021484375;
    float v33 = clamp(v21, 0.0, 1.0);
    vec3 v34 = (CB0[10].xyz * v33) + (CB0[12].xyz * clamp(-v21, 0.0, 1.0));
    vec4 v35 = vec4(v34.x, v34.y, v34.z, vec4(0.0).w);
    v35.w = (v33 * CB0[23].w) * (COLOR1.y * exp2((v32 * dot(v19, normalize(v20 + v18))) - v32));
    gl_Position = v23;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = v30;
    VARYING3 = v25;
    VARYING4 = v26;
    VARYING5 = vec4(v19, COLOR1.z);
    VARYING6 = v35;
    VARYING7 = v31;
    VARYING8 = NORMAL.w;
}

