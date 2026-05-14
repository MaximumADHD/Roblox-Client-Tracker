#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <FastClusterInstanceData.h>
uniform vec4 CB0[61];
uniform vec4 CB11[512];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
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
    vec4 v1 = COLOR0 * CB11[int(COLOR1.x) * 2 + 0];
    vec3 v2 = CB0[11].xyz - POSITION.xyz;
    vec3 v3 = normalize(v2);
    vec3 v4 = v0 * ((dot(v0, v3) > 0.0) ? 1.0 : (-1.0));
    vec2 v5 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v6 = vec3(0.0);
    v6.z = NORMAL.w - 1.0;
    vec3 v7 = -CB0[16].xyz;
    float v8 = dot(v4, v7);
    vec4 v9 = vec4(POSITION.xyz, 1.0);
    vec4 v10 = v9 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v11 = v6;
    v11.x = v5.x;
    vec3 v12 = v11;
    v12.y = v5.y;
    vec3 v13 = ((POSITION.xyz + (v4 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v14 = vec4(0.0);
    v14.x = v13.x;
    vec4 v15 = v14;
    v15.y = v13.y;
    vec4 v16 = v15;
    v16.z = v13.z;
    vec4 v17 = v16;
    v17.w = 0.0;
    float v18 = v1.w * 2.0;
    float v19 = clamp(v18 - 1.0, 0.0, 1.0);
    float v20 = (clamp(2.0 - (dot(v4, v3) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v18, 0.0, 1.0);
    vec4 v21 = v1;
    v21.w = mix(v19, 1.0, v20);
    vec4 v22 = vec4(dot(CB0[25], v9), dot(CB0[26], v9), dot(CB0[27], v9), 0.0);
    v22.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v19, 1.0, v20);
    float v23 = COLOR1.y * 0.50359976291656494140625;
    float v24 = clamp(v8, 0.0, 1.0);
    vec3 v25 = (CB0[15].xyz * v24) + (CB0[17].xyz * clamp(-v8, 0.0, 1.0));
    vec4 v26 = vec4(0.0);
    v26.x = v25.x;
    vec4 v27 = v26;
    v27.y = v25.y;
    vec4 v28 = v27;
    v28.z = v25.z;
    vec4 v29 = v28;
    v29.w = v24 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v23 * dot(v4, normalize(v7 + v3))) - v23));
    gl_Position = v10;
    VARYING0 = TEXCOORD0;
    VARYING1 = v12;
    VARYING2 = v21;
    VARYING3 = v17;
    VARYING4 = vec4(v2, v10.w);
    VARYING5 = vec4(v4, COLOR1.z);
    VARYING6 = v29;
    VARYING7 = v22;
}

