#version 150

#extension GL_ARB_shading_language_include : require
#include <PartMaterialConsts.h>
#include <Globals.h>
uniform vec4 CB2[5];
uniform vec4 CB0[61];
uniform sampler2D NoiseMapTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(NoiseMapTexture, VARYING0 * CB2[2].w);
    float f1 = f0.x * 8.0;
    float f2 = floor(f1);
    vec2 f3 = dFdx(VARYING0);
    vec2 f4 = dFdy(VARYING0);
    vec4 f5 = mix(textureGrad(DiffuseMapTexture, sin(vec2(3.0, 7.0) * f2) + VARYING0, f3, f4), textureGrad(DiffuseMapTexture, sin(vec2(3.0, 7.0) * (f2 + 1.0)) + VARYING0, f3, f4), vec4(fract(f1)));
    float f6 = f5.w;
    if (f6 < (0.5 * CB0[53].z))
    {
        discard;
    }
    _entryPointOutput = vec4(0.0, 0.0, 0.0, f6);
}

//$$NoiseMapTexture=s9
//$$DiffuseMapTexture=s3
