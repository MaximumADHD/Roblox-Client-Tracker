#version 110

#extension GL_ARB_shading_language_include : require
#include <PointSplatParams.h>
uniform vec4 CB2[16];
attribute vec4 POSITION;
attribute vec4 COLOR0;
varying vec4 VARYING0;

void main()
{
    int v0 = int(POSITION.z);
    gl_Position = vec4((POSITION.xy * CB2[v0 * 1 + 0].xy) + CB2[v0 * 1 + 0].zw, 0.0, 1.0);
    VARYING0 = COLOR0;
    gl_PointSize = 1.0;
}

