#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[52];
uniform vec4 CB1[8];
uniform sampler2D colorTexture;

varying vec2 VARYING0;

void main()
{
    vec2 f0 = vec2(CB1[0].z, 0.0);
    vec2 f1 = f0 * 1.5;
    vec2 f2 = f0 * 0.5;
    vec3 f3 = texture2D(colorTexture, VARYING0 + f1).xyz;
    vec3 f4 = texture2D(colorTexture, VARYING0 + f2).xyz;
    vec3 f5 = texture2D(colorTexture, VARYING0 - f2).xyz;
    vec3 f6 = texture2D(colorTexture, VARYING0 - f1).xyz;
    gl_FragData[0] = vec4((((((f3 * f3) * CB0[15].x) + ((f4 * f4) * CB0[15].x)) + ((f5 * f5) * CB0[15].x)) + ((f6 * f6) * CB0[15].x)) * 0.25, 1.0);
}

//$$colorTexture=s1
