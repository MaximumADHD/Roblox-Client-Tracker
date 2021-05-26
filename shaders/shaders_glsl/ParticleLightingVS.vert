#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[4];
attribute vec3 POSITION;
attribute vec2 TEXCOORD5;
attribute vec2 TEXCOORD1;
attribute vec2 TEXCOORD2;
attribute vec2 TEXCOORD4;
varying vec3 VARYING0;

void main()
{
    vec2 v0 = (TEXCOORD4 + (TEXCOORD2 * CB1[2].z)) * CB1[2].xy;
    vec2 v1 = (TEXCOORD2 * 2.0) - vec2(1.0);
    vec2 v2 = TEXCOORD1 * vec2(0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    float v3 = v2.x;
    float v4 = cos(v3);
    float v5 = sin(v3);
    vec4 v6 = vec4(0.0);
    v6.x = v4 * TEXCOORD5.x;
    vec4 v7 = v6;
    v7.y = (-v5) * TEXCOORD5.x;
    vec4 v8 = v7;
    v8.z = v5 * TEXCOORD5.y;
    vec4 v9 = v8;
    v9.w = v4 * TEXCOORD5.y;
    vec3 v10 = (POSITION + (CB0[4].xyz * dot(v1, v9.xy))) + (CB0[5].xyz * dot(v1, v9.zw));
    gl_Position = vec4((v0.x * 2.0) - 1.0, 1.0 - (v0.y * 2.0), 0.0, 1.0);
    VARYING0 = ((v10 + (normalize(CB0[7].xyz - v10) * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
}

