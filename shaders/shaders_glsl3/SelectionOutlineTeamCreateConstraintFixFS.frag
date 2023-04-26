#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform vec4 CB7[512];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture1Texture;
uniform sampler2D Texture2Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    float f0 = CB1[1].x * 0.5;
    float f1 = floor(f0);
    float f2 = ceil(f0);
    vec2 f3 = VARYING0 - (CB1[0].zw * f1);
    vec2 f4 = VARYING0 + (CB1[0].zw * f2);
    vec2 f5 = VARYING0 + (vec2(CB1[0].z, -CB1[0].w) * f1);
    vec2 f6 = VARYING0 + (vec2(-CB1[0].z, CB1[0].w) * f2);
    vec4 f7 = textureLod(Texture0Texture, f3, 0.0);
    float f8 = f7.x;
    vec4 f9 = textureLod(Texture0Texture, f4, 0.0);
    float f10 = f9.x;
    vec4 f11 = textureLod(Texture0Texture, f5, 0.0);
    float f12 = f11.x;
    vec4 f13 = textureLod(Texture0Texture, f6, 0.0);
    float f14 = f13.x;
    vec4 f15 = textureLod(Texture1Texture, f3, 0.0);
    float f16 = f15.x;
    vec4 f17 = textureLod(Texture1Texture, f4, 0.0);
    float f18 = f17.x;
    vec4 f19 = textureLod(Texture1Texture, f5, 0.0);
    float f20 = f19.x;
    bool f21 = (f8 > 0.0) && (f16 > 0.0);
    bvec2 f22 = bvec2(f21);
    vec2 f23 = vec2(f22.x ? f3.x : VARYING0.x, f22.y ? f3.y : VARYING0.y);
    float f24 = f21 ? f16 : 0.0;
    bool f25 = (f10 > 0.0) && (f18 > f24);
    bvec2 f26 = bvec2(f25);
    vec2 f27 = vec2(f26.x ? f4.x : f23.x, f26.y ? f4.y : f23.y);
    float f28 = f25 ? f18 : f24;
    bool f29 = (f12 > 0.0) && (f20 > f28);
    bvec2 f30 = bvec2(f29);
    vec2 f31 = vec2(f30.x ? f5.x : f27.x, f30.y ? f5.y : f27.y);
    bool f32 = (f14 > 0.0) && (textureLod(Texture1Texture, f6, 0.0).x > (f29 ? f20 : f28));
    bvec2 f33 = bvec2(f32);
    vec2 f34 = vec2(f33.x ? f6.x : f31.x, f33.y ? f6.y : f31.y);
    vec4 f35 = mix(CB7[int(floor(textureLod(Texture0Texture, VARYING0, 0.0).x * 255.5)) * 1 + 0], vec4(CB7[(int(floor((f32 ? f14 : (f29 ? f12 : (f25 ? f10 : (f21 ? f8 : 0.0)))) * 255.5)) + 256) * 1 + 0].xyz, (textureLod(Texture1Texture, f34, 0.0).x < textureLod(Texture2Texture, f34, 0.0).x) ? CB1[1].y : 1.0), vec4(clamp(255.0 * max(abs(f10 - f8), abs(f14 - f12)), 0.0, 1.0)));
    vec3 f36 = f35.xyz * f35.w;
    vec4 f37 = f35;
    f37.x = f36.x;
    vec4 f38 = f37;
    f38.y = f36.y;
    vec4 f39 = f38;
    f39.z = f36.z;
    _entryPointOutput = f39;
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
//$$Texture2Texture=s2
