#version 150

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
#include <Globals.h>
uniform vec4 CB1[4];
uniform vec4 CB0[53];
in vec3 POSITION;
in vec2 TEXCOORD5;
in vec2 TEXCOORD1;
in vec2 TEXCOORD2;
in vec4 TEXCOORD3;
in vec2 TEXCOORD4;
out vec3 VARYING0;
out vec4 VARYING1;
out vec2 VARYING2;

void main()
{
    vec2 v0 = (TEXCOORD2 * 2.0) - vec2(1.0);
    vec2 v1 = TEXCOORD1 * vec2(0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    float v2 = v1.x;
    float v3 = cos(v2);
    float v4 = sin(v2);
    vec4 v5 = vec4(0.0);
    v5.x = v3 * TEXCOORD5.x;
    vec4 v6 = v5;
    v6.y = (-v4) * TEXCOORD5.x;
    vec4 v7 = v6;
    v7.z = v4 * TEXCOORD5.y;
    vec4 v8 = v7;
    v8.w = v3 * TEXCOORD5.y;
    vec4 v9 = (vec4(POSITION, 1.0) + (CB0[4] * dot(v0, v8.xy))) + (CB0[5] * dot(v0, v8.zw));
    vec4 v10 = v9 + (CB0[6] * CB1[1].x);
    mat4 v11 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v12 = v9 * v11;
    vec3 v13 = vec3(TEXCOORD2.x, TEXCOORD2.y, vec3(0.0).z);
    v13.y = 1.0 - TEXCOORD2.y;
    vec3 v14 = v13;
    v14.z = length(CB0[7].xyz - v10.xyz);
    vec4 v15 = v10 * v11;
    vec4 v16 = v12;
    v16.z = (v15.z * v12.w) / v15.w;
    vec2 v17 = (TEXCOORD4 + ((TEXCOORD2 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v18 = v17;
    v18.y = 1.0 - v17.y;
    gl_Position = v16;
    VARYING0 = v14;
    VARYING1 = TEXCOORD3 * 0.0039215688593685626983642578125;
    VARYING2 = v18;
}

