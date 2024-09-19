#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;

void main()
{
    vec3 f0 = texture2D(Texture0Texture, VARYING0).xyz;
    vec3 f1 = texture2D(Texture0Texture, min(VARYING1.xy, CB1[11].xy)).xyz;
    vec3 f2 = texture2D(Texture0Texture, min(VARYING1.zw, CB1[11].xy)).xyz;
    vec3 f3 = texture2D(Texture0Texture, min(VARYING2.xy, CB1[11].xy)).xyz;
    vec3 f4 = texture2D(Texture0Texture, min(VARYING2.zw, CB1[11].xy)).xyz;
    vec3 f5 = texture2D(Texture0Texture, min(VARYING3.xy, CB1[11].xy)).xyz;
    vec3 f6 = texture2D(Texture0Texture, min(VARYING3.zw, CB1[11].xy)).xyz;
    vec3 f7 = texture2D(Texture0Texture, min(VARYING4.xy, CB1[11].xy)).xyz;
    vec3 f8 = texture2D(Texture0Texture, min(VARYING4.zw, CB1[11].xy)).xyz;
    vec3 f9 = ((((((((((f0 * f0) * 4.0) + ((f1 * f1) * 4.0)) + ((f2 * f2) * 4.0)) + ((f3 * f3) * 4.0)) + ((f4 * f4) * 4.0)) + ((f5 * f5) * 4.0)) + ((f6 * f6) * 4.0)) + ((f7 * f7) * 4.0)) + ((f8 * f8) * 4.0)) * 0.111111111938953399658203125;
    float f10 = max(max(f9.x, f9.y), f9.z);
    gl_FragData[0] = vec4(sqrt(clamp((f9 * ((vec3(max(f10 - CB1[10].y, 0.0)) / vec3(f10 + 0.001000000047497451305389404296875)) * CB1[10].x)) * 0.25, vec3(0.0), vec3(1.0))), 1.0);
}

//$$Texture0Texture=s0
