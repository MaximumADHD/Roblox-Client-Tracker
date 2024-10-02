#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D geomMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = vec4(min(min(texture(geomMapTexture, VARYING0 + (CB1[0].zw * vec2(-0.25))).x, texture(geomMapTexture, VARYING0 + (CB1[0].zw * vec2(0.25))).x), min(texture(geomMapTexture, VARYING0 + (CB1[0].zw * vec2(0.25, -0.25))).x, texture(geomMapTexture, VARYING0 + (CB1[0].zw * vec2(-0.25, 0.25))).x)));
}

//$$geomMapTexture=s3
