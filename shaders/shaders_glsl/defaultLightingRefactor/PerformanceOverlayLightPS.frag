#version 110

#extension GL_ARB_shading_language_include : require
#include <PerformanceOverlayParams.h>
uniform vec4 CB1[5];
void main()
{
    gl_FragData[0] = vec4(CB1[4].x, 0.0, 0.0, 1.0);
}

