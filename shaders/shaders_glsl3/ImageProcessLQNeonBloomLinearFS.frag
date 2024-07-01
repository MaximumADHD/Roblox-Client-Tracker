#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[10];
uniform vec4 CB0[58];
uniform vec4 CB6[64];
uniform sampler2DMS DepthAATexture;
uniform sampler2D Texture0Texture;
uniform sampler2D Texture3Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = texture(Texture0Texture, VARYING0).xyz;
    vec3 f1 = ((f0 * f0) * 4.0) + texture(Texture3Texture, VARYING0).xyz;
    vec3 f2 = f1 * CB1[5].x;
    vec3 f3 = ((f1 * (f2 + vec3(CB1[5].y))) / ((f1 * (f2 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    vec3 f4 = vec3(0.0);
    f4.x = dot(f3, CB1[1].xyz) + CB1[1].w;
    vec3 f5 = f4;
    f5.y = dot(f3, CB1[2].xyz) + CB1[2].w;
    vec3 f6 = f5;
    f6.z = dot(f3, CB1[3].xyz) + CB1[3].w;
    ivec2 f7 = ivec2((VARYING0 * CB0[50].zw) * CB1[8].xy);
    vec4 f8 = texelFetch(DepthAATexture, f7, 0);
    float f9 = f8.x;
    vec4 f10 = texelFetch(DepthAATexture, f7 + ivec2(1, 0), 0);
    float f11 = f10.x;
    vec4 f12 = texelFetch(DepthAATexture, f7 + ivec2(-1, 0), 0);
    float f13 = f12.x;
    vec4 f14 = texelFetch(DepthAATexture, f7 + ivec2(0, 1), 0);
    float f15 = f14.x;
    vec4 f16 = texelFetch(DepthAATexture, f7 + ivec2(0, -1), 0);
    float f17 = f16.x;
    int f18 = int(floor(((f9 > 0.0) ? f9 : max(max(f11, f13), max(f15, f17))) * 255.5));
    vec4 f19 = mix(CB6[f18 * 1 + 0], CB6[(f18 + 32) * 1 + 0], vec4(clamp(255.0 * max(abs(f11 - f13), abs(f15 - f17)), 0.0, 1.0)));
    _entryPointOutput = vec4(mix(f6, f19.xyz, vec3(f19.w)), 1.0);
}

//$$DepthAATexture=s4
//$$Texture0Texture=s0
//$$Texture3Texture=s3
