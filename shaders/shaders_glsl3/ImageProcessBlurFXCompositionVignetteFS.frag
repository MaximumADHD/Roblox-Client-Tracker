#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture2Texture;
uniform sampler2D Texture3Texture;
uniform sampler2D Texture1Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = texture(Texture0Texture, VARYING0).xyz;
    vec3 f1 = texture(Texture3Texture, VARYING0).xyz;
    vec3 f2 = texture(Texture2Texture, VARYING0).xyz * CB1[4].w;
    vec3 f3 = texture(Texture1Texture, VARYING0).xyz;
    vec3 f4 = mix((((f0 * f0) * 4.0) + ((f1 * f1) * 4.0)) + (f2 * f2), (f3 * f3) * 4.0, vec3(CB1[4].x));
    vec3 f5 = f4 * CB1[5].x;
    vec3 f6 = ((f4 * (f5 + vec3(CB1[5].y))) / ((f4 * (f5 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    vec3 f7 = vec3(0.0);
    f7.x = dot(f6, CB1[1].xyz) + CB1[1].w;
    vec3 f8 = f7;
    f8.y = dot(f6, CB1[2].xyz) + CB1[2].w;
    vec3 f9 = f8;
    f9.z = dot(f6, CB1[3].xyz) + CB1[3].w;
    vec2 f10 = (vec2(0.5) + vec2(CB1[7].y * (-1.0), 0.0)) - VARYING0;
    _entryPointOutput = vec4(f9 * (1.0 - clamp((dot(f10, f10) - CB1[7].w) * 20.0, 0.0, 1.0)), 1.0);
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
//$$Texture1Texture=s1
