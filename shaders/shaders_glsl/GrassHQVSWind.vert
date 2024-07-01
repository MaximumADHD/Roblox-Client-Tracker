#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <GrassParams.h>
#include <GrassPerFrameParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[2];
uniform vec4 CB2[4];
attribute vec4 POSITION;
attribute vec4 NORMAL;
varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec3 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;

void main()
{
    vec4 v0 = POSITION * CB1[0].w;
    vec2 v1 = CB2[2].zw + (vec2(0.5) * CB2[1].z);
    vec3 v2 = vec3(CB2[2].x, 0.0, CB2[2].y);
    float v3 = ((NORMAL.w > 0.100000001490116119384765625) ? 0.0 : 0.4000000059604644775390625) * CB1[1].z;
    vec2 v4 = v0.xz;
    vec2 v5 = v4 + (v1 * 2.0);
    vec2 v6 = floor(v5);
    vec2 v7 = fract(v5);
    vec2 v8 = (v7 * v7) * (vec2(3.0) - (v7 * 2.0));
    vec2 v9 = fract((v6 * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v10 = v9.x;
    float v11 = v9.y;
    vec2 v12 = fract(((v6 + vec2(1.0, 0.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v13 = v12.x;
    float v14 = v12.y;
    float v15 = v8.x;
    vec2 v16 = fract(((v6 + vec2(0.0, 1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v17 = v16.x;
    float v18 = v16.y;
    vec2 v19 = fract(((v6 + vec2(1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v20 = v19.x;
    float v21 = v19.y;
    vec3 v22 = (v0.xyz + CB1[0].xyz) + (((v2 * mix(mix((-1.0) + (2.0 * fract((v10 * v11) * (v10 + v11))), (-1.0) + (2.0 * fract((v13 * v14) * (v13 + v14))), v15), mix((-1.0) + (2.0 * fract((v17 * v18) * (v17 + v18))), (-1.0) + (2.0 * fract((v20 * v21) * (v20 + v21))), v15), v8.y)) * v3) + (v2 * (v3 * CB2[1].w)));
    vec2 v23 = (v4 * 0.07999999821186065673828125) + (v1 * (-0.89999997615814208984375));
    vec2 v24 = floor(v23);
    vec2 v25 = fract(v23);
    vec2 v26 = (v25 * v25) * (vec2(3.0) - (v25 * 2.0));
    vec2 v27 = fract((v24 * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v28 = v27.x;
    float v29 = v27.y;
    vec2 v30 = fract(((v24 + vec2(1.0, 0.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v31 = v30.x;
    float v32 = v30.y;
    float v33 = v26.x;
    vec2 v34 = fract(((v24 + vec2(0.0, 1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v35 = v34.x;
    float v36 = v34.y;
    vec2 v37 = fract(((v24 + vec2(1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v38 = v37.x;
    float v39 = v37.y;
    float v40 = v22.y - (((0.25 * v3) * CB2[1].w) * (mix(mix((-1.0) + (2.0 * fract((v28 * v29) * (v28 + v29))), (-1.0) + (2.0 * fract((v31 * v32) * (v31 + v32))), v33), mix((-1.0) + (2.0 * fract((v35 * v36) * (v35 + v36))), (-1.0) + (2.0 * fract((v38 * v39) * (v38 + v39))), v33), v26.y) + 1.5));
    vec3 v41 = v22;
    v41.y = v40;
    float v42 = v40 - (smoothstep(0.0, 1.0, 1.0 - ((CB1[1].x - length(CB0[11].xyz - v41)) * CB1[1].y)) * v0.w);
    vec3 v43 = v41;
    v43.y = v42;
    vec4 v44 = vec4(v22.x, v42, v22.z, 1.0);
    vec3 v45 = CB0[11].xyz - v43;
    float v46 = length(v45);
    vec3 v47 = (NORMAL.xyz * 2.0) - vec3(1.0);
    vec3 v48 = -CB0[16].xyz;
    float v49 = abs(dot(v47, v48));
    float v50 = exp2((((-clamp(NORMAL.w, 0.0, 1.0)) * CB2[3].x) + CB2[3].y) * CB2[1].x);
    vec3 v51 = v45 / vec3(v46);
    vec3 v52 = normalize(v48 + v51);
    float v53 = 1.0 - clamp(((v46 - CB2[1].y) + 40.0) * 0.02500000037252902984619140625, 0.0, 1.0);
    vec4 v54 = vec4(0.0);
    v54.x = (v49 * 0.5) + 0.5;
    vec4 v55 = v54;
    v55.y = abs(dot(v52, v47));
    vec4 v56 = v55;
    v56.z = (dot(v51, CB0[16].xyz) * v53) * v50;
    vec4 v57 = v56;
    v57.w = (pow(clamp(v52.y, 0.0, 1.0), 8.0) * v53) * v50;
    gl_Position = v44 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec4(((v43 + vec3(0.0, 6.0, 0.0)).yxz * CB0[21].xyz) + CB0[22].xyz, clamp(exp2((CB0[18].z * v46) + CB0[18].x) - CB0[18].w, 0.0, 1.0));
    VARYING1 = vec3(dot(CB0[25], v44), dot(CB0[26], v44), dot(CB0[27], v44));
    VARYING2 = (CB0[15].xyz * clamp((v49 + 0.89999997615814208984375) * 0.52631580829620361328125, 0.0, 1.0)) * v50;
    VARYING3 = v57;
    VARYING4 = v45;
}

