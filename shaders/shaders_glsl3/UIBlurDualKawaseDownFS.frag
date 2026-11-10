#version 150

#extension GL_ARB_shading_language_include : require
#include <BackdropBlurCB.h>
uniform vec4 CB2[2];
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (vec2(0.5) + CB2[1].zw) * CB2[1].xy;
    vec2 f1 = vec2(f0.x, -f0.y);
    _entryPointOutput = (((texture(DiffuseMapTexture, clamp(VARYING0 - f0, CB2[0].xy, CB2[0].zw)) * 0.25) + (texture(DiffuseMapTexture, clamp(VARYING0 + f0, CB2[0].xy, CB2[0].zw)) * 0.25)) + (texture(DiffuseMapTexture, clamp(VARYING0 + f1, CB2[0].xy, CB2[0].zw)) * 0.25)) + (texture(DiffuseMapTexture, clamp(VARYING0 - f1, CB2[0].xy, CB2[0].zw)) * 0.25);
}

//$$DiffuseMapTexture=s0
