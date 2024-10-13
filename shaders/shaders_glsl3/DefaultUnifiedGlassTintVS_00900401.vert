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
out vec3 VARYING7;

void main()
{
    vec3 v0 = normalize(((vec3(TEXCOORD1.xy, COLOR0.w) * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
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
    vec3 v11 = normalize(v10);
    vec3 v12 = v9 * ((dot(v9, v11) > 0.0) ? 1.0 : (-1.0));
    vec2 v13 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y);
    bvec2 v14 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v15 = vec2(v14.x ? vec2(0.0).x : v13.x, v14.y ? vec2(0.0).y : v13.y);
    vec3 v16 = vec3(0.0);
    v16.z = TEXCOORD2.w - 2.0;
    vec3 v17 = -CB0[16].xyz;
    float v18 = dot(v12, v17);
    vec4 v19 = vec4(v5, v6, v7, 1.0);
    vec4 v20 = v19 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v21 = v16;
    v21.x = v15.x;
    vec3 v22 = v21;
    v22.y = v15.y;
    vec3 v23 = ((v8 + (v12 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v24 = vec4(0.0);
    v24.x = v23.x;
    vec4 v25 = v24;
    v25.y = v23.y;
    vec4 v26 = v25;
    v26.z = v23.z;
    vec4 v27 = v26;
    v27.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    float v28 = CB1[gl_InstanceID * 7 + 6].z * 0.50359976291656494140625;
    float v29 = clamp(v18, 0.0, 1.0);
    vec3 v30 = (CB0[15].xyz * v29) + (CB0[17].xyz * clamp(-v18, 0.0, 1.0));
    vec4 v31 = vec4(0.0);
    v31.x = v30.x;
    vec4 v32 = v31;
    v32.y = v30.y;
    vec4 v33 = v32;
    v33.z = v30.z;
    vec4 v34 = v33;
    v34.w = v29 * ((CB1[gl_InstanceID * 7 + 6].z * 0.055555999279022216796875) * exp2((v28 * dot(v12, normalize(v17 + v11))) - v28));
    vec4 v35 = vec4(dot(CB0[25], v19), dot(CB0[26], v19), dot(CB0[27], v19), 0.0);
    v35.w = CB1[gl_InstanceID * 7 + 6].w;
    gl_Position = v20;
    VARYING0 = TEXCOORD0;
    VARYING1 = v22;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(vec4(COLOR0.xyz, TEXCOORD1.w) * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v27;
    VARYING4 = vec4(v10, v20.w);
    VARYING5 = v34;
    VARYING6 = v35;
    VARYING7 = vec3(CB1[gl_InstanceID * 7 + 6].xy, CB1[gl_InstanceID * 7 + 5].w);
}

