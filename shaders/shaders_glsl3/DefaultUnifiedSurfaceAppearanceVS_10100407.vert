#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <InstanceData.h>
#include <SurfaceAppearanceConsts.h>
uniform vec4 CB0[61];
uniform vec4 CB10[216];
uniform vec4 CB1[511];
uniform vec4 CB3[3];
in vec4 POSITION;
in vec4 TEXCOORD1;
in vec2 TEXCOORD0;
in vec4 TEXCOORD2;
in vec4 COLOR0;
in vec4 TEXCOORD5;
in vec4 TEXCOORD6;
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
    vec4 v5 = TEXCOORD6 * vec4(0.0039215688593685626983642578125);
    ivec4 v6 = ivec4(TEXCOORD5);
    int v7 = 3 * v6.x;
    float v8 = v5.x;
    int v9 = 3 * v6.y;
    float v10 = v5.y;
    int v11 = 3 * v6.z;
    float v12 = v5.z;
    int v13 = 3 * v6.w;
    float v14 = v5.w;
    vec4 v15 = (((CB10[v7 * 1 + 0] * v8) + (CB10[v9 * 1 + 0] * v10)) + (CB10[v11 * 1 + 0] * v12)) + (CB10[v13 * 1 + 0] * v14);
    vec4 v16 = (((CB10[(v7 + 1) * 1 + 0] * v8) + (CB10[(v9 + 1) * 1 + 0] * v10)) + (CB10[(v11 + 1) * 1 + 0] * v12)) + (CB10[(v13 + 1) * 1 + 0] * v14);
    vec4 v17 = (((CB10[(v7 + 2) * 1 + 0] * v8) + (CB10[(v9 + 2) * 1 + 0] * v10)) + (CB10[(v11 + 2) * 1 + 0] * v12)) + (CB10[(v13 + 2) * 1 + 0] * v14);
    vec4 v18 = vec4(dot(v15, v4), dot(v16, v4), dot(v17, v4), 1.0);
    vec3 v19 = vec3(dot(v15.xyz, v0), dot(v16.xyz, v0), dot(v17.xyz, v0));
    float v20 = dot(CB1[gl_InstanceID * 7 + 0], v18);
    float v21 = dot(CB1[gl_InstanceID * 7 + 1], v18);
    float v22 = dot(CB1[gl_InstanceID * 7 + 2], v18);
    vec3 v23 = vec3(v20, v21, v22);
    vec3 v24 = vec3(dot(CB1[gl_InstanceID * 7 + 0].xyz, v19), dot(CB1[gl_InstanceID * 7 + 1].xyz, v19), dot(CB1[gl_InstanceID * 7 + 2].xyz, v19));
    vec3 v25 = CB0[11].xyz - v23;
    vec3 v26 = normalize(v25);
    vec3 v27 = v24 * ((dot(v24, v26) > 0.0) ? 1.0 : (-1.0));
    vec2 v28 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y);
    bvec2 v29 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v30 = vec2(v29.x ? vec2(0.0).x : v28.x, v29.y ? vec2(0.0).y : v28.y);
    vec3 v31 = vec3(0.0);
    v31.z = TEXCOORD2.w - 2.0;
    vec3 v32 = -CB0[16].xyz;
    float v33 = dot(v27, v32);
    vec4 v34 = vec4(v20, v21, v22, 1.0);
    vec4 v35 = v34 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v36 = v31;
    v36.x = v30.x;
    vec3 v37 = v36;
    v37.y = v30.y;
    vec3 v38 = ((v23 + (v27 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v39 = vec4(0.0);
    v39.x = v38.x;
    vec4 v40 = v39;
    v40.y = v38.y;
    vec4 v41 = v40;
    v41.z = v38.z;
    vec4 v42 = v41;
    v42.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    float v43 = CB3[0].z * 0.50359976291656494140625;
    float v44 = clamp(v33, 0.0, 1.0);
    vec3 v45 = (CB0[15].xyz * v44) + (CB0[17].xyz * clamp(-v33, 0.0, 1.0));
    vec4 v46 = vec4(0.0);
    v46.x = v45.x;
    vec4 v47 = v46;
    v47.y = v45.y;
    vec4 v48 = v47;
    v48.z = v45.z;
    vec4 v49 = v48;
    v49.w = v44 * ((CB3[0].z * 0.055555999279022216796875) * exp2((v43 * dot(v27, normalize(v32 + v26))) - v43));
    vec4 v50 = vec4(dot(CB0[25], v34), dot(CB0[26], v34), dot(CB0[27], v34), 0.0);
    v50.w = CB1[gl_InstanceID * 7 + 6].w;
    gl_Position = v35;
    VARYING0 = TEXCOORD0;
    VARYING1 = v37;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(vec4(COLOR0.xyz, TEXCOORD1.w) * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v42;
    VARYING4 = vec4(v25, v35.w);
    VARYING5 = v49;
    VARYING6 = v50;
    VARYING7 = vec3(CB1[gl_InstanceID * 7 + 6].xy, CB1[gl_InstanceID * 7 + 5].w);
}

