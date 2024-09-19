#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform vec4 CB6[64];
uniform sampler2D Texture5Texture;
uniform sampler2D Texture0Texture;
uniform sampler2D Texture3Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    vec3 f1 = f0.xyz;
    vec3 f2 = texture2D(Texture3Texture, min(VARYING0, CB1[12].zw)).xyz + ((f1 * ((vec3(max(max(max(f0.x, f0.y), f0.z) - CB1[10].y, 0.0)) * CB1[10].x) * 3.2999999523162841796875)) * 2.0);
    vec3 f3 = ((f1 * f1) * 4.0) + ((f2 * f2) * 4.0);
    vec3 f4 = f3 * CB1[6].x;
    vec3 f5 = ((f3 * (f4 + vec3(CB1[6].y))) / ((f3 * (f4 + vec3(CB1[6].z))) + vec3(CB1[6].w))) * CB1[7].x;
    vec3 f6 = vec3(0.0);
    f6.x = dot(f5, CB1[2].xyz) + CB1[2].w;
    vec3 f7 = f6;
    f7.y = dot(f5, CB1[3].xyz) + CB1[3].w;
    vec3 f8 = f7;
    f8.z = dot(f5, CB1[4].xyz) + CB1[4].w;
    vec4 f9 = texture2D(Texture5Texture, VARYING0);
    float f10 = f9.x;
    vec4 f11 = texture2D(Texture5Texture, VARYING0 + vec2(CB1[0].z, 0.0));
    float f12 = f11.x;
    vec4 f13 = texture2D(Texture5Texture, VARYING0 + vec2(-CB1[0].z, 0.0));
    float f14 = f13.x;
    vec4 f15 = texture2D(Texture5Texture, VARYING0 + vec2(0.0, CB1[0].w));
    float f16 = f15.x;
    vec4 f17 = texture2D(Texture5Texture, VARYING0 + vec2(0.0, -CB1[0].w));
    float f18 = f17.x;
    int f19 = int(floor(((f10 > 0.0) ? f10 : max(max(f12, f14), max(f16, f18))) * 255.5));
    vec4 f20 = mix(CB6[f19 * 1 + 0], CB6[(f19 + 32) * 1 + 0], vec4(clamp(255.0 * max(abs(f12 - f14), abs(f16 - f18)), 0.0, 1.0)));
    gl_FragData[0] = vec4(mix(f8, f20.xyz, vec3(f20.w)), 1.0);
}

//$$Texture5Texture=s5
//$$Texture0Texture=s0
//$$Texture3Texture=s3
