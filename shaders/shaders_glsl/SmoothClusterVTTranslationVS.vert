#version 110

const ivec2 v0[4] = ivec2[](ivec2(0), ivec2(0, 1), ivec2(1), ivec2(1, 0));

#extension GL_ARB_shading_language_include : require
#include <UpdateQuadPositionInfo.h>
#include <UpdateQuadTranslation.h>
uniform vec4 CB0[1];
uniform ivec4 CB1[256];
uniform vec4 CB2[256];
attribute ivec2 POSITION;
varying vec4 VARYING0;

void main()
{
    int v1 = int(CB0[0].z);
    ivec2 v2 = ivec2(max(0, (CB1[POSITION.y * 1 + 0].z - v1)));
    bvec2 v3 = bvec2(CB1[POSITION.y * 1 + 0].z >= v1);
    gl_Position = vec4(((((vec2(CB1[POSITION.y * 1 + 0].xy << v2) + vec2(v0[POSITION.x] << v2)) * CB0[0].xy) * vec2(2.0, -2.0)) + vec2(-1.0, 1.0)) + vec2(v3.x ? vec2(0.0).x : vec2(2.0, 0.0).x, v3.y ? vec2(0.0).y : vec2(2.0, 0.0).y), float(CB1[POSITION.y * 1 + 0].z) * CB0[0].w, 1.0);
    VARYING0 = CB2[POSITION.y * 1 + 0];
}

