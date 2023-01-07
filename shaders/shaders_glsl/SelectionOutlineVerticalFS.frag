#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform vec4 CB7[512];
uniform vec4 CB6[64];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    int f0 = int(CB1[1].w);
    vec4 f1 = vec4(255.0) - (texture2DLod(Texture0Texture, VARYING0, 0.0) * 255.0);
    vec4 f2 = f1 * f1;
    float f3 = f1.w;
    float f4 = clamp((f1.x - 0.999000012874603271484375) * 1000000.0, 0.0, 1.0);
    vec4 f5;
    if (f3 > 0.0)
    {
        vec4 f6 = f2;
        f6.w = 100000.0;
        f5 = f6;
    }
    else
    {
        f5 = f2;
    }
    float f7;
    vec2 f8;
    vec4 f9;
    vec2 f10;
    vec2 f11;
    f11 = VARYING0;
    f10 = VARYING0;
    f9 = f5;
    f8 = VARYING0;
    f7 = 0.0;
    float f12;
    vec2 f13;
    vec2 f14;
    float f15;
    vec2 f16;
    vec4 f17;
    int f18 = 1;
    float f19 = 1.0;
    for (; f18 <= f0; f11 = f14, f10 = f13, f9 = f17, f19 = f12, f8 = f16, f7 = f15, f18++)
    {
        float f20 = f19 * f19;
        f13 = f10;
        f13.y = f10.y - CB1[0].w;
        f14 = f11;
        f14.y = f11.y + CB1[0].w;
        vec4 f21 = vec4(255.0) - (texture2DLod(Texture0Texture, f13, 0.0) * 255.0);
        vec4 f22 = vec4(255.0) - (texture2DLod(Texture0Texture, f14, 0.0) * 255.0);
        vec4 f23 = f21 * f21;
        vec4 f24 = f22 * f22;
        vec3 f25 = vec3(f20);
        vec3 f26 = min(f9.xyz, f25 + f23.xyz);
        vec4 f27 = f9;
        f27.x = f26.x;
        vec4 f28 = f27;
        f28.y = f26.y;
        vec4 f29 = f28;
        f29.z = f26.z;
        vec3 f30 = min(f29.xyz, f25 + f24.xyz);
        vec4 f31 = f29;
        f31.x = f30.x;
        vec4 f32 = f31;
        f32.y = f30.y;
        vec4 f33 = f32;
        f33.z = f30.z;
        float f34 = f20 + f23.w;
        float f35;
        vec2 f36;
        vec4 f37;
        if (f34 < f9.w)
        {
            vec4 f38 = f33;
            f38.w = f34;
            f37 = f38;
            f36 = f13;
            f35 = f21.w;
        }
        else
        {
            f37 = f33;
            f36 = f8;
            f35 = f7;
        }
        float f39 = f20 + f24.w;
        if (f39 < f37.w)
        {
            vec4 f40 = f37;
            f40.w = f39;
            f17 = f40;
            f16 = f14;
            f15 = f22.w;
        }
        else
        {
            f17 = f37;
            f16 = f36;
            f15 = f35;
        }
        f12 = f19 + 1.0;
    }
    vec4 f41 = sqrt(f9);
    vec4 f42;
    if (f41.x > float(int(CB1[1].x)))
    {
        vec4 f43 = f41;
        f43.x = 0.0;
        f42 = f43;
    }
    else
    {
        f42 = f41;
    }
    float f44 = float(int(CB1[1].y));
    vec4 f45;
    if (f42.y > f44)
    {
        vec4 f46 = f42;
        f46.y = 0.0;
        f45 = f46;
    }
    else
    {
        f45 = f42;
    }
    vec4 f47;
    if (f45.z > float(int(CB1[1].z)))
    {
        vec4 f48 = f45;
        f48.z = 0.0;
        f47 = f48;
    }
    else
    {
        f47 = f45;
    }
    vec4 f49;
    if (f47.w > f44)
    {
        vec4 f50 = f47;
        f50.w = 0.0;
        f49 = f50;
    }
    else
    {
        f49 = f47;
    }
    vec4 f51 = clamp(f49 * 255.0, vec4(0.0), vec4(1.0));
    float f52 = f51.w;
    float f53;
    if (f52 > 0.0)
    {
        vec2 f54 = vec2(f7 * CB1[0].z, 0.0);
        vec4 f55 = texture2DLod(Texture1Texture, f8 + f54, 0.0);
        float f56 = f55.w;
        float f57;
        if (f56 == 0.0)
        {
            f57 = texture2DLod(Texture1Texture, f8 - f54, 0.0).w;
        }
        else
        {
            f57 = f56;
        }
        f53 = f57;
    }
    else
    {
        f53 = texture2DLod(Texture1Texture, VARYING0, 0.0).w;
    }
    int f58 = int(floor(f53 * 255.0));
    float f59 = f52 * f4;
    float f60 = (1.0 - clamp((f3 - 0.999000012874603271484375) * 1000000.0, 0.0, 1.0)) * f4;
    float f61 = f51.y;
    float f62 = f51.z;
    float f63 = f51.x;
    gl_FragData[0] = vec4(mix(mix(mix(mix(CB7[f58 * 1 + 0].xyz * f60, CB7[(f58 + 256) * 1 + 0].xyz, vec3(f59)), CB6[6].xyz, vec3(f61)), CB6[7].xyz, vec3(f62)), CB6[5].xyz, vec3(f63)), max(max(max(max(CB7[f58 * 1 + 0].w * f60, f59), f61), f62), f63));
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
