#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <InstanceData.h>
uniform vec4 CB0[58];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 TEXCOORD1;
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
    vec3 v1 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v2 = vec4(0.0);
    v2.x = v1.x;
    vec4 v3 = v2;
    v3.y = v1.y;
    vec4 v4 = v3;
    v4.z = v1.z;
    vec3 v5 = cross(CB1[gl_InstanceID * 7 + 0].xyz, cross(CB1[gl_InstanceID * 7 + 0].xyz, v4.xyz) + (v4.xyz * CB1[gl_InstanceID * 7 + 0].w));
    vec3 v6 = ((v4.xyz + v5) + v5) + CB1[gl_InstanceID * 7 + 1].xyz;
    vec3 v7 = ((vec3(TEXCOORD1.xy, COLOR0.w) * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875));
    vec3 v8 = cross(CB1[gl_InstanceID * 7 + 0].xyz, cross(CB1[gl_InstanceID * 7 + 0].xyz, v7) + (v7 * CB1[gl_InstanceID * 7 + 0].w));
    vec3 v9 = (v7 + v8) + v8;
    vec3 v10 = v9 * inversesqrt(max(dot(v9, v9), 9.9999997473787516355514526367188e-05));
    vec3 v11 = cross(CB1[gl_InstanceID * 7 + 0].xyz, cross(CB1[gl_InstanceID * 7 + 0].xyz, v0) + (v0 * CB1[gl_InstanceID * 7 + 0].w));
    vec3 v12 = (v0 + v11) + v11;
    vec4 v13 = vec4(0.0);
    v13.w = sign(TEXCOORD2.w - 0.5);
    vec2 v14 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y);
    bvec2 v15 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v16 = vec2(v15.x ? vec2(0.0).x : v14.x, v15.y ? vec2(0.0).y : v14.y);
    vec3 v17 = vec3(0.0);
    v17.z = TEXCOORD2.w - 2.0;
    float v18 = v6.x;
    vec4 v19 = vec4(v18, v6.yz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v20 = v17;
    v20.x = v16.x;
    vec3 v21 = v20;
    v21.y = v16.y;
    vec3 v22 = ((v6 + (v10 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v23 = vec4(0.0);
    v23.x = v22.x;
    vec4 v24 = v23;
    v24.y = v22.y;
    vec4 v25 = v24;
    v25.z = v22.z;
    vec4 v26 = v25;
    v26.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v27 = vec4(v18, v6.yz, 0.0);
    v27.w = 0.0;
    vec4 v28 = v13;
    v28.x = v12.x;
    vec4 v29 = v28;
    v29.y = v12.y;
    vec4 v30 = v29;
    v30.z = v12.z;
    vec4 v31 = vec4(v10, 0.0);
    v31.w = 0.0;
    gl_Position = v19;
    VARYING0 = TEXCOORD0;
    VARYING1 = v21;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(vec4(COLOR0.xyz, TEXCOORD1.w) * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v26;
    VARYING4 = vec4(CB0[11].xyz - v6, v19.w);
    VARYING5 = v31;
    VARYING6 = v30;
    VARYING7 = v27;
    VARYING8 = vec3(CB1[gl_InstanceID * 7 + 6].xy, CB1[gl_InstanceID * 7 + 5].w);
}

