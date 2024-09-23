#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[10];
uniform vec4 CB0[58];
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
    vec3 f1 = texture2D(Texture3Texture, VARYING0).xyz;
    vec3 f2 = texture2D(Texture2Texture, VARYING0).xyz * CB1[4].w;
    vec3 f3 = texture2D(Texture1Texture, VARYING0).xyz;
    vec3 f4 = mix((((f0 * f0) * 4.0) + ((f1 * f1) * 4.0)) + (f2 * f2), (f3 * f3) * 4.0, vec3(CB1[4].x));
    vec3 f5 = f4 * CB1[5].x;
    vec3 f6 = ((f4 * (f5 + vec3(CB1[5].y))) / ((f4 * (f5 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    vec3 f7 = vec3(0.0);
    f7.x = dot(f6, CB1[1].xyz) + CB1[1].w;
    vec3 f8 = f7;
    f8.y = dot(f6, CB1[2].xyz) + CB1[2].w;
    vec3 f9 = f8;
    f9.z = dot(f6, CB1[3].xyz) + CB1[3].w;
    vec2 f10 = VARYING0 * CB0[50].zw;
    vec4 f11 = texture2D(Texture5Texture, f10);
    float f12 = f11.x;
    vec4 f13 = texture2D(Texture5Texture, f10 + vec2(CB1[0].z, 0.0));
    float f14 = f13.x;
    vec4 f15 = texture2D(Texture5Texture, f10 + vec2(-CB1[0].z, 0.0));
    float f16 = f15.x;
    vec4 f17 = texture2D(Texture5Texture, f10 + vec2(0.0, CB1[0].w));
    float f18 = f17.x;
    vec4 f19 = texture2D(Texture5Texture, f10 + vec2(0.0, -CB1[0].w));
    float f20 = f19.x;
    int f21 = int(floor(((f12 > 0.0) ? f12 : max(max(f14, f16), max(f18, f20))) * 255.5));
    vec4 f22 = mix(CB6[f21 * 1 + 0], CB6[(f21 + 32) * 1 + 0], vec4(clamp(255.0 * max(abs(f14 - f16), abs(f18 - f20)), 0.0, 1.0)));
    gl_FragData[0] = vec4(mix(f9, f22.xyz, vec3(f22.w)), 1.0);
}

//$$Texture5Texture=s5
//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
//$$Texture1Texture=s1
