#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[61];
uniform vec4 CB1[16];
uniform sampler2D blurredTexture;
uniform sampler2D originalTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING0 * CB1[2].xy;
    vec4 f1 = (vec4(1.0, 1.0, -1.0, 0.0) * (CB1[2].z * 4.0)) * CB1[0].zwzw;
    vec2 f2 = f1.xy;
    vec2 f3 = f1.wy;
    vec2 f4 = f1.zy;
    vec4 f5 = ((((((((texture(blurredTexture, min(f0 - f2, CB1[13].xy)) + (texture(blurredTexture, min(f0 - f3, CB1[13].xy)) * 2.0)) + texture(blurredTexture, min(f0 - f4, CB1[13].xy))) + (texture(blurredTexture, min(f0 + f1.zw, CB1[13].xy)) * 2.0)) + (texture(blurredTexture, min(f0, CB1[13].xy)) * 4.0)) + (texture(blurredTexture, min(f0 + f1.xw, CB1[13].xy)) * 2.0)) + texture(blurredTexture, min(f0 + f4, CB1[13].xy))) + (texture(blurredTexture, min(f0 + f3, CB1[13].xy)) * 2.0)) + texture(blurredTexture, min(f0 + f2, CB1[13].xy))) * 0.0625;
    float f6 = clamp(max(1.0, f5.w) * 1.5, 0.0, 1.0);
    vec4 f7 = texture(originalTexture, VARYING0);
    vec3 f8 = f7.xyz;
    _entryPointOutput = vec4(sqrt(clamp(mix(((f8 * f8) * CB0[20].x) * (1.0 + f6), f5.xyz * f6, vec3(f6)) * CB0[20].y, vec3(0.0), vec3(1.0))), f7.w);
}

//$$blurredTexture=s2
//$$originalTexture=s1
