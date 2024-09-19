#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D geomMapTexture;

varying vec2 VARYING0;

void main()
{
    gl_FragData[0] = vec4(min(min(texture2D(geomMapTexture, VARYING0 + (CB1[0].zw * vec2(-0.25))).x, texture2D(geomMapTexture, VARYING0 + (CB1[0].zw * vec2(0.25))).x), min(texture2D(geomMapTexture, VARYING0 + (CB1[0].zw * vec2(0.25, -0.25))).x, texture2D(geomMapTexture, VARYING0 + (CB1[0].zw * vec2(-0.25, 0.25))).x)));
}

//$$geomMapTexture=s3
