#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <GrassParams.h>
#include <GrassPerFrameParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[2];
uniform vec4 CB2[3];
attribute vec4 POSITION;
attribute vec4 NORMAL;
varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec3 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;

void main()
{
    vec4 v0 = POSITION * vec4(0.00390625);
    vec3 v1 = (NORMAL.xyz * 2.0) - vec3(1.0);
    vec2 v2 = CB2[2].zw + (vec2(0.5) * CB2[1].z);
    vec3 v3 = vec3(CB2[2].x, 0.0, CB2[2].y);
    float v4 = (NORMAL.w > 0.100000001490116119384765625) ? 0.0 : 0.4000000059604644775390625;
    vec2 v5 = v0.xz;
    vec2 v6 = v5 + (v2 * 2.0);
    vec2 v7 = floor(v6);
    vec2 v8 = fract(v6);
    vec2 v9 = (v8 * v8) * (vec2(3.0) - (v8 * 2.0));
    vec2 v10 = fract((v7 * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v11 = v10.x;
    float v12 = v10.y;
    vec2 v13 = fract(((v7 + vec2(1.0, 0.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v14 = v13.x;
    float v15 = v13.y;
    float v16 = v9.x;
    vec2 v17 = fract(((v7 + vec2(0.0, 1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v18 = v17.x;
    float v19 = v17.y;
    vec2 v20 = fract(((v7 + vec2(1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v21 = v20.x;
    float v22 = v20.y;
    vec3 v23 = (v0.xyz + CB1[0].xyz) + (((v3 * mix(mix((-1.0) + (2.0 * fract((v11 * v12) * (v11 + v12))), (-1.0) + (2.0 * fract((v14 * v15) * (v14 + v15))), v16), mix((-1.0) + (2.0 * fract((v18 * v19) * (v18 + v19))), (-1.0) + (2.0 * fract((v21 * v22) * (v21 + v22))), v16), v9.y)) * v4) + (v3 * (v4 * CB2[1].w)));
    vec2 v24 = (v5 * 0.07999999821186065673828125) + (v2 * (-0.89999997615814208984375));
    vec2 v25 = floor(v24);
    vec2 v26 = fract(v24);
    vec2 v27 = (v26 * v26) * (vec2(3.0) - (v26 * 2.0));
    vec2 v28 = fract((v25 * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v29 = v28.x;
    float v30 = v28.y;
    vec2 v31 = fract(((v25 + vec2(1.0, 0.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v32 = v31.x;
    float v33 = v31.y;
    float v34 = v27.x;
    vec2 v35 = fract(((v25 + vec2(0.0, 1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v36 = v35.x;
    float v37 = v35.y;
    vec2 v38 = fract(((v25 + vec2(1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v39 = v38.x;
    float v40 = v38.y;
    float v41 = v23.y - (((0.25 * v4) * CB2[1].w) * (mix(mix((-1.0) + (2.0 * fract((v29 * v30) * (v29 + v30))), (-1.0) + (2.0 * fract((v32 * v33) * (v32 + v33))), v34), mix((-1.0) + (2.0 * fract((v36 * v37) * (v36 + v37))), (-1.0) + (2.0 * fract((v39 * v40) * (v39 + v40))), v34), v27.y) + 1.5));
    vec3 v42 = v23;
    v42.y = v41;
    float v43 = v41 - (smoothstep(0.0, 1.0, 1.0 - ((CB1[1].x - length(CB0[7].xyz - v42)) * CB1[1].y)) * v0.w);
    vec3 v44 = v42;
    v44.y = v43;
    vec4 v45 = vec4(v23.x, v43, v23.z, 1.0);
    vec3 v46 = CB0[7].xyz - v44;
    float v47 = length(v46);
    vec3 v48 = -CB0[11].xyz;
    float v49 = abs(dot(v1, v48));
    float v50 = exp2((-clamp(NORMAL.w, 0.0, 1.0)) * CB2[1].x);
    vec3 v51 = v46 / vec3(v47);
    vec3 v52 = normalize(v48 + v51);
    float v53 = 1.0 - clamp(((v47 - CB2[1].y) + 40.0) * 0.02500000037252902984619140625, 0.0, 1.0);
    vec4 v54 = vec4(0.0);
    v54.x = (v49 * 0.5) + 0.5;
    vec4 v55 = v54;
    v55.y = abs(dot(v52, v1));
    vec4 v56 = v55;
    v56.z = (dot(v51, CB0[11].xyz) * v53) * v50;
    vec4 v57 = v56;
    v57.w = (pow(clamp(v52.y, 0.0, 1.0), 8.0) * v53) * v50;
    gl_Position = v45 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec4(((v44 + vec3(0.0, 6.0, 0.0)).yxz * CB0[16].xyz) + CB0[17].xyz, clamp(exp2((CB0[13].z * v47) + CB0[13].x) - CB0[13].w, 0.0, 1.0));
    VARYING1 = vec3(dot(CB0[20], v45), dot(CB0[21], v45), dot(CB0[22], v45));
    VARYING2 = (CB0[10].xyz * clamp((v49 + 0.89999997615814208984375) * 0.52631580829620361328125, 0.0, 1.0)) * v50;
    VARYING3 = v57;
    VARYING4 = v46;
}

