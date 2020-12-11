#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[53];
uniform vec4 CB1[8];
uniform sampler2D colorTexture;

varying vec2 VARYING0;

void main()
{
    vec2 f0 = vec2(CB1[0].z, 0.0) * 0.5;
    vec3 f1 = texture2D(colorTexture, VARYING0 + f0).xyz;
    vec3 f2 = texture2D(colorTexture, VARYING0 - f0).xyz;
    gl_FragData[0] = vec4((((f1 * f1) * CB0[15].x) + ((f2 * f2) * CB0[15].x)) * 0.5, 1.0);
}

//$$colorTexture=s1
