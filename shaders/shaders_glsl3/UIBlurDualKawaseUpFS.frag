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
    float f1 = f0.x;
    float f2 = -f1;
    float f3 = f0.y;
    float f4 = -f3;
    _entryPointOutput = mix((((texture(DiffuseMapTexture, clamp(VARYING0 + vec2(f1 * (-2.0), 0.0), CB2[0].xy, CB2[0].zw)) * 0.25) + (texture(DiffuseMapTexture, clamp(VARYING0 + vec2(0.0, f3 * 2.0), CB2[0].xy, CB2[0].zw)) * 0.25)) + (texture(DiffuseMapTexture, clamp(VARYING0 + vec2(f1 * 2.0, 0.0), CB2[0].xy, CB2[0].zw)) * 0.25)) + (texture(DiffuseMapTexture, clamp(VARYING0 + vec2(0.0, f3 * (-2.0)), CB2[0].xy, CB2[0].zw)) * 0.25), (((texture(DiffuseMapTexture, clamp(VARYING0 + vec2(f2, f3), CB2[0].xy, CB2[0].zw)) * 0.25) + (texture(DiffuseMapTexture, clamp(VARYING0 + f0, CB2[0].xy, CB2[0].zw)) * 0.25)) + (texture(DiffuseMapTexture, clamp(VARYING0 + vec2(f1, f4), CB2[0].xy, CB2[0].zw)) * 0.25)) + (texture(DiffuseMapTexture, clamp(VARYING0 + vec2(f2, f4), CB2[0].xy, CB2[0].zw)) * 0.25), vec4(0.666666686534881591796875));
}

//$$DiffuseMapTexture=s0
