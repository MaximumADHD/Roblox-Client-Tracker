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
out vec3 VARYING7;

void main()
{
    vec3 v0 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 v1 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v2 = POSITION;
    v2.x = v1.x;
    vec4 v3 = v2;
    v3.y = v1.y;
    vec4 v4 = v3;
    v4.z = v1.z;
    float v5 = dot(CB1[gl_InstanceID * 7 + 0], v4);
    float v6 = dot(CB1[gl_InstanceID * 7 + 1], v4);
    float v7 = dot(CB1[gl_InstanceID * 7 + 2], v4);
    vec3 v8 = vec3(v5, v6, v7);
    vec3 v9 = vec3(dot(CB1[gl_InstanceID * 7 + 0].xyz, v0), dot(CB1[gl_InstanceID * 7 + 1].xyz, v0), dot(CB1[gl_InstanceID * 7 + 2].xyz, v0));
    vec3 v10 = CB0[11].xyz - v8;
    vec2 v11 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y);
    bvec2 v12 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v13 = vec2(v12.x ? vec2(0.0).x : v11.x, v12.y ? vec2(0.0).y : v11.y);
    vec3 v14 = vec3(0.0);
    v14.z = TEXCOORD2.w - 2.0;
    vec3 v15 = -CB0[16].xyz;
    float v16 = dot(v9, v15);
    vec4 v17 = vec4(v5, v6, v7, 1.0);
    vec4 v18 = v17 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v19 = v14;
    v19.x = v13.x;
    vec3 v20 = v19;
    v20.y = v13.y;
    vec3 v21 = ((v8 + (v9 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v22 = vec4(0.0);
    v22.x = v21.x;
    vec4 v23 = v22;
    v23.y = v21.y;
    vec4 v24 = v23;
    v24.z = v21.z;
    vec4 v25 = v24;
    v25.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    float v26 = CB1[gl_InstanceID * 7 + 6].z * 0.50359976291656494140625;
    float v27 = clamp(v16, 0.0, 1.0);
    vec3 v28 = (CB0[15].xyz * v27) + (CB0[17].xyz * clamp(-v16, 0.0, 1.0));
    vec4 v29 = vec4(0.0);
    v29.x = v28.x;
    vec4 v30 = v29;
    v30.y = v28.y;
    vec4 v31 = v30;
    v31.z = v28.z;
    vec4 v32 = v31;
    v32.w = v27 * ((CB1[gl_InstanceID * 7 + 6].z * 0.055555999279022216796875) * exp2((v26 * dot(v9, normalize(v15 + normalize(v10)))) - v26));
    vec4 v33 = vec4(dot(CB0[25], v17), dot(CB0[26], v17), dot(CB0[27], v17), 0.0);
    v33.w = CB1[gl_InstanceID * 7 + 6].w;
    gl_Position = v18;
    VARYING0 = TEXCOORD0;
    VARYING1 = v20;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v25;
    VARYING4 = vec4(v10, v18.w);
    VARYING5 = v32;
    VARYING6 = v33;
    VARYING7 = vec3(CB1[gl_InstanceID * 7 + 6].xy, CB1[gl_InstanceID * 7 + 5].w);
}

