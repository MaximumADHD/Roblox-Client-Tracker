#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    vec3 f1 = clamp(f0.xyz * 2.0, vec3(0.0), vec3(1.0));
    vec4 f2 = f0;
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    gl_FragData[0] = vec4(dot(f4.xyz, CB1[2].xyz) + CB1[2].w, dot(f4.xyz, CB1[3].xyz) + CB1[3].w, dot(f4.xyz, CB1[4].xyz) + CB1[4].w, f0.w);
}

//$$Texture0Texture=s0
