#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
out vec4 _entryPointOutput;

void main()
{
    float f0 = exp(CB1[5].x);
    float f1 = -exp(-CB1[5].y);
    _entryPointOutput = vec4(f0, f0 * f0, f1, f1 * f1);
}

