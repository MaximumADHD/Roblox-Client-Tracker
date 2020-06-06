#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
uniform vec4 CB1[216];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying float VARYING7;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v1 = int(COLOR1.x) * 3;
    int v2 = v1 + 1;
    int v3 = v1 + 2;
    float v4 = dot(CB1[v1 * 1 + 0], POSITION);
    float v5 = dot(CB1[v2 * 1 + 0], POSITION);
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    vec3 v7 = vec3(v4, v5, v6);
    vec3 v8 = vec3(dot(CB1[v1 * 1 + 0].xyz, v0), dot(CB1[v2 * 1 + 0].xyz, v0), dot(CB1[v3 * 1 + 0].xyz, v0));
    vec3 v9 = -CB0[11].xyz;
    float v10 = dot(v8, v9);
    vec3 v11 = CB0[7].xyz - v7;
    vec4 v12 = vec4(v4, v5, v6, 1.0);
    vec4 v13 = v12 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float v14 = COLOR1.y * 0.50359570980072021484375;
    float v15 = clamp(v10, 0.0, 1.0);
    vec3 v16 = (CB0[10].xyz * v15) + (CB0[12].xyz * clamp(-v10, 0.0, 1.0));
    vec4 v17 = vec4(v16.x, v16.y, v16.z, vec4(0.0).w);
    v17.w = (v15 * CB0[23].w) * (COLOR1.y * exp2((v14 * dot(v8, normalize(v9 + normalize(v11)))) - v14));
    vec4 v18 = vec4(dot(CB0[20], v12), dot(CB0[21], v12), dot(CB0[22], v12), 0.0);
    v18.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v13;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = ((v7 + (v8 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING4 = vec4(v11, v13.w);
    VARYING5 = v17;
    VARYING6 = v18;
    VARYING7 = NORMAL.w;
}

