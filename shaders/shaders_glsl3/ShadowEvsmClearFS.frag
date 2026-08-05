#version 150

#extension GL_ARB_shading_language_include : require
#include <ScreenSpaceEvsmCB.h>
uniform vec4 CB1[18];
out vec4 _entryPointOutput;

void main()
{
    float f0 = exp(CB1[5].xy.x);
    float f1 = -exp(-CB1[5].xy.y);
    _entryPointOutput = vec4(f0, f0 * f0, f1, f1 * f1);
}

