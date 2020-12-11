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
    vec3 v2 = normalize(v1);
    vec3 v3 = v0 * ((dot(v0, v2) > (-0.0500000007450580596923828125)) ? 1.0 : (-1.0));
    vec3 v4 = -CB0[11].xyz;
    float v5 = dot(v3, v4);
    vec4 v6 = vec4(POSITION.xyz, 1.0);
    vec4 v7 = v6 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v8 = ((POSITION.xyz + (v3 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v9 = vec4(v8.x, v8.y, v8.z, vec4(0.0).w);
    v9.w = 0.0;
    vec4 v10 = vec4(v1, v7.w);
    float v11 = COLOR0.w * 2.0;
    float v12 = clamp(v11 - 1.0, 0.0, 1.0);
    float v13 = (clamp(2.0 - (dot(v3, normalize(v10.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v11, 0.0, 1.0);
    vec4 v14 = COLOR0;
    v14.w = mix(v12, 1.0, v13);
    vec4 v15 = vec4(dot(CB0[20], v6), dot(CB0[21], v6), dot(CB0[22], v6), 0.0);
    v15.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v12, 1.0, v13);
    float v16 = COLOR1.y * 0.50359570980072021484375;
    float v17 = clamp(v5, 0.0, 1.0);
    vec3 v18 = (CB0[10].xyz * v17) + (CB0[12].xyz * clamp(-v5, 0.0, 1.0));
    vec4 v19 = vec4(v18.x, v18.y, v18.z, vec4(0.0).w);
    v19.w = (v17 * CB0[23].w) * (COLOR1.y * exp2((v16 * dot(v3, normalize(v4 + v2))) - v16));
    gl_Position = v7;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = v14;
    VARYING3 = v9;
    VARYING4 = v10;
    VARYING5 = vec4(v3, COLOR1.z);
    VARYING6 = v19;
    VARYING7 = v15;
    VARYING8 = NORMAL.w;
}

