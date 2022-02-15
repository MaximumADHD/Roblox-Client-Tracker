#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform vec4 CB6[32];
uniform sampler2DMS DepthAATexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    ivec2 f0 = ivec2(VARYING0 * CB1[0].xy);
    vec4 f1 = texelFetch(DepthAATexture, f0, 0);
    float f2 = f1.x;
    vec4 f3 = texelFetch(DepthAATexture, f0 + ivec2(1, 0), 0);
    float f4 = f3.x;
    vec4 f5 = texelFetch(DepthAATexture, f0 + ivec2(-1, 0), 0);
    float f6 = f5.x;
    vec4 f7 = texelFetch(DepthAATexture, f0 + ivec2(0, 1), 0);
    float f8 = f7.x;
    vec4 f9 = texelFetch(DepthAATexture, f0 + ivec2(0, -1), 0);
    float f10 = f9.x;
    int f11 = int(floor(((f2 > 0.0) ? f2 : max(max(f4, f6), max(f8, f10))) * 255.5));
    vec4 f12 = CB6[f11 * 1 + 0];
    f12.w = CB6[f11 * 1 + 0].w * CB6[f11 * 1 + 0].w;
    int f13 = f11 + 32;
    _entryPointOutput = mix(f12, vec4(CB6[f13 * 1 + 0].xyz, 1.0), vec4(clamp(255.0 * max(abs(f4 - f6), abs(f8 - f10)), 0.0, 1.0) * CB6[f13 * 1 + 0].w));
}

//$$DepthAATexture=s4
