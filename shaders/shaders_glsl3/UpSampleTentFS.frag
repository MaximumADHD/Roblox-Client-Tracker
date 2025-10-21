#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[16];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = vec4(2.0, 2.0, -2.0, 0.0) * CB1[0].zwzw;
    vec2 f1 = f0.xy;
    vec2 f2 = f0.wy;
    vec2 f3 = f0.zy;
    _entryPointOutput = ((((((((texture(Texture0Texture, min(VARYING0 - f1, CB1[12].xy)) + (texture(Texture0Texture, min(VARYING0 - f2, CB1[12].xy)) * 2.0)) + texture(Texture0Texture, min(VARYING0 - f3, CB1[12].xy))) + (texture(Texture0Texture, min(VARYING0 + f0.zw, CB1[12].xy)) * 2.0)) + (texture(Texture0Texture, min(VARYING0, CB1[12].xy)) * 4.0)) + (texture(Texture0Texture, min(VARYING0 + f0.xw, CB1[12].xy)) * 2.0)) + texture(Texture0Texture, min(VARYING0 + f3, CB1[12].xy))) + (texture(Texture0Texture, min(VARYING0 + f2, CB1[12].xy)) * 2.0)) + texture(Texture0Texture, min(VARYING0 + f1, CB1[12].xy))) * (0.0625 * CB1[3].x);
}

//$$Texture0Texture=s0
