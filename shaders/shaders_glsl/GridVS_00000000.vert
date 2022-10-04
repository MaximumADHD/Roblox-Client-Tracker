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
    vec3 v2 = vec3(0.0);
    v2.z = NORMAL.w;
    vec3 v3 = -CB0[16].xyz;
    float v4 = dot(v0, v3);
    vec4 v5 = vec4(POSITION.xyz, 1.0);
    vec4 v6 = v5 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v7 = v2;
    v7.x = TEXCOORD1.x;
    vec3 v8 = v7;
    v8.y = TEXCOORD1.y;
    vec3 v9 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v10 = vec4(0.0);
    v10.x = v9.x;
    vec4 v11 = v10;
    v11.y = v9.y;
    vec4 v12 = v11;
    v12.z = v9.z;
    vec4 v13 = v12;
    v13.w = 0.0;
    vec4 v14 = vec4(dot(CB0[25], v5), dot(CB0[26], v5), dot(CB0[27], v5), 0.0);
    v14.w = COLOR1.w * 0.0039215688593685626983642578125;
    float v15 = COLOR1.y * 0.50359570980072021484375;
    float v16 = clamp(v4, 0.0, 1.0);
    vec3 v17 = (CB0[15].xyz * v16) + (CB0[17].xyz * clamp(-v4, 0.0, 1.0));
    vec4 v18 = vec4(0.0);
    v18.x = v17.x;
    vec4 v19 = v18;
    v19.y = v17.y;
    vec4 v20 = v19;
    v20.z = v17.z;
    vec4 v21 = v20;
    v21.w = (v16 * CB0[28].w) * (COLOR1.y * exp2((v15 * dot(v0, normalize(v3 + normalize(v1)))) - v15));
    gl_Position = v6;
    VARYING0 = TEXCOORD0;
    VARYING1 = v8;
    VARYING2 = COLOR0;
    VARYING3 = v13;
    VARYING4 = vec4(v1, v6.w);
    VARYING5 = vec4(v0, COLOR1.z);
    VARYING6 = v21;
    VARYING7 = v14;
}

