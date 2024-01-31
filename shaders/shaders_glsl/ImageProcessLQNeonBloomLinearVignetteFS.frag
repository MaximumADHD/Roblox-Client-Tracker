#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture3Texture;

varying vec2 VARYING0;

void main()
{
    vec3 f0 = texture2D(Texture0Texture, VARYING0).xyz;
    vec3 f1 = ((f0 * f0) * 4.0) + texture2D(Texture3Texture, VARYING0).xyz;
    vec3 f2 = f1 * CB1[5].x;
    vec3 f3 = ((f1 * (f2 + vec3(CB1[5].y))) / ((f1 * (f2 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    vec3 f4 = vec3(0.0);
    f4.x = dot(f3, CB1[1].xyz) + CB1[1].w;
    vec3 f5 = f4;
    f5.y = dot(f3, CB1[2].xyz) + CB1[2].w;
    vec3 f6 = f5;
    f6.z = dot(f3, CB1[3].xyz) + CB1[3].w;
    vec2 f7 = (vec2(0.5) + vec2(CB1[7].y * (-1.0), 0.0)) - VARYING0;
    gl_FragData[0] = vec4(f6 * (1.0 - clamp((dot(f7, f7) - CB1[7].w) * 20.0, 0.0, 1.0)), 1.0);
}

//$$Texture0Texture=s0
//$$Texture3Texture=s3
