#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[16];
uniform vec4 CB6[64];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture1Texture;
uniform sampler2D Texture2Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    float f0 = CB1[2].x * 0.5;
    float f1 = floor(f0);
    float f2 = ceil(f0);
    vec2 f3 = VARYING0 - (CB1[0].zw * f1);
    vec2 f4 = VARYING0 + (CB1[0].zw * f2);
    vec2 f5 = VARYING0 + (vec2(CB1[0].z, -CB1[0].w) * f1);
    vec2 f6 = VARYING0 + (vec2(-CB1[0].z, CB1[0].w) * f2);
    vec4 f7 = textureLod(Texture0Texture, min(f3, CB1[12].xy), 0.0);
    float f8 = f7.x;
    vec4 f9 = textureLod(Texture0Texture, min(f4, CB1[12].xy), 0.0);
    float f10 = f9.x;
    vec4 f11 = textureLod(Texture0Texture, min(f5, CB1[12].xy), 0.0);
    float f12 = f11.x;
    vec4 f13 = textureLod(Texture0Texture, min(f6, CB1[12].xy), 0.0);
    float f14 = f13.x;
    vec4 f15;
    if (textureLod(Texture0Texture, VARYING0, 0.0).x > 0.0)
    {
        f15 = CB6[4];
    }
    else
    {
        f15 = vec4(0.0);
    }
    bvec2 f16 = bvec2(!(f8 == 0.0));
    vec2 f17 = vec2(f16.x ? f3.x : VARYING0.x, f16.y ? f3.y : VARYING0.y);
    bvec2 f18 = bvec2(!(f10 == 0.0));
    vec2 f19 = vec2(f18.x ? f4.x : f17.x, f18.y ? f4.y : f17.y);
    bvec2 f20 = bvec2(!(f12 == 0.0));
    vec2 f21 = vec2(f20.x ? f5.x : f19.x, f20.y ? f5.y : f19.y);
    bvec2 f22 = bvec2(!(f14 == 0.0));
    vec2 f23 = vec2(f22.x ? f6.x : f21.x, f22.y ? f6.y : f21.y);
    vec4 f24 = mix(f15, vec4(CB6[8].xyz, (textureLod(Texture1Texture, min(f23, CB1[12].zw), 0.0).x < textureLod(Texture2Texture, min(f23, CB1[13].xy), 0.0).x) ? CB1[2].y : 1.0), vec4(clamp(255.0 * max(abs(f10 - f8), abs(f14 - f12)), 0.0, 1.0)));
    vec3 f25 = f24.xyz * f24.w;
    vec4 f26 = f24;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    _entryPointOutput = f28;
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
//$$Texture2Texture=s2
