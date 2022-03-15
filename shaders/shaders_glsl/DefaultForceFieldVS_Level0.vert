#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
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
    vec3 v1 = CB0[7].xyz - POSITION.xyz;
    vec3 v2 = -CB0[11].xyz;
    float v3 = dot(v0, v2);
    vec4 v4 = vec4(POSITION.xyz, 1.0);
    vec4 v5 = v4 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 v6 = TEXCOORD1;
    v6.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    vec3 v7 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v8 = vec4(0.0);
    v8.x = v7.x;
    vec4 v9 = v8;
    v9.y = v7.y;
    vec4 v10 = v9;
    v10.z = v7.z;
    vec4 v11 = v10;
    v11.w = 0.0;
    float v12 = COLOR1.y * 0.50359570980072021484375;
    float v13 = clamp(v3, 0.0, 1.0);
    vec3 v14 = (CB0[10].xyz * v13) + (CB0[12].xyz * clamp(-v3, 0.0, 1.0));
    vec4 v15 = vec4(0.0);
    v15.x = v14.x;
    vec4 v16 = v15;
    v16.y = v14.y;
    vec4 v17 = v16;
    v17.z = v14.z;
    vec4 v18 = v17;
    v18.w = (v13 * CB0[23].w) * (COLOR1.y * exp2((v12 * dot(v0, normalize(v2 + normalize(v1)))) - v12));
    vec4 v19 = vec4(dot(CB0[20], v4), dot(CB0[21], v4), dot(CB0[22], v4), 0.0);
    v19.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v5;
    VARYING0 = TEXCOORD0;
    VARYING1 = v6;
    VARYING2 = COLOR0;
    VARYING3 = v11;
    VARYING4 = vec4(v1, v5.w);
    VARYING5 = vec4(v0, COLOR1.z);
    VARYING6 = v18;
    VARYING7 = v19;
    VARYING8 = NORMAL.w;
}

