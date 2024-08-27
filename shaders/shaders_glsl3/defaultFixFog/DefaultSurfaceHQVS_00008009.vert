#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <InstanceData.h>
uniform vec4 CB0[58];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec4 TEXCOORD2;
in vec4 COLOR0;
out vec2 VARYING0;
out vec3 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out vec3 VARYING8;

void main()
{
    vec3 v0 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 v2 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v3 = POSITION;
    v3.x = v2.x;
    vec4 v4 = v3;
    v4.y = v2.y;
    vec4 v5 = v4;
    v5.z = v2.z;
    float v6 = dot(CB1[gl_InstanceID * 7 + 0], v5);
    float v7 = dot(CB1[gl_InstanceID * 7 + 1], v5);
    float v8 = dot(CB1[gl_InstanceID * 7 + 2], v5);
    vec3 v9 = vec3(v6, v7, v8);
    float v10 = dot(CB1[gl_InstanceID * 7 + 0].xyz, v1);
    float v11 = dot(CB1[gl_InstanceID * 7 + 1].xyz, v1);
    float v12 = dot(CB1[gl_InstanceID * 7 + 2].xyz, v1);
    vec4 v13 = vec4(0.0);
    v13.w = sign(TEXCOORD2.w - 0.5);
    vec2 v14 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y);
    bvec2 v15 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v16 = vec2(v15.x ? vec2(0.0).x : v14.x, v15.y ? vec2(0.0).y : v14.y);
    vec3 v17 = vec3(0.0);
    v17.z = TEXCOORD2.w - 2.0;
    vec4 v18 = vec4(v6, v7, v8, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v19 = v17;
    v19.x = v16.x;
    vec3 v20 = v19;
    v20.y = v16.y;
    vec3 v21 = ((v9 + (vec3(v10, v11, v12) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v22 = vec4(0.0);
    v22.x = v21.x;
    vec4 v23 = v22;
    v23.y = v21.y;
    vec4 v24 = v23;
    v24.z = v21.z;
    vec4 v25 = v24;
    v25.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v26 = vec4(v6, v7, v8, 0.0);
    v26.w = 0.0;
    vec4 v27 = v13;
    v27.x = dot(CB1[gl_InstanceID * 7 + 0].xyz, v0);
    vec4 v28 = v27;
    v28.y = dot(CB1[gl_InstanceID * 7 + 1].xyz, v0);
    vec4 v29 = v28;
    v29.z = dot(CB1[gl_InstanceID * 7 + 2].xyz, v0);
    vec4 v30 = vec4(v10, v11, v12, 0.0);
    v30.w = 0.0;
    gl_Position = v18;
    VARYING0 = TEXCOORD0;
    VARYING1 = v20;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v25;
    VARYING4 = vec4(CB0[11].xyz - v9, v18.w);
    VARYING5 = v30;
    VARYING6 = v29;
    VARYING7 = v26;
    VARYING8 = vec3(CB1[gl_InstanceID * 7 + 6].xy, CB1[gl_InstanceID * 7 + 5].w);
}

