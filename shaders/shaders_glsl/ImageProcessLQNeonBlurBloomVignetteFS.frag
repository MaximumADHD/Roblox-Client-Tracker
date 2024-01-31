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
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    vec3 f1 = f0.xyz;
    vec3 f2 = texture2D(Texture3Texture, VARYING0).xyz + ((f1 * ((vec3(max(max(max(f0.x, f0.y), f0.z) - CB1[9].y, 0.0)) * CB1[9].x) * 3.2999999523162841796875)) * 2.0);
    vec3 f3 = texture2D(Texture1Texture, VARYING0).xyz;
    vec3 f4 = mix(((f1 * f1) * 4.0) + ((f2 * f2) * 4.0), (f3 * f3) * 4.0, vec3(CB1[4].x));
    vec3 f5 = f4 * CB1[5].x;
    vec3 f6 = ((f4 * (f5 + vec3(CB1[5].y))) / ((f4 * (f5 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    vec3 f7 = vec3(0.0);
    f7.x = dot(f6, CB1[1].xyz) + CB1[1].w;
    vec3 f8 = f7;
    f8.y = dot(f6, CB1[2].xyz) + CB1[2].w;
    vec3 f9 = f8;
    f9.z = dot(f6, CB1[3].xyz) + CB1[3].w;
    vec2 f10 = (vec2(0.5) + vec2(CB1[7].y * (-1.0), 0.0)) - VARYING0;
    gl_FragData[0] = vec4(f9 * (1.0 - clamp((dot(f10, f10) - CB1[7].w) * 20.0, 0.0, 1.0)), 1.0);
}

//$$Texture0Texture=s0
//$$Texture3Texture=s3
//$$Texture1Texture=s1
