#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
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
    vec3 v1 = CB0[11].xyz - POSITION.xyz;
    vec3 v2 = normalize(v1);
    vec3 v3 = v0 * ((dot(v0, v2) > 0.0) ? 1.0 : (-1.0));
    vec2 v4 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v5 = vec3(0.0);
    v5.z = NORMAL.w - 1.0;
    vec3 v6 = -CB0[16].xyz;
    float v7 = dot(v3, v6);
    vec4 v8 = vec4(POSITION.xyz, 1.0);
    vec4 v9 = v8 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v10 = v5;
    v10.x = v4.x;
    vec3 v11 = v10;
    v11.y = v4.y;
    vec3 v12 = ((POSITION.xyz + (v3 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v13 = vec4(0.0);
    v13.x = v12.x;
    vec4 v14 = v13;
    v14.y = v12.y;
    vec4 v15 = v14;
    v15.z = v12.z;
    vec4 v16 = v15;
    v16.w = 0.0;
    vec4 v17 = vec4(v1, v9.w);
    float v18 = COLOR0.w * 2.0;
    float v19 = clamp(v18 - 1.0, 0.0, 1.0);
    float v20 = (clamp(2.0 - (dot(v3, normalize(v17.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v18, 0.0, 1.0);
    vec4 v21 = COLOR0;
    v21.w = mix(v19, 1.0, v20);
    vec4 v22 = vec4(dot(CB0[25], v8), dot(CB0[26], v8), dot(CB0[27], v8), 0.0);
    v22.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v19, 1.0, v20);
    float v23 = COLOR1.y * 0.50359570980072021484375;
    float v24 = clamp(v7, 0.0, 1.0);
    vec3 v25 = (CB0[15].xyz * v24) + (CB0[17].xyz * clamp(-v7, 0.0, 1.0));
    vec4 v26 = vec4(0.0);
    v26.x = v25.x;
    vec4 v27 = v26;
    v27.y = v25.y;
    vec4 v28 = v27;
    v28.z = v25.z;
    vec4 v29 = v28;
    v29.w = (v24 * CB0[28].w) * (COLOR1.y * exp2((v23 * dot(v3, normalize(v6 + v2))) - v23));
    gl_Position = v9;
    VARYING0 = TEXCOORD0;
    VARYING1 = v11;
    VARYING2 = v21;
    VARYING3 = v16;
    VARYING4 = v17;
    VARYING5 = vec4(v3, COLOR1.z);
    VARYING6 = v29;
    VARYING7 = v22;
}

