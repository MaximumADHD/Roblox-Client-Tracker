#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <InstanceData.h>
const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

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

void main()
{
    vec3 v2 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v3 = int(NORMAL.w);
    vec3 v4 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v5 = vec4(0.0);
    v5.x = v4.x;
    vec4 v6 = v5;
    v6.y = v4.y;
    vec4 v7 = v6;
    v7.z = v4.z;
    vec3 v8 = cross(CB1[gl_InstanceID * 7 + 0].xyz, cross(CB1[gl_InstanceID * 7 + 0].xyz, v7.xyz) + (v7.xyz * CB1[gl_InstanceID * 7 + 0].w));
    vec3 v9 = ((v7.xyz + v8) + v8) + CB1[gl_InstanceID * 7 + 1].xyz;
    vec3 v10 = ((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875));
    vec3 v11 = cross(CB1[gl_InstanceID * 7 + 0].xyz, cross(CB1[gl_InstanceID * 7 + 0].xyz, v10) + (v10 * CB1[gl_InstanceID * 7 + 0].w));
    vec3 v12 = (v10 + v11) + v11;
    vec3 v13 = v12 * inversesqrt(max(dot(v12, v12), 9.9999997473787516355514526367188e-05));
    vec3 v14 = cross(CB1[gl_InstanceID * 7 + 0].xyz, cross(CB1[gl_InstanceID * 7 + 0].xyz, v2) + (v2 * CB1[gl_InstanceID * 7 + 0].w));
    vec3 v15 = (v2 + v14) + v14;
    vec2 v16 = vec2(0.0);
    v16.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v3]);
    vec2 v17 = v16;
    v17.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v3]);
    vec2 v18 = (TEXCOORD0 * v17) + CB1[gl_InstanceID * 7 + 6].xy;
    vec4 v19 = vec4(0.0);
    v19.w = sign(TEXCOORD2.w - 0.5);
    vec2 v20 = vec2(v18.x * 4.0, v18.y);
    bvec2 v21 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v22 = vec2(v21.x ? vec2(0.0).x : v20.x, v21.y ? vec2(0.0).y : v20.y);
    vec3 v23 = vec3(0.0);
    v23.z = TEXCOORD2.w - 2.0;
    float v24 = v9.x;
    vec4 v25 = vec4(v24, v9.yz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v26 = v23;
    v26.x = v22.x;
    vec3 v27 = v26;
    v27.y = v22.y;
    vec3 v28 = ((v9 + (v13 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v29 = vec4(0.0);
    v29.x = v28.x;
    vec4 v30 = v29;
    v30.y = v28.y;
    vec4 v31 = v30;
    v31.z = v28.z;
    vec4 v32 = v31;
    v32.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v33 = vec4(v24, v9.yz, 0.0);
    v33.w = CB1[gl_InstanceID * 7 + 5].w;
    vec4 v34 = v19;
    v34.x = v15.x;
    vec4 v35 = v34;
    v35.y = v15.y;
    vec4 v36 = v35;
    v36.z = v15.z;
    vec4 v37 = vec4(v13, 0.0);
    v37.w = 0.0;
    gl_Position = v25;
    VARYING0 = v18;
    VARYING1 = v27;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v32;
    VARYING4 = vec4(CB0[11].xyz - v9, v25.w);
    VARYING5 = v37;
    VARYING6 = v36;
    VARYING7 = v33;
}

