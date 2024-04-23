#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform vec4 CB6[64];
uniform sampler2DMS DepthAATexture;
uniform sampler2D Texture0Texture;
uniform sampler2D Texture3Texture;
uniform sampler2D Texture1Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0);
    vec3 f1 = f0.xyz;
    vec3 f2 = texture(Texture3Texture, VARYING0).xyz + ((f1 * ((vec3(max(max(max(f0.x, f0.y), f0.z) - CB1[9].y, 0.0)) * CB1[9].x) * 3.2999999523162841796875)) * 2.0);
    vec3 f3 = texture(Texture1Texture, VARYING0).xyz;
    vec3 f4 = mix(((f1 * f1) * 4.0) + ((f2 * f2) * 4.0), (f3 * f3) * 4.0, vec3(CB1[4].x));
    vec3 f5 = f4 * CB1[5].x;
    vec3 f6 = ((f4 * (f5 + vec3(CB1[5].y))) / ((f4 * (f5 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    vec3 f7 = vec3(0.0);
    f7.x = dot(f6, CB1[1].xyz) + CB1[1].w;
    vec3 f8 = f7;
    f8.y = dot(f6, CB1[2].xyz) + CB1[2].w;
    vec3 f9 = f8;
    f9.z = dot(f6, CB1[3].xyz) + CB1[3].w;
    ivec2 f10 = ivec2(VARYING0 * CB1[8].xy);
    vec4 f11 = texelFetch(DepthAATexture, f10, 0);
    float f12 = f11.x;
    vec4 f13 = texelFetch(DepthAATexture, f10 + ivec2(1, 0), 0);
    float f14 = f13.x;
    vec4 f15 = texelFetch(DepthAATexture, f10 + ivec2(-1, 0), 0);
    float f16 = f15.x;
    vec4 f17 = texelFetch(DepthAATexture, f10 + ivec2(0, 1), 0);
    float f18 = f17.x;
    vec4 f19 = texelFetch(DepthAATexture, f10 + ivec2(0, -1), 0);
    float f20 = f19.x;
    int f21 = int(floor(((f12 > 0.0) ? f12 : max(max(f14, f16), max(f18, f20))) * 255.5));
    vec4 f22 = mix(CB6[f21 * 1 + 0], CB6[(f21 + 32) * 1 + 0], vec4(clamp(255.0 * max(abs(f14 - f16), abs(f18 - f20)), 0.0, 1.0)));
    _entryPointOutput = vec4(mix(f9, f22.xyz, vec3(f22.w)), 1.0);
}

//$$DepthAATexture=s4
//$$Texture0Texture=s0
//$$Texture3Texture=s3
//$$Texture1Texture=s1
