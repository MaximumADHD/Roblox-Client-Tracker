#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture3Texture;
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    vec3 f0 = texture2D(Texture0Texture, VARYING0).xyz;
    vec3 f1 = texture2D(Texture1Texture, VARYING0).xyz;
    vec3 f2 = mix(((f0 * f0) * 4.0) + texture2D(Texture3Texture, VARYING0).xyz, (f1 * f1) * 4.0, vec3(CB1[4].x));
    vec3 f3 = f2 * CB1[5].x;
    vec3 f4 = ((f2 * (f3 + vec3(CB1[5].y))) / ((f2 * (f3 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    vec3 f5 = vec3(0.0);
    f5.x = dot(f4, CB1[1].xyz) + CB1[1].w;
    vec3 f6 = f5;
    f6.y = dot(f4, CB1[2].xyz) + CB1[2].w;
    vec3 f7 = f6;
    f7.z = dot(f4, CB1[3].xyz) + CB1[3].w;
    vec2 f8 = (vec2(0.5) + vec2(CB1[7].y * (-1.0), 0.0)) - VARYING0;
    gl_FragData[0] = vec4(f7 * (1.0 - clamp((dot(f8, f8) - CB1[7].w) * 20.0, 0.0, 1.0)), 1.0);
}

//$$Texture0Texture=s0
//$$Texture3Texture=s3
//$$Texture1Texture=s1
