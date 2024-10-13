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
out float VARYING1;
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
    vec3 v2 = -CB0[16].xyz;
    float v3 = dot(v0, v2);
    vec4 v4 = vec4(POSITION.xyz, 1.0);
    vec4 v5 = v4 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v6 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v7 = vec4(0.0);
    v7.x = v6.x;
    vec4 v8 = v7;
    v8.y = v6.y;
    vec4 v9 = v8;
    v9.z = v6.z;
    vec4 v10 = v9;
    v10.w = 0.0;
    float v11 = COLOR1.y * 0.50359976291656494140625;
    float v12 = clamp(v3, 0.0, 1.0);
    vec3 v13 = (CB0[15].xyz * v12) + (CB0[17].xyz * clamp(-v3, 0.0, 1.0));
    vec4 v14 = vec4(0.0);
    v14.x = v13.x;
    vec4 v15 = v14;
    v15.y = v13.y;
    vec4 v16 = v15;
    v16.z = v13.z;
    vec4 v17 = v16;
    v17.w = v12 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v11 * dot(v0, normalize(v2 + normalize(v1)))) - v11));
    vec4 v18 = vec4(dot(CB0[25], v4), dot(CB0[26], v4), dot(CB0[27], v4), 0.0);
    v18.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v5;
    VARYING0 = TEXCOORD0;
    VARYING1 = max(0.0500000007450580596923828125, COLOR1.w * 0.0039215688593685626983642578125);
    VARYING2 = COLOR0;
    VARYING3 = v10;
    VARYING4 = vec4(v1, v5.w);
    VARYING5 = vec4(v0, COLOR1.z);
    VARYING6 = v17;
    VARYING7 = v18;
}

