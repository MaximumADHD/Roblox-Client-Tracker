#version 150

#extension GL_ARB_shading_language_include : require
#include <ScreenSpaceDoFCB.h>
uniform vec4 CB1[18];
uniform sampler2D iChannel0Texture;

in vec2 VARYING0;
out float _entryPointOutput;

void main()
{
    vec2 f0 = CB1[0].zw * (2.0 * CB1[2].x);
    vec2 f1 = CB1[0].zw * CB1[2].x;
    _entryPointOutput = max((((texture(iChannel0Texture, min(VARYING0 + f0, CB1[12].xy)).x + texture(iChannel0Texture, min(VARYING0 + f1, CB1[12].xy)).x) + texture(iChannel0Texture, min(VARYING0 - f1, CB1[12].xy)).x) + texture(iChannel0Texture, min(VARYING0 - f0, CB1[12].xy)).x) * 0.25, texture(iChannel0Texture, min(VARYING0, CB1[12].xy)).x);
}

//$$iChannel0Texture=s0
