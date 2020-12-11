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
varying float VARYING7;

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
    float v10 = COLOR1.y * 0.50359570980072021484375;
    float v11 = clamp(v5, 0.0, 1.0);
    vec3 v12 = (CB0[10].xyz * v11) + (CB0[12].xyz * clamp(-v5, 0.0, 1.0));
    vec4 v13 = vec4(v12.x, v12.y, v12.z, vec4(0.0).w);
    v13.w = (v11 * CB0[23].w) * (COLOR1.y * exp2((v10 * dot(v3, normalize(v4 + v2))) - v10));
    vec4 v14 = vec4(dot(CB0[20], v6), dot(CB0[21], v6), dot(CB0[22], v6), 0.0);
    v14.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v7;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = v9;
    VARYING4 = vec4(v1, v7.w);
    VARYING5 = v13;
    VARYING6 = v14;
    VARYING7 = NORMAL.w;
}

