#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform vec4 CB6[64];
uniform sampler2DMS DepthAATexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    int f0 = int(floor(texelFetch(DepthAATexture, ivec2(VARYING0 * CB1[0].xy), 0).x * 255.5));
    if (CB6[f0 * 1 + 0].w <= 0.0)
    {
        discard;
    }
    vec3 f1 = CB6[f0 * 1 + 0].xyz * CB6[f0 * 1 + 0].w;
    vec4 f2 = CB6[f0 * 1 + 0];
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    _entryPointOutput = f4;
}

//$$DepthAATexture=s4
