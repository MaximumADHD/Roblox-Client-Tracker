#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <GrassParams.h>
#include <GrassPerFrameParams.h>
uniform vec4 CB0[57];
uniform vec4 CB1[2];
uniform vec4 CB2[4];
in vec4 POSITION;
in vec4 NORMAL;
out vec4 VARYING0;
out vec3 VARYING1;
out vec3 VARYING2;
out vec4 VARYING3;
out vec3 VARYING4;

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
    float v19 = v18.y - (smoothstep(0.0, 1.0, 1.0 - ((CB1[1].x - length(CB0[11].xyz - v18)) * CB1[1].y)) * v0.w);
    vec3 v20 = v18;
    v20.y = v19;
    vec4 v21 = vec4(v18.x, v19, v18.z, 1.0);
    vec3 v22 = CB0[11].xyz - v20;
    float v23 = length(v22);
    vec3 v24 = (NORMAL.xyz * 2.0) - vec3(1.0);
    vec3 v25 = -CB0[16].xyz;
    float v26 = abs(dot(v24, v25));
    float v27 = exp2((((-clamp(NORMAL.w, 0.0, 1.0)) * CB2[3].x) + CB2[3].y) * CB2[1].x);
    vec3 v28 = v22 / vec3(v23);
    vec3 v29 = normalize(v25 + v28);
    float v30 = 1.0 - clamp(((v23 - CB2[1].y) + 40.0) * 0.02500000037252902984619140625, 0.0, 1.0);
    vec4 v31 = vec4(0.0);
    v31.x = (v26 * 0.5) + 0.5;
    vec4 v32 = v31;
    v32.y = abs(dot(v29, v24));
    vec4 v33 = v32;
    v33.z = (dot(v28, CB0[16].xyz) * v30) * v27;
    vec4 v34 = v33;
    v34.w = (pow(clamp(v29.y, 0.0, 1.0), 8.0) * v30) * v27;
    gl_Position = v21 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec4(((v20 + vec3(0.0, 6.0, 0.0)).yxz * CB0[21].xyz) + CB0[22].xyz, clamp(exp2((CB0[18].z * v23) + CB0[18].x) - CB0[18].w, 0.0, 1.0));
    VARYING1 = vec3(dot(CB0[25], v21), dot(CB0[26], v21), dot(CB0[27], v21));
    VARYING2 = (CB0[15].xyz * clamp((v26 + 0.89999997615814208984375) * 0.52631580829620361328125, 0.0, 1.0)) * v27;
    VARYING3 = v34;
    VARYING4 = v22;
}

