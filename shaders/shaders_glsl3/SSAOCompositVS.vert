#version 150

#extension GL_ARB_shading_language_include : require
#include <ScreenSpaceSSAOCB.h>
uniform vec4 CB1[18];
in vec4 POSITION;
out vec2 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;

void main()
{
    vec2 v0 = (POSITION.xy * 0.5) + vec2(0.5);
    vec2 v1 = CB1[0].zw * 2.0;
    vec2 v2 = vec2(v1.x, 0.0);
    vec2 v3 = v0 + v2;
    vec4 v4 = vec4(0.0);
    v4.x = v3.x;
    vec4 v5 = v4;
    v5.y = v3.y;
    vec2 v6 = v0 - v2;
    vec4 v7 = v5;
    v7.z = v6.x;
    vec4 v8 = v7;
    v8.w = v6.y;
    vec2 v9 = vec2(0.0, v1.y);
    vec2 v10 = v0 + v9;
    vec4 v11 = vec4(0.0);
    v11.x = v10.x;
    vec4 v12 = v11;
    v12.y = v10.y;
    vec2 v13 = v0 - v9;
    vec4 v14 = v12;
    v14.z = v13.x;
    vec4 v15 = v14;
    v15.w = v13.y;
    vec2 v16 = v8.xy * CB1[1].xy;
    vec4 v17 = v8;
    v17.x = v16.x;
    vec4 v18 = v17;
    v18.y = v16.y;
    vec2 v19 = v18.zw * CB1[1].xy;
    vec4 v20 = v18;
    v20.z = v19.x;
    vec4 v21 = v20;
    v21.w = v19.y;
    vec2 v22 = v15.xy * CB1[1].xy;
    vec4 v23 = v15;
    v23.x = v22.x;
    vec4 v24 = v23;
    v24.y = v22.y;
    vec2 v25 = v24.zw * CB1[1].xy;
    vec4 v26 = v24;
    v26.z = v25.x;
    vec4 v27 = v26;
    v27.w = v25.y;
    gl_Position = POSITION;
    VARYING0 = v0 * CB1[1].xy;
    VARYING1 = v21;
    VARYING2 = v27;
}

