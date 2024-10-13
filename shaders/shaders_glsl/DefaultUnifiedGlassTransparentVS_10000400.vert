#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
    float v17 = COLOR0.w * 2.0;
    float v18 = clamp(v17 - 1.0, 0.0, 1.0);
    float v19 = (clamp(2.0 - (dot(v3, v2) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v17, 0.0, 1.0);
    vec4 v20 = COLOR0;
    v20.w = mix(v18, 1.0, v19);
    vec4 v21 = vec4(dot(CB0[25], v8), dot(CB0[26], v8), dot(CB0[27], v8), 0.0);
    v21.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v18, 1.0, v19);
    float v22 = COLOR1.y * 0.50359976291656494140625;
    float v23 = clamp(v7, 0.0, 1.0);
    vec3 v24 = (CB0[15].xyz * v23) + (CB0[17].xyz * clamp(-v7, 0.0, 1.0));
    vec4 v25 = vec4(0.0);
    v25.x = v24.x;
    vec4 v26 = v25;
    v26.y = v24.y;
    vec4 v27 = v26;
    v27.z = v24.z;
    vec4 v28 = v27;
    v28.w = v23 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v22 * dot(v3, normalize(v6 + v2))) - v22));
    gl_Position = v9;
    VARYING0 = TEXCOORD0;
    VARYING1 = v11;
    VARYING2 = v20;
    VARYING3 = v16;
    VARYING4 = vec4(v1, v9.w);
    VARYING5 = vec4(v3, COLOR1.z);
    VARYING6 = v28;
    VARYING7 = v21;
}

