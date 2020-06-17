#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f1 = f0.xyz;
    float f2 = f0.w;
    gl_FragData[0] = vec4(sqrt(clamp((f1 * f1).xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz * f2, f2);
}

//$$DiffuseMapTexture=s0
