#version 150

#extension GL_ARB_shading_language_include : require
#include <GrassParams.h>
#include <GrassPerFrameParams.h>
#include <Globals.h>
uniform vec4 CB1[2];
uniform vec4 CB2[4];
uniform vec4 CB0[57];
in vec4 POSITION;
in vec4 NORMAL;

void main()
{
    vec4 v0 = POSITION * CB1[0].w;
    vec2 v1 = v0.xz + (vec2(0.5) * (2.0 * CB2[1].z));
    vec2 v2 = floor(v1);
    vec2 v3 = fract(v1);
    vec2 v4 = (v3 * v3) * (vec2(3.0) - (v3 * 2.0));
    vec2 v5 = fract((v2 * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v6 = v5.x;
    float v7 = v5.y;
    vec2 v8 = fract(((v2 + vec2(1.0, 0.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v9 = v8.x;
    float v10 = v8.y;
    float v11 = v4.x;
    vec2 v12 = fract(((v2 + vec2(0.0, 1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v13 = v12.x;
    float v14 = v12.y;
    vec2 v15 = fract(((v2 + vec2(1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v16 = v15.x;
    float v17 = v15.y;
    vec3 v18 = (v0.xyz + CB1[0].xyz) + ((vec3(0.5, 0.0, 0.5) * mix(mix((-1.0) + (2.0 * fract((v6 * v7) * (v6 + v7))), (-1.0) + (2.0 * fract((v9 * v10) * (v9 + v10))), v11), mix((-1.0) + (2.0 * fract((v13 * v14) * (v13 + v14))), (-1.0) + (2.0 * fract((v16 * v17) * (v16 + v17))), v11), v4.y)) * (((NORMAL.w > 0.100000001490116119384765625) ? 0.0 : 0.4000000059604644775390625) * CB1[1].z));
    vec4 v19 = vec4(v18.x, v18.y - (smoothstep(0.0, 1.0, 1.0 - ((CB1[1].x - length(CB0[11].xyz - v18)) * CB1[1].y)) * v0.w), v18.z, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v20 = v19;
    v20.z = v19.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    gl_Position = v20;
}

