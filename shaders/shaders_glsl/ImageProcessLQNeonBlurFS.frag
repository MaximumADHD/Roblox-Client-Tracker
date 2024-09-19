#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform vec4 CB6[64];
uniform sampler2D Texture5Texture;
uniform sampler2D Texture0Texture;
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    vec3 f0 = texture2D(Texture0Texture, VARYING0).xyz;
    vec3 f1 = texture2D(Texture1Texture, min(VARYING0, CB1[11].zw)).xyz;
    vec3 f2 = mix((f0 * f0) * 4.0, (f1 * f1) * 4.0, vec3(CB1[5].x));
    vec3 f3 = f2 * CB1[6].x;
    vec3 f4 = ((f2 * (f3 + vec3(CB1[6].y))) / ((f2 * (f3 + vec3(CB1[6].z))) + vec3(CB1[6].w))) * CB1[7].x;
    vec3 f5 = vec3(0.0);
    f5.x = dot(f4, CB1[2].xyz) + CB1[2].w;
    vec3 f6 = f5;
    f6.y = dot(f4, CB1[3].xyz) + CB1[3].w;
    vec3 f7 = f6;
    f7.z = dot(f4, CB1[4].xyz) + CB1[4].w;
    vec4 f8 = texture2D(Texture5Texture, VARYING0);
    float f9 = f8.x;
    vec4 f10 = texture2D(Texture5Texture, VARYING0 + vec2(CB1[0].z, 0.0));
    float f11 = f10.x;
    vec4 f12 = texture2D(Texture5Texture, VARYING0 + vec2(-CB1[0].z, 0.0));
    float f13 = f12.x;
    vec4 f14 = texture2D(Texture5Texture, VARYING0 + vec2(0.0, CB1[0].w));
    float f15 = f14.x;
    vec4 f16 = texture2D(Texture5Texture, VARYING0 + vec2(0.0, -CB1[0].w));
    float f17 = f16.x;
    int f18 = int(floor(((f9 > 0.0) ? f9 : max(max(f11, f13), max(f15, f17))) * 255.5));
    vec4 f19 = mix(CB6[f18 * 1 + 0], CB6[(f18 + 32) * 1 + 0], vec4(clamp(255.0 * max(abs(f11 - f13), abs(f15 - f17)), 0.0, 1.0)));
    gl_FragData[0] = vec4(mix(f7, f19.xyz, vec3(f19.w)), 1.0);
}

//$$Texture5Texture=s5
//$$Texture0Texture=s0
//$$Texture1Texture=s1
