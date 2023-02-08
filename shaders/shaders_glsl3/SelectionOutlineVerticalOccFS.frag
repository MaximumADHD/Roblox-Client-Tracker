#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform vec4 CB7[512];
uniform vec4 CB6[64];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture1Texture;
uniform sampler2D Texture2Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    int f0 = int(CB1[1].w);
    vec4 f1 = vec4(255.0) - (textureLod(Texture0Texture, VARYING0, 0.0) * 255.0);
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
    vec2 f9;
    vec2 f10;
    vec2 f11;
    vec4 f12;
    vec3 f13;
    vec2 f14;
    vec2 f15;
    f15 = VARYING0;
    f14 = VARYING0;
    f13 = f1.xyz;
    f12 = f5;
    f11 = VARYING0;
    f10 = VARYING0;
    f9 = VARYING0;
    f8 = VARYING0;
    f7 = 0.0;
    float f16;
    vec2 f17;
    vec2 f18;
    float f19;
    vec2 f20;
    vec2 f21;
    vec2 f22;
    vec2 f23;
    vec4 f24;
    vec3 f25;
    int f26 = 1;
    float f27 = 1.0;
    for (; f26 <= f0; f15 = f18, f14 = f17, f13 = f25, f12 = f24, f27 = f16, f11 = f23, f10 = f22, f9 = f21, f8 = f20, f7 = f19, f26++)
    {
        float f28 = f27 * f27;
        f17 = f14;
        f17.y = f14.y - CB1[0].w;
        f18 = f15;
        f18.y = f15.y + CB1[0].w;
        vec4 f29 = vec4(255.0) - (textureLod(Texture0Texture, f17, 0.0) * 255.0);
        vec4 f30 = vec4(255.0) - (textureLod(Texture0Texture, f18, 0.0) * 255.0);
        vec4 f31 = f29 * f29;
        vec4 f32 = f30 * f30;
        vec2 f33;
        vec3 f34;
        if ((f28 + f31.x) < f12.x)
        {
            vec3 f35 = f13;
            f35.x = f29.x;
            f34 = f35;
            f33 = f17;
        }
        else
        {
            f34 = f13;
            f33 = f9;
        }
        vec3 f36;
        if ((f28 + f32.x) < f12.x)
        {
            vec3 f37 = f34;
            f37.x = f30.x;
            f36 = f37;
            f21 = f18;
        }
        else
        {
            f36 = f34;
            f21 = f33;
        }
        vec2 f38;
        vec3 f39;
        if ((f28 + f31.y) < f12.y)
        {
            vec3 f40 = f36;
            f40.y = f29.y;
            f39 = f40;
            f38 = f17;
        }
        else
        {
            f39 = f36;
            f38 = f10;
        }
        vec3 f41;
        if ((f28 + f32.y) < f12.y)
        {
            vec3 f42 = f39;
            f42.y = f30.y;
            f41 = f42;
            f22 = f18;
        }
        else
        {
            f41 = f39;
            f22 = f38;
        }
        vec2 f43;
        vec3 f44;
        if ((f28 + f31.z) < f12.z)
        {
            vec3 f45 = f41;
            f45.z = f29.z;
            f44 = f45;
            f43 = f17;
        }
        else
        {
            f44 = f41;
            f43 = f11;
        }
        if ((f28 + f32.z) < f12.z)
        {
            vec3 f46 = f44;
            f46.z = f30.z;
            f25 = f46;
            f23 = f18;
        }
        else
        {
            f25 = f44;
            f23 = f43;
        }
        vec3 f47 = vec3(f28);
        vec3 f48 = min(f12.xyz, f47 + f31.xyz);
        vec4 f49 = f12;
        f49.x = f48.x;
        vec4 f50 = f49;
        f50.y = f48.y;
        vec4 f51 = f50;
        f51.z = f48.z;
        vec3 f52 = min(f51.xyz, f47 + f32.xyz);
        vec4 f53 = f51;
        f53.x = f52.x;
        vec4 f54 = f53;
        f54.y = f52.y;
        vec4 f55 = f54;
        f55.z = f52.z;
        float f56 = f28 + f31.w;
        float f57;
        vec2 f58;
        vec4 f59;
        if (f56 < f12.w)
        {
            vec4 f60 = f55;
            f60.w = f56;
            f59 = f60;
            f58 = f17;
            f57 = f29.w;
        }
        else
        {
            f59 = f55;
            f58 = f8;
            f57 = f7;
        }
        float f61 = f28 + f32.w;
        if (f61 < f59.w)
        {
            vec4 f62 = f59;
            f62.w = f61;
            f24 = f62;
            f20 = f18;
            f19 = f30.w;
        }
        else
        {
            f24 = f59;
            f20 = f58;
            f19 = f57;
        }
        f16 = f27 + 1.0;
    }
    vec4 f63 = sqrt(f12);
    vec4 f64;
    if (f63.x > float(int(CB1[1].x)))
    {
        vec4 f65 = f63;
        f65.x = 0.0;
        f64 = f65;
    }
    else
    {
        f64 = f63;
    }
    float f66 = float(int(CB1[1].y));
    vec4 f67;
    if (f64.y > f66)
    {
        vec4 f68 = f64;
        f68.y = 0.0;
        f67 = f68;
    }
    else
    {
        f67 = f64;
    }
    vec4 f69;
    if (f67.z > float(int(CB1[1].z)))
    {
        vec4 f70 = f67;
        f70.z = 0.0;
        f69 = f70;
    }
    else
    {
        f69 = f67;
    }
    vec4 f71;
    if (f69.w > f66)
    {
        vec4 f72 = f69;
        f72.w = 0.0;
        f71 = f72;
    }
    else
    {
        f71 = f69;
    }
    vec4 f73 = clamp(f71 * 255.0, vec4(0.0), vec4(1.0));
    float f74 = f73.w;
    float f75;
    if (f74 > 0.0)
    {
        vec2 f76 = vec2(f7 * CB1[0].z, 0.0);
        vec4 f77 = textureLod(Texture1Texture, f8 + f76, 0.0);
        float f78 = f77.w;
        float f79;
        if (f78 == 0.0)
        {
            f79 = textureLod(Texture1Texture, f8 - f76, 0.0).w;
        }
        else
        {
            f79 = f78;
        }
        f75 = f79;
    }
    else
    {
        f75 = textureLod(Texture1Texture, VARYING0, 0.0).w;
    }
    int f80 = int(floor(f75 * 255.0));
    float f81 = f74 * f4;
    float f82 = (1.0 - clamp((f3 - 0.999000012874603271484375) * 1000000.0, 0.0, 1.0)) * f4;
    float f83 = f73.y;
    float f84 = f73.z;
    float f85 = f73.x;
    float f86 = max(max(max(max(CB7[f80 * 1 + 0].w * f82, f81), f83), f84), f85);
    float f87;
    if (f85 > 0.0)
    {
        vec2 f88 = vec2(f13.x * CB1[0].z, 0.0);
        vec4 f89 = textureLod(Texture2Texture, f9 + f88, 0.0);
        float f90 = f89.x;
        float f91;
        if (f90 == 0.0)
        {
            f91 = textureLod(Texture2Texture, f9 - f88, 0.0).x;
        }
        else
        {
            f91 = f90;
        }
        f87 = (f91 == 0.0) ? CB1[2].x : f86;
    }
    else
    {
        f87 = f86;
    }
    float f92;
    if (f83 > 0.0)
    {
        vec2 f93 = vec2(f13.y * CB1[0].z, 0.0);
        vec4 f94 = textureLod(Texture2Texture, f10 + f93, 0.0);
        float f95 = f94.y;
        float f96;
        if (f95 == 0.0)
        {
            f96 = textureLod(Texture2Texture, f10 - f93, 0.0).y;
        }
        else
        {
            f96 = f95;
        }
        f92 = (f96 == 0.0) ? CB1[2].x : f87;
    }
    else
    {
        f92 = f87;
    }
    float f97;
    if (f84 > 0.0)
    {
        vec2 f98 = vec2(f13.z * CB1[0].z, 0.0);
        vec4 f99 = textureLod(Texture2Texture, f11 + f98, 0.0);
        float f100 = f99.z;
        float f101;
        if (f100 == 0.0)
        {
            f101 = textureLod(Texture2Texture, f11 - f98, 0.0).z;
        }
        else
        {
            f101 = f100;
        }
        f97 = (f101 == 0.0) ? CB1[2].x : f92;
    }
    else
    {
        f97 = f92;
    }
    _entryPointOutput = vec4(mix(mix(mix(mix(CB7[f80 * 1 + 0].xyz * f82, CB7[(f80 + 256) * 1 + 0].xyz, vec3(f81)), CB6[6].xyz, vec3(f83)), CB6[7].xyz, vec3(f84)), CB6[5].xyz, vec3(f85)), f97);
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
//$$Texture2Texture=s2
