#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform vec4 CB6[32];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    float f1 = f0.x;
    vec4 f2 = texture2D(Texture0Texture, VARYING0 + vec2(CB1[0].z, 0.0));
    float f3 = f2.x;
    vec4 f4 = texture2D(Texture0Texture, VARYING0 + vec2(-CB1[0].z, 0.0));
    float f5 = f4.x;
    vec4 f6 = texture2D(Texture0Texture, VARYING0 + vec2(0.0, CB1[0].w));
    float f7 = f6.x;
    vec4 f8 = texture2D(Texture0Texture, VARYING0 + vec2(0.0, -CB1[0].w));
    float f9 = f8.x;
    int f10 = int(floor(((f1 > 0.0) ? f1 : max(max(f3, f5), max(f7, f9))) * 255.5));
    int f11 = f10 + 32;
    gl_FragData[0] = mix(CB6[f10 * 1 + 0], vec4(CB6[f11 * 1 + 0].xyz, 1.0), vec4(clamp(255.0 * max(abs(f3 - f5), abs(f7 - f9)), 0.0, 1.0) * CB6[f11 * 1 + 0].w));
}

//$$Texture0Texture=s0
