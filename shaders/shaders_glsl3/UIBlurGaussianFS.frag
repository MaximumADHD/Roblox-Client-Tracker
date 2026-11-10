#version 150

#extension GL_ARB_shading_language_include : require
#include <BackdropBlurCB.h>
#include <BackdropGaussianKernelCB.h>
uniform vec4 CB2[2];
uniform vec4 CB3[8];
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = CB2[1].xy * CB3[0].x;
    vec2 f1 = CB2[1].xy * CB3[1].x;
    vec2 f2 = CB2[1].xy * CB3[2].x;
    vec2 f3 = CB2[1].xy * CB3[3].x;
    vec2 f4 = CB2[1].xy * CB3[4].x;
    vec2 f5 = CB2[1].xy * CB3[5].x;
    vec2 f6 = CB2[1].xy * CB3[6].x;
    vec2 f7 = CB2[1].xy * CB3[7].x;
    _entryPointOutput = ((((((((texture(DiffuseMapTexture, clamp(VARYING0, CB2[0].xy, CB2[0].zw)) * CB2[1].z) + ((texture(DiffuseMapTexture, clamp(VARYING0 + f0, CB2[0].xy, CB2[0].zw)) + texture(DiffuseMapTexture, clamp(VARYING0 - f0, CB2[0].xy, CB2[0].zw))) * CB3[0].y)) + ((texture(DiffuseMapTexture, clamp(VARYING0 + f1, CB2[0].xy, CB2[0].zw)) + texture(DiffuseMapTexture, clamp(VARYING0 - f1, CB2[0].xy, CB2[0].zw))) * CB3[1].y)) + ((texture(DiffuseMapTexture, clamp(VARYING0 + f2, CB2[0].xy, CB2[0].zw)) + texture(DiffuseMapTexture, clamp(VARYING0 - f2, CB2[0].xy, CB2[0].zw))) * CB3[2].y)) + ((texture(DiffuseMapTexture, clamp(VARYING0 + f3, CB2[0].xy, CB2[0].zw)) + texture(DiffuseMapTexture, clamp(VARYING0 - f3, CB2[0].xy, CB2[0].zw))) * CB3[3].y)) + ((texture(DiffuseMapTexture, clamp(VARYING0 + f4, CB2[0].xy, CB2[0].zw)) + texture(DiffuseMapTexture, clamp(VARYING0 - f4, CB2[0].xy, CB2[0].zw))) * CB3[4].y)) + ((texture(DiffuseMapTexture, clamp(VARYING0 + f5, CB2[0].xy, CB2[0].zw)) + texture(DiffuseMapTexture, clamp(VARYING0 - f5, CB2[0].xy, CB2[0].zw))) * CB3[5].y)) + ((texture(DiffuseMapTexture, clamp(VARYING0 + f6, CB2[0].xy, CB2[0].zw)) + texture(DiffuseMapTexture, clamp(VARYING0 - f6, CB2[0].xy, CB2[0].zw))) * CB3[6].y)) + ((texture(DiffuseMapTexture, clamp(VARYING0 + f7, CB2[0].xy, CB2[0].zw)) + texture(DiffuseMapTexture, clamp(VARYING0 - f7, CB2[0].xy, CB2[0].zw))) * CB3[7].y);
}

//$$DiffuseMapTexture=s0
