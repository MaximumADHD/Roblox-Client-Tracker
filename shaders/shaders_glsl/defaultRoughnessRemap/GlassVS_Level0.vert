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
centroid varying vec2 VARYING0;
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
    vec3 v6 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v7 = vec4(0.0);
    v7.x = v6.x;
    vec4 v8 = v7;
    v8.y = v6.y;
    vec4 v9 = v8;
    v9.z = v6.z;
    vec4 v10 = v9;
    v10.w = 0.0;
    vec4 v11 = vec4(v1, v5.w);
    float v12 = COLOR0.w * 2.0;
    float v13 = clamp(v12 - 1.0, 0.0, 1.0);
    float v14 = (clamp(2.0 - (dot(v0, normalize(v11.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v12, 0.0, 1.0);
    vec4 v15 = COLOR0;
    v15.w = mix(v13, 1.0, v14);
    vec4 v16 = vec4(dot(CB0[20], v4), dot(CB0[21], v4), dot(CB0[22], v4), 0.0);
    v16.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v13, 1.0, v14);
    float v17 = COLOR1.y * 0.50359570980072021484375;
    float v18 = clamp(v3, 0.0, 1.0);
    vec3 v19 = (CB0[10].xyz * v18) + (CB0[12].xyz * clamp(-v3, 0.0, 1.0));
    vec4 v20 = vec4(0.0);
    v20.x = v19.x;
    vec4 v21 = v20;
    v21.y = v19.y;
    vec4 v22 = v21;
    v22.z = v19.z;
    vec4 v23 = v22;
    v23.w = (v18 * CB0[23].w) * (COLOR1.y * exp2((v17 * dot(v0, normalize(v2 + normalize(v1)))) - v17));
    gl_Position = v5;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = v15;
    VARYING3 = v10;
    VARYING4 = v11;
    VARYING5 = vec4(v0, COLOR1.z);
    VARYING6 = v23;
    VARYING7 = v16;
    VARYING8 = NORMAL.w;
}

