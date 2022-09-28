#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = vec4(2.0, 2.0, -2.0, 0.0) * CB1[0].zwzw;
    vec2 f1 = f0.xy;
    vec2 f2 = f0.wy;
    vec2 f3 = f0.zy;
    gl_FragData[0] = ((((((((texture2D(Texture0Texture, VARYING0 - f1) + (texture2D(Texture0Texture, VARYING0 - f2) * 2.0)) + texture2D(Texture0Texture, VARYING0 - f3)) + (texture2D(Texture0Texture, VARYING0 + f0.zw) * 2.0)) + (texture2D(Texture0Texture, VARYING0) * 4.0)) + (texture2D(Texture0Texture, VARYING0 + f0.xw) * 2.0)) + texture2D(Texture0Texture, VARYING0 + f3)) + (texture2D(Texture0Texture, VARYING0 + f2) * 2.0)) + texture2D(Texture0Texture, VARYING0 + f1)) * (0.0625 * CB1[2].x);
}

//$$Texture0Texture=s0
