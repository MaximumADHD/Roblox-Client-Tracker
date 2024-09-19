#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform vec4 CB6[64];
uniform sampler2D Texture5Texture;
uniform sampler2D Texture0Texture;
uniform sampler2D Texture2Texture;
uniform sampler2D Texture3Texture;
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    vec3 f0 = texture2D(Texture0Texture, VARYING0).xyz;
    vec3 f1 = texture2D(Texture3Texture, min(VARYING0, CB1[12].zw)).xyz;
    vec3 f2 = texture2D(Texture2Texture, min(VARYING0, CB1[12].xy)).xyz * CB1[5].w;
    vec3 f3 = texture2D(Texture1Texture, min(VARYING0, CB1[11].zw)).xyz;
    vec3 f4 = mix((((f0 * f0) * 4.0) + ((f1 * f1) * 4.0)) + (f2 * f2), (f3 * f3) * 4.0, vec3(CB1[5].x));
    vec3 f5 = f4 * CB1[6].x;
    vec3 f6 = ((f4 * (f5 + vec3(CB1[6].y))) / ((f4 * (f5 + vec3(CB1[6].z))) + vec3(CB1[6].w))) * CB1[7].x;
    vec3 f7 = vec3(0.0);
    f7.x = dot(f6, CB1[2].xyz) + CB1[2].w;
    vec3 f8 = f7;
    f8.y = dot(f6, CB1[3].xyz) + CB1[3].w;
    vec3 f9 = f8;
    f9.z = dot(f6, CB1[4].xyz) + CB1[4].w;
    vec4 f10 = texture2D(Texture5Texture, VARYING0);
    float f11 = f10.x;
    vec4 f12 = texture2D(Texture5Texture, VARYING0 + vec2(CB1[0].z, 0.0));
    float f13 = f12.x;
    vec4 f14 = texture2D(Texture5Texture, VARYING0 + vec2(-CB1[0].z, 0.0));
    float f15 = f14.x;
    vec4 f16 = texture2D(Texture5Texture, VARYING0 + vec2(0.0, CB1[0].w));
    float f17 = f16.x;
    vec4 f18 = texture2D(Texture5Texture, VARYING0 + vec2(0.0, -CB1[0].w));
    float f19 = f18.x;
    int f20 = int(floor(((f11 > 0.0) ? f11 : max(max(f13, f15), max(f17, f19))) * 255.5));
    vec4 f21 = mix(CB6[f20 * 1 + 0], CB6[(f20 + 32) * 1 + 0], vec4(clamp(255.0 * max(abs(f13 - f15), abs(f17 - f19)), 0.0, 1.0)));
    gl_FragData[0] = vec4(mix(f9, f21.xyz, vec3(f21.w)), 1.0);
}

//$$Texture5Texture=s5
//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
//$$Texture1Texture=s1
