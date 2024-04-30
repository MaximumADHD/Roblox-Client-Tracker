#version 150

#extension GL_ARB_shading_language_include : require
#include <PerformanceOverlayParams.h>
uniform vec4 CB1[5];
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = vec4(CB1[4].x, 0.0, 0.0, 1.0);
}

