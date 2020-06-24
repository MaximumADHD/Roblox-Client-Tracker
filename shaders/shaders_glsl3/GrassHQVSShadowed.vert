#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <GrassParams.h>
#include <GrassPerFrameParams.h>
uniform vec4 CB0[52];
uniform vec4 CB1[2];
uniform vec4 CB2[2];
in vec4 POSITION;
in vec4 NORMAL;
out vec4 VARYING0;
out vec3 VARYING1;
out vec3 VARYING2;
out vec4 VARYING3;

void main()
{
    vec4 v0 = POSITION * vec4(0.00390625);
    vec3 v1 = NORMAL.xyz * 2.0;
    vec2 v2 = v0.xz + (vec2(0.5) * (2.0 * CB2[1].z));
    vec2 v3 = floor(v2);
    vec2 v4 = fract(v2);
    vec2 v5 = (v4 * v4) * (vec2(3.0) - (v4 * 2.0));
    vec2 v6 = fract((v3 * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v7 = v6.x;
    float v8 = v6.y;
    vec2 v9 = fract(((v3 + vec2(1.0, 0.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v10 = v9.x;
    float v11 = v9.y;
    float v12 = v5.x;
    vec2 v13 = fract(((v3 + vec2(0.0, 1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v14 = v13.x;
    float v15 = v13.y;
    vec2 v16 = fract(((v3 + vec2(1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v17 = v16.x;
    float v18 = v16.y;
    vec3 v19 = (v0.xyz + CB1[0].xyz) + ((vec3(0.5, 0.0, 0.5) * mix(mix((-1.0) + (2.0 * fract((v7 * v8) * (v7 + v8))), (-1.0) + (2.0 * fract((v10 * v11) * (v10 + v11))), v12), mix((-1.0) + (2.0 * fract((v14 * v15) * (v14 + v15))), (-1.0) + (2.0 * fract((v17 * v18) * (v17 + v18))), v12), v5.y)) * ((NORMAL.w > 0.100000001490116119384765625) ? 0.0 : 0.4000000059604644775390625));
    float v20 = v19.y - (smoothstep(0.0, 1.0, 1.0 - ((CB1[1].x - length(CB0[7].xyz - v19)) * CB1[1].y)) * v0.w);
    vec3 v21 = v19;
    v21.y = v20;
    vec3 v22 = CB0[7].xyz - v21;
    float v23 = length(v22);
    vec3 v24 = (v1 - vec3(1.0)) * sign(dot(CB0[11].xyz, vec3(1.0) - v1));
    vec3 v25 = -CB0[11].xyz;
    float v26 = dot(v24, v25);
    float v27 = exp2((-clamp(NORMAL.w, 0.0, 1.0)) * CB2[1].x);
    vec3 v28 = v22 / vec3(v23);
    vec3 v29 = normalize(v25 + v28);
    float v30 = 1.0 - clamp(((v23 - CB2[1].y) + 40.0) * 0.02500000037252902984619140625, 0.0, 1.0);
    vec4 v31 = vec4(0.0);
    v31.x = (v26 * 0.5) + 0.5;
    vec4 v32 = v31;
    v32.y = dot(v29, v24);
    vec4 v33 = v32;
    v33.z = (dot(v28, CB0[11].xyz) * v30) * v27;
    vec4 v34 = v33;
    v34.w = (pow(clamp(v29.y, 0.0, 1.0), 8.0) * v30) * v27;
    gl_Position = vec4(v19.x, v20, v19.z, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec4(((v21 + vec3(0.0, 6.0, 0.0)).yxz * CB0[16].xyz) + CB0[17].xyz, clamp(exp2((CB0[13].z * v23) + CB0[13].x) - CB0[13].w, 0.0, 1.0));
    VARYING1 = v21;
    VARYING2 = (CB0[10].xyz * clamp((v26 + 0.89999997615814208984375) * 0.52631580829620361328125, 0.0, 1.0)) * v27;
    VARYING3 = v34;
}

