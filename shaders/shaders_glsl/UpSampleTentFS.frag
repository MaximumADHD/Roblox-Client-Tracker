#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = vec4(2.0, 2.0, -2.0, 0.0) * CB1[0].zwzw;
    vec2 f1 = f0.xy;
    vec2 f2 = f0.wy;
    vec2 f3 = f0.zy;
    gl_FragData[0] = ((((((((texture2D(Texture0Texture, min(VARYING0 - f1, CB1[11].xy)) + (texture2D(Texture0Texture, min(VARYING0 - f2, CB1[11].xy)) * 2.0)) + texture2D(Texture0Texture, min(VARYING0 - f3, CB1[11].xy))) + (texture2D(Texture0Texture, min(VARYING0 + f0.zw, CB1[11].xy)) * 2.0)) + (texture2D(Texture0Texture, min(VARYING0, CB1[11].xy)) * 4.0)) + (texture2D(Texture0Texture, min(VARYING0 + f0.xw, CB1[11].xy)) * 2.0)) + texture2D(Texture0Texture, min(VARYING0 + f3, CB1[11].xy))) + (texture2D(Texture0Texture, min(VARYING0 + f2, CB1[11].xy)) * 2.0)) + texture2D(Texture0Texture, min(VARYING0 + f1, CB1[11].xy))) * (0.0625 * CB1[3].x);
}

//$$Texture0Texture=s0
