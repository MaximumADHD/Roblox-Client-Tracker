#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[3];
in vec4 POSITION;
in vec4 TEXCOORD0;
in vec2 TEXCOORD1;
in vec2 TEXCOORD3;
out vec3 VARYING0;

void main()
{
    vec2 v0 = (TEXCOORD3 + (TEXCOORD1 * CB1[2].z)) * CB1[2].xy;
    vec2 v1 = (TEXCOORD1 * 2.0) - vec2(1.0);
    vec4 v2 = TEXCOORD0 * vec4(0.00390625, 0.00390625, 0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    vec2 v3 = v2.xy + vec2(127.0);
    float v4 = v2.z;
    float v5 = cos(v4);
    float v6 = sin(v4);
    float v7 = v3.x;
    vec4 v8 = vec4(0.0);
    v8.x = v5 * v7;
    vec4 v9 = v8;
    v9.y = (-v6) * v7;
    float v10 = v3.y;
    vec4 v11 = v9;
    v11.z = v6 * v10;
    vec4 v12 = v11;
    v12.w = v5 * v10;
    vec3 v13 = (POSITION.xyz + (CB0[4].xyz * dot(v1, v12.xy))) + (CB0[5].xyz * dot(v1, v12.zw));
    gl_Position = vec4((v0.x * 2.0) - 1.0, 1.0 - (v0.y * 2.0), 0.0, 1.0);
    VARYING0 = ((v13 + (normalize(CB0[7].xyz - v13) * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
}

