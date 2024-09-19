#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform vec4 CB6[64];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture1Texture;
uniform sampler2D Texture2Texture;

varying vec2 VARYING0;

void main()
{
    float f0 = CB1[2].x * 0.5;
    float f1 = floor(f0);
    float f2 = ceil(f0);
    vec2 f3 = VARYING0 - (CB1[0].zw * f1);
    vec2 f4 = VARYING0 + (CB1[0].zw * f2);
    vec2 f5 = VARYING0 + (vec2(CB1[0].z, -CB1[0].w) * f1);
    vec2 f6 = VARYING0 + (vec2(-CB1[0].z, CB1[0].w) * f2);
    vec4 f7 = texture2DLod(Texture0Texture, f3, 0.0);
    float f8 = f7.x;
    vec4 f9 = texture2DLod(Texture0Texture, f4, 0.0);
    float f10 = f9.x;
    vec4 f11 = texture2DLod(Texture0Texture, f5, 0.0);
    float f12 = f11.x;
    vec4 f13 = texture2DLod(Texture0Texture, f6, 0.0);
    float f14 = f13.x;
    bvec2 f15 = bvec2(!(f8 == 0.0));
    vec2 f16 = vec2(f15.x ? f3.x : VARYING0.x, f15.y ? f3.y : VARYING0.y);
    bvec2 f17 = bvec2(!(f10 == 0.0));
    vec2 f18 = vec2(f17.x ? f4.x : f16.x, f17.y ? f4.y : f16.y);
    bvec2 f19 = bvec2(!(f12 == 0.0));
    vec2 f20 = vec2(f19.x ? f5.x : f18.x, f19.y ? f5.y : f18.y);
    bvec2 f21 = bvec2(!(f14 == 0.0));
    vec2 f22 = vec2(f21.x ? f6.x : f20.x, f21.y ? f6.y : f20.y);
    vec4 f23 = mix(vec4(0.0), vec4(CB6[6].xyz, (texture2DLod(Texture1Texture, f22, 0.0).x < texture2DLod(Texture2Texture, f22, 0.0).x) ? CB1[2].y : 1.0), vec4(clamp(255.0 * max(abs(f10 - f8), abs(f14 - f12)), 0.0, 1.0)));
    vec3 f24 = f23.xyz * f23.w;
    vec4 f25 = f23;
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    gl_FragData[0] = f27;
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
//$$Texture2Texture=s2
