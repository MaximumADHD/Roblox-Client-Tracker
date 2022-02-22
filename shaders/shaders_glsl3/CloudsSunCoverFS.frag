#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <CloudsParams.h>
#include <Params.h>
uniform vec4 CB0[53];
uniform vec4 CB5[5];
uniform vec4 CB1[8];
uniform sampler2D BeerShadowMapTexture;

out float _entryPointOutput;

void main()
{
    vec3 f0 = CB0[7].xyz * 0.00028000000747852027416229248046875;
    vec3 f1 = -CB0[11].xyz;
    vec3 f2 = f0;
    f2.y = f0.y + 971.0;
    float f3 = dot(f1, f2);
    float f4 = 2.0 * f3;
    vec2 f5 = (vec2(f3 * (-2.0)) + sqrt(vec2(f4 * f4) - ((vec2(dot(f2, f2)) - vec2(946729.0, 951600.25)) * 4.0))) * 0.5;
    float f6 = f5.x;
    _entryPointOutput = max(0.0, 1.0 - ((CB1[1].x * 2.0) * textureLod(BeerShadowMapTexture, vec4((((f0 + (f1 * f6)) + (f1 * (f5.y - f6))) + ((CB5[0].xyz * CB5[0].w) * 50.0)).xz * vec2(0.03125), 0.0, 0.0).xy, 0.0).y));
}

//$$BeerShadowMapTexture=s3
