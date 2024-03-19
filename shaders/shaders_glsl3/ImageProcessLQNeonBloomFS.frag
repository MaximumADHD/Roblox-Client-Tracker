#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform vec4 CB6[64];
uniform sampler2DMS DepthAATexture;
uniform sampler2D Texture0Texture;
uniform sampler2D Texture3Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0);
    vec3 f1 = f0.xyz;
    vec3 f2 = texture(Texture3Texture, VARYING0).xyz + ((f1 * ((vec3(max(max(max(f0.x, f0.y), f0.z) - CB1[9].y, 0.0)) * CB1[9].x) * 3.2999999523162841796875)) * 2.0);
    vec3 f3 = ((f1 * f1) * 4.0) + ((f2 * f2) * 4.0);
    vec3 f4 = f3 * CB1[5].x;
    vec3 f5 = ((f3 * (f4 + vec3(CB1[5].y))) / ((f3 * (f4 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    vec3 f6 = vec3(0.0);
    f6.x = dot(f5, CB1[1].xyz) + CB1[1].w;
    vec3 f7 = f6;
    f7.y = dot(f5, CB1[2].xyz) + CB1[2].w;
    vec3 f8 = f7;
    f8.z = dot(f5, CB1[3].xyz) + CB1[3].w;
    ivec2 f9 = ivec2(VARYING0 * CB1[8].xy);
    vec4 f10 = texelFetch(DepthAATexture, f9, 0);
    float f11 = f10.x;
    vec4 f12 = texelFetch(DepthAATexture, f9 + ivec2(1, 0), 0);
    float f13 = f12.x;
    vec4 f14 = texelFetch(DepthAATexture, f9 + ivec2(-1, 0), 0);
    float f15 = f14.x;
    vec4 f16 = texelFetch(DepthAATexture, f9 + ivec2(0, 1), 0);
    float f17 = f16.x;
    vec4 f18 = texelFetch(DepthAATexture, f9 + ivec2(0, -1), 0);
    float f19 = f18.x;
    int f20 = int(floor(((f11 > 0.0) ? f11 : max(max(f13, f15), max(f17, f19))) * 255.5));
    vec4 f21 = mix(CB6[f20 * 1 + 0], CB6[(f20 + 32) * 1 + 0], vec4(clamp(255.0 * max(abs(f13 - f15), abs(f17 - f19)), 0.0, 1.0)));
    _entryPointOutput = vec4(mix(f8, f21.xyz, vec3(f21.w)), 1.0);
}

//$$DepthAATexture=s4
//$$Texture0Texture=s0
//$$Texture3Texture=s3
