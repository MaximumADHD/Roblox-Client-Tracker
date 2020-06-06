#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    vec3 f1 = clamp(f0.xyz * 2.0, vec3(0.0), vec3(1.0)).xyz;
    gl_FragData[0] = vec4(dot(f1, CB1[1].xyz) + CB1[1].w, dot(f1, CB1[2].xyz) + CB1[2].w, dot(f1, CB1[3].xyz) + CB1[3].w, f0.w);
}

//$$Texture0Texture=s0
