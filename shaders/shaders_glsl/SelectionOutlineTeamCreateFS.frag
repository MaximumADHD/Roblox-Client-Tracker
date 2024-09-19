#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform vec4 CB7[512];
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
    vec4 f15 = texture2DLod(Texture1Texture, f3, 0.0);
    float f16 = f15.x;
    vec4 f17 = texture2DLod(Texture1Texture, f4, 0.0);
    float f18 = f17.x;
    vec4 f19 = texture2DLod(Texture1Texture, f5, 0.0);
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
    bool f32 = (f14 > 0.0) && (texture2DLod(Texture1Texture, f6, 0.0).x > (f29 ? f20 : f28));
    bvec2 f33 = bvec2(f32);
    vec2 f34 = vec2(f33.x ? f6.x : f31.x, f33.y ? f6.y : f31.y);
    int f35 = int(floor(texture2DLod(Texture0Texture, VARYING0, 0.0).x * 255.5));
    float f36 = (texture2DLod(Texture1Texture, f34, 0.0).x < texture2DLod(Texture2Texture, f34, 0.0).x) ? CB1[2].y : 1.0;
    vec4 f37 = CB7[f35 * 1 + 0];
    f37.w = min(CB7[f35 * 1 + 0].w, f36);
    vec4 f38 = mix(f37, vec4(CB7[(int(floor((f32 ? f14 : (f29 ? f12 : (f25 ? f10 : (f21 ? f8 : 0.0)))) * 255.5)) + 256) * 1 + 0].xyz, f36), vec4(clamp(255.0 * max(abs(f10 - f8), abs(f14 - f12)), 0.0, 1.0)));
    vec3 f39 = f38.xyz * f38.w;
    vec4 f40 = f38;
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    gl_FragData[0] = f42;
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
//$$Texture2Texture=s2
