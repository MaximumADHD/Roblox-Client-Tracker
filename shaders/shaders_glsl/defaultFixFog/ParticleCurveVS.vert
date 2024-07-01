#version 110

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
#include <Globals.h>
uniform vec4 CB1[4];
uniform vec4 CB0[58];
attribute vec3 POSITION;
attribute vec2 TEXCOORD5;
attribute vec2 TEXCOORD1;
attribute vec2 TEXCOORD2;
attribute vec4 TEXCOORD3;
attribute vec2 TEXCOORD4;
attribute float TEXCOORD6;
varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec2 VARYING2;

void main()
{
    vec2 v0 = (TEXCOORD2 * 2.0) - vec2(1.0);
    vec2 v1 = TEXCOORD1 * vec2(0.00019175345369148999452590942382812, 3.0518509447574615478515625e-05);
    float v2 = v1.x;
    float v3;
    float v4;
    if (TEXCOORD6 <= 0.0)
    {
        float v5 = 1.0 - TEXCOORD6;
        v4 = 1.0 / v5;
        v3 = v5;
    }
    else
    {
        float v6 = 1.0 + TEXCOORD6;
        v4 = v6;
        v3 = 1.0 / v6;
    }
    float v7 = cos(v2);
    float v8 = sin(v2);
    vec4 v9 = vec4(0.0);
    v9.x = (v7 * TEXCOORD5.x) * v3;
    vec4 v10 = v9;
    v10.y = ((-v8) * TEXCOORD5.x) * v4;
    vec4 v11 = v10;
    v11.z = (v8 * TEXCOORD5.y) * v3;
    vec4 v12 = v11;
    v12.w = (v7 * TEXCOORD5.y) * v4;
    vec4 v13 = (vec4(POSITION, 1.0) + (CB0[8] * dot(v0, v12.xy))) + (CB0[9] * dot(v0, v12.zw));
    vec4 v14 = v13 + (CB0[10] * CB1[1].x);
    mat4 v15 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v16 = v13 * v15;
    vec3 v17 = vec3(0.0);
    v17.x = TEXCOORD2.x;
    vec3 v18 = v17;
    v18.y = TEXCOORD2.y;
    vec3 v19 = v18;
    v19.y = 1.0 - TEXCOORD2.y;
    vec3 v20 = v19;
    v20.z = length(CB0[11].xyz - v14.xyz);
    vec4 v21 = v14 * v15;
    vec4 v22 = v16;
    v22.z = (v21.z * v16.w) / v21.w;
    vec2 v23 = (TEXCOORD4 + ((TEXCOORD2 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v24 = v23;
    v24.y = 1.0 - v23.y;
    gl_Position = v22;
    VARYING0 = v20;
    VARYING1 = TEXCOORD3 * 0.0039215688593685626983642578125;
    VARYING2 = v24;
}

