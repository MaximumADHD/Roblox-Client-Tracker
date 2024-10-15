#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = CB0[11].xyz - POSITION.xyz;
    vec2 v2 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v3 = vec3(0.0);
    v3.z = NORMAL.w - 1.0;
    vec3 v4 = -CB0[16].xyz;
    float v5 = dot(v0, v4);
    vec4 v6 = vec4(POSITION.xyz, 1.0);
    vec4 v7 = v6 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v8 = v3;
    v8.x = v2.x;
    vec3 v9 = v8;
    v9.y = v2.y;
    vec3 v10 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v11 = vec4(0.0);
    v11.x = v10.x;
    vec4 v12 = v11;
    v12.y = v10.y;
    vec4 v13 = v12;
    v13.z = v10.z;
    vec4 v14 = v13;
    v14.w = 0.0;
    float v15 = COLOR1.y * 0.50359976291656494140625;
    float v16 = clamp(v5, 0.0, 1.0);
    vec3 v17 = (CB0[15].xyz * v16) + (CB0[17].xyz * clamp(-v5, 0.0, 1.0));
    vec4 v18 = vec4(0.0);
    v18.x = v17.x;
    vec4 v19 = v18;
    v19.y = v17.y;
    vec4 v20 = v19;
    v20.z = v17.z;
    vec4 v21 = v20;
    v21.w = v16 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v15 * dot(v0, normalize(v4 + normalize(v1)))) - v15));
    vec4 v22 = vec4(dot(CB0[25], v6), dot(CB0[26], v6), dot(CB0[27], v6), 0.0);
    v22.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v7;
    VARYING0 = TEXCOORD0;
    VARYING1 = v9;
    VARYING2 = COLOR0;
    VARYING3 = v14;
    VARYING4 = vec4(v1, v7.w);
    VARYING5 = v21;
    VARYING6 = v22;
}

