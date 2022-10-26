#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    int f0 = int(CB1[1].w);
    vec4 f1 = textureLod(Texture0Texture, VARYING0, 0.0);
    vec4 f2 = f1;
    f2.w = f1.w * 255.0;
    vec4 f3;
    vec2 f4;
    vec2 f5;
    f5 = VARYING0;
    f4 = VARYING0;
    f3 = f2;
    int f6 = 1;
    float f7 = 1.0;
    for (; f6 <= f0; )
    {
        float f8 = f7 - 0.0039215688593685626983642578125;
        vec2 f9 = f4;
        f9.x = f4.x - CB1[0].z;
        vec4 f10 = textureLod(Texture0Texture, f9, 0.0);
        vec2 f11 = f5;
        f11.x = f5.x + CB1[0].z;
        vec4 f12 = textureLod(Texture0Texture, f11, 0.0);
        vec3 f13 = max(f3.xyz, f10.xyz * f8);
        vec4 f14 = f3;
        f14.x = f13.x;
        vec4 f15 = f14;
        f15.y = f13.y;
        vec4 f16 = f15;
        f16.z = f13.z;
        vec3 f17 = max(f16.xyz, f12.xyz * f8);
        vec4 f18 = f16;
        f18.x = f17.x;
        vec4 f19 = f18;
        f19.y = f17.y;
        vec4 f20 = f19;
        f20.z = f17.z;
        float f21 = max(f3.w, f8 * clamp(f10.w * 255.0, 0.0, 1.0));
        vec4 f22 = f20;
        f22.w = f21;
        vec4 f23 = f22;
        f23.w = max(f21, f8 * clamp(f12.w * 255.0, 0.0, 1.0));
        f5 = f11;
        f4 = f9;
        f3 = f23;
        f7 = f8;
        f6++;
        continue;
    }
    _entryPointOutput = f3;
}

//$$Texture0Texture=s0
