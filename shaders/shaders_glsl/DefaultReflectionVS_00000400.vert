#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
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
    vec3 v1 = CB0[11].xyz - POSITION.xyz;
    vec3 v2 = normalize(v1);
    vec3 v3 = v0 * ((dot(v0, v2) > 0.0) ? 1.0 : (-1.0));
    vec3 v4 = -CB0[16].xyz;
    float v5 = dot(v3, v4);
    vec4 v6 = vec4(POSITION.xyz, 1.0);
    vec4 v7 = v6 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v8 = ((POSITION.xyz + (v3 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v9 = vec4(0.0);
    v9.x = v8.x;
    vec4 v10 = v9;
    v10.y = v8.y;
    vec4 v11 = v10;
    v11.z = v8.z;
    vec4 v12 = v11;
    v12.w = 0.0;
    vec4 v13 = vec4(dot(CB0[25], v6), dot(CB0[26], v6), dot(CB0[27], v6), 0.0);
    v13.w = COLOR1.w * 0.0039215688593685626983642578125;
    float v14 = COLOR1.y * 0.50359570980072021484375;
    float v15 = clamp(v5, 0.0, 1.0);
    vec3 v16 = (CB0[15].xyz * v15) + (CB0[17].xyz * clamp(-v5, 0.0, 1.0));
    vec4 v17 = vec4(0.0);
    v17.x = v16.x;
    vec4 v18 = v17;
    v18.y = v16.y;
    vec4 v19 = v18;
    v19.z = v16.z;
    vec4 v20 = v19;
    v20.w = (v15 * CB0[28].w) * (COLOR1.y * exp2((v14 * dot(v3, normalize(v4 + v2))) - v14));
    gl_Position = v7;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = v12;
    VARYING4 = vec4(v1, v7.w);
    VARYING5 = vec4(v3, COLOR1.z);
    VARYING6 = v20;
    VARYING7 = v13;
    VARYING8 = NORMAL.w;
}

