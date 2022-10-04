#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 COLOR0;
in vec4 COLOR1;
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
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = CB0[11].xyz - POSITION.xyz;
    vec3 v2 = normalize(v1);
    vec3 v3 = v0 * ((dot(v0, v2) > 0.0) ? 1.0 : (-1.0));
    vec3 v4 = vec3(0.0);
    v4.z = NORMAL.w;
    vec3 v5 = -CB0[16].xyz;
    float v6 = dot(v3, v5);
    vec4 v7 = vec4(POSITION.xyz, 1.0);
    vec4 v8 = v7 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v9 = v4;
    v9.x = TEXCOORD1.x;
    vec3 v10 = v9;
    v10.y = TEXCOORD1.y;
    vec3 v11 = ((POSITION.xyz + (v3 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v12 = vec4(0.0);
    v12.x = v11.x;
    vec4 v13 = v12;
    v13.y = v11.y;
    vec4 v14 = v13;
    v14.z = v11.z;
    vec4 v15 = v14;
    v15.w = 0.0;
    vec4 v16 = vec4(v1, v8.w);
    float v17 = COLOR0.w * 2.0;
    float v18 = clamp(v17 - 1.0, 0.0, 1.0);
    float v19 = (clamp(2.0 - (dot(v3, normalize(v16.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v17, 0.0, 1.0);
    vec4 v20 = COLOR0;
    v20.w = mix(v18, 1.0, v19);
    vec4 v21 = vec4(dot(CB0[25], v7), dot(CB0[26], v7), dot(CB0[27], v7), 0.0);
    v21.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v18, 1.0, v19);
    float v22 = COLOR1.y * 0.50359570980072021484375;
    float v23 = clamp(v6, 0.0, 1.0);
    vec3 v24 = (CB0[15].xyz * v23) + (CB0[17].xyz * clamp(-v6, 0.0, 1.0));
    vec4 v25 = vec4(0.0);
    v25.x = v24.x;
    vec4 v26 = v25;
    v26.y = v24.y;
    vec4 v27 = v26;
    v27.z = v24.z;
    vec4 v28 = v27;
    v28.w = (v23 * CB0[28].w) * (COLOR1.y * exp2((v22 * dot(v3, normalize(v5 + v2))) - v22));
    gl_Position = v8;
    VARYING0 = TEXCOORD0;
    VARYING1 = v10;
    VARYING2 = v20;
    VARYING3 = v15;
    VARYING4 = v16;
    VARYING5 = vec4(v3, COLOR1.z);
    VARYING6 = v28;
    VARYING7 = v21;
}

