#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform vec4 CB7[512];
uniform vec4 CB6[64];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture1Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    int f0 = int(CB1[1].w);
    vec4 f1 = vec4(255.0) - (textureLod(Texture0Texture, VARYING0, 0.0) * 255.0);
    vec4 f2 = f1 * f1;
    float f3 = f1.w;
    vec4 f4;
    if (f3 > 0.0)
    {
        vec4 f5 = f2;
        f5.w = 100000.0;
        f4 = f5;
    }
    else
    {
        f4 = f2;
    }
    float f6;
    vec2 f7;
    vec4 f8;
    vec2 f9;
    vec2 f10;
    f10 = VARYING0;
    f9 = VARYING0;
    f8 = f4;
    f7 = VARYING0;
    f6 = 0.0;
    float f11;
    vec2 f12;
    vec2 f13;
    float f14;
    vec2 f15;
    vec4 f16;
    int f17 = 1;
    float f18 = 1.0;
    for (; f17 <= f0; f10 = f13, f9 = f12, f8 = f16, f18 = f11, f7 = f15, f6 = f14, f17++)
    {
        float f19 = f18 * f18;
        f12 = f9;
        f12.y = f9.y - CB1[0].w;
        f13 = f10;
        f13.y = f10.y + CB1[0].w;
        vec4 f20 = vec4(255.0) - (textureLod(Texture0Texture, f12, 0.0) * 255.0);
        vec4 f21 = vec4(255.0) - (textureLod(Texture0Texture, f13, 0.0) * 255.0);
        vec4 f22 = f20 * f20;
        vec4 f23 = f21 * f21;
        vec3 f24 = vec3(f19);
        vec3 f25 = min(f8.xyz, f24 + f22.xyz);
        vec4 f26 = f8;
        f26.x = f25.x;
        vec4 f27 = f26;
        f27.y = f25.y;
        vec4 f28 = f27;
        f28.z = f25.z;
        vec3 f29 = min(f28.xyz, f24 + f23.xyz);
        vec4 f30 = f28;
        f30.x = f29.x;
        vec4 f31 = f30;
        f31.y = f29.y;
        vec4 f32 = f31;
        f32.z = f29.z;
        float f33 = f19 + f22.w;
        float f34;
        vec2 f35;
        vec4 f36;
        if (f33 < f8.w)
        {
            vec4 f37 = f32;
            f37.w = f33;
            f36 = f37;
            f35 = f12;
            f34 = f20.w;
        }
        else
        {
            f36 = f32;
            f35 = f7;
            f34 = f6;
        }
        float f38 = f19 + f23.w;
        if (f38 < f36.w)
        {
            vec4 f39 = f36;
            f39.w = f38;
            f16 = f39;
            f15 = f13;
            f14 = f21.w;
        }
        else
        {
            f16 = f36;
            f15 = f35;
            f14 = f34;
        }
        f11 = f18 + 1.0;
    }
    vec4 f40 = sqrt(f8);
    vec4 f41;
    if (f40.x > float(int(CB1[1].x)))
    {
        vec4 f42 = f40;
        f42.x = 0.0;
        f41 = f42;
    }
    else
    {
        f41 = f40;
    }
    float f43 = float(int(CB1[1].y));
    vec4 f44;
    if (f41.y > f43)
    {
        vec4 f45 = f41;
        f45.y = 0.0;
        f44 = f45;
    }
    else
    {
        f44 = f41;
    }
    vec4 f46;
    if (f44.z > float(int(CB1[1].z)))
    {
        vec4 f47 = f44;
        f47.z = 0.0;
        f46 = f47;
    }
    else
    {
        f46 = f44;
    }
    vec4 f48;
    if (f46.w > f43)
    {
        vec4 f49 = f46;
        f49.w = 0.0;
        f48 = f49;
    }
    else
    {
        f48 = f46;
    }
    vec4 f50 = clamp(f48 * 255.0, vec4(0.0), vec4(1.0));
    float f51 = f50.w;
    float f52;
    if (f51 > 0.0)
    {
        vec2 f53 = vec2(f6 * CB1[0].z, 0.0);
        vec4 f54 = textureLod(Texture1Texture, f7 + f53, 0.0);
        float f55 = f54.w;
        float f56;
        if (f55 == 0.0)
        {
            f56 = textureLod(Texture1Texture, f7 - f53, 0.0).w;
        }
        else
        {
            f56 = f55;
        }
        f52 = f56;
    }
    else
    {
        f52 = textureLod(Texture1Texture, VARYING0, 0.0).w;
    }
    int f57 = int(floor(f52 * 255.0));
    float f58 = 1.0 - clamp((f3 - 0.999000012874603271484375) * 1000000.0, 0.0, 1.0);
    float f59 = f50.z;
    float f60 = f50.y;
    float f61 = f50.x;
    _entryPointOutput = vec4(mix(mix(mix(mix(CB7[f57 * 1 + 0].xyz * f58, CB7[(f57 + 256) * 1 + 0].xyz, vec3(f51)), CB6[7].xyz, vec3(f59)), CB6[6].xyz, vec3(f60)), CB6[5].xyz, vec3(f61)), max(max(max(max(CB7[f57 * 1 + 0].w * f58, f51), f59), f60), f61));
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
