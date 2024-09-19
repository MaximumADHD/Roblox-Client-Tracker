#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform vec4 CB6[64];
uniform sampler2D Texture5Texture;
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec3 f0 = texture2D(Texture0Texture, VARYING0).xyz;
    vec3 f1 = (f0 * f0) * 4.0;
    vec3 f2 = f1 * CB1[6].x;
    vec3 f3 = ((f1 * (f2 + vec3(CB1[6].y))) / ((f1 * (f2 + vec3(CB1[6].z))) + vec3(CB1[6].w))) * CB1[7].x;
    vec3 f4 = vec3(0.0);
    f4.x = dot(f3, CB1[2].xyz) + CB1[2].w;
    vec3 f5 = f4;
    f5.y = dot(f3, CB1[3].xyz) + CB1[3].w;
    vec3 f6 = f5;
    f6.z = dot(f3, CB1[4].xyz) + CB1[4].w;
    vec4 f7 = texture2D(Texture5Texture, VARYING0);
    float f8 = f7.x;
    vec4 f9 = texture2D(Texture5Texture, VARYING0 + vec2(CB1[0].z, 0.0));
    float f10 = f9.x;
    vec4 f11 = texture2D(Texture5Texture, VARYING0 + vec2(-CB1[0].z, 0.0));
    float f12 = f11.x;
    vec4 f13 = texture2D(Texture5Texture, VARYING0 + vec2(0.0, CB1[0].w));
    float f14 = f13.x;
    vec4 f15 = texture2D(Texture5Texture, VARYING0 + vec2(0.0, -CB1[0].w));
    float f16 = f15.x;
    int f17 = int(floor(((f8 > 0.0) ? f8 : max(max(f10, f12), max(f14, f16))) * 255.5));
    vec4 f18 = mix(CB6[f17 * 1 + 0], CB6[(f17 + 32) * 1 + 0], vec4(clamp(255.0 * max(abs(f10 - f12), abs(f14 - f16)), 0.0, 1.0)));
    gl_FragData[0] = vec4(mix(f6, f18.xyz, vec3(f18.w)), 1.0);
}

//$$Texture5Texture=s5
//$$Texture0Texture=s0
