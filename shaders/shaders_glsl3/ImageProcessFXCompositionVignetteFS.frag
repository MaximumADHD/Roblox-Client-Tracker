#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture2Texture;
uniform sampler2D Texture3Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = texture(Texture0Texture, VARYING0).xyz;
    vec3 f1 = texture(Texture3Texture, VARYING0).xyz;
    vec3 f2 = texture(Texture2Texture, VARYING0).xyz * CB1[4].w;
    vec3 f3 = (((f0 * f0) * 4.0) + ((f1 * f1) * 4.0)) + (f2 * f2);
    vec3 f4 = f3 * CB1[5].x;
    vec3 f5 = ((f3 * (f4 + vec3(CB1[5].y))) / ((f3 * (f4 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    vec3 f6 = vec3(0.0);
    f6.x = dot(f5, CB1[1].xyz) + CB1[1].w;
    vec3 f7 = f6;
    f7.y = dot(f5, CB1[2].xyz) + CB1[2].w;
    vec3 f8 = f7;
    f8.z = dot(f5, CB1[3].xyz) + CB1[3].w;
    vec2 f9 = (vec2(0.5) + vec2(CB1[7].y * (-1.0), 0.0)) - VARYING0;
    _entryPointOutput = vec4(f8 * (1.0 - clamp((dot(f9, f9) - CB1[7].w) * 20.0, 0.0, 1.0)), 1.0);
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
