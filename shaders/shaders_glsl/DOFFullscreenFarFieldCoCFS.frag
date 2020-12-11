#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D colorTexture;

varying vec2 VARYING0;

void main()
{
    vec3 f0 = texture2D(colorTexture, VARYING0).xyz;
    gl_FragData[0] = vec4((f0 * f0) * CB0[15].x, 1.0);
}

//$$colorTexture=s1
