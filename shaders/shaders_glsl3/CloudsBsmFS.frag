#version 150

#extension GL_ARB_shading_language_include : require
#include <CloudsParams.h>
#include <Globals.h>
uniform vec4 CB5[5];
uniform vec4 CB0[58];
uniform sampler3D CloudsDistanceFieldTexture;
uniform sampler2D AdvectionTexTexture;
uniform sampler3D DetailTex3DTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = -CB0[16].xyz;
    float f1 = f0.y;
    vec3 f2 = f0;
    f2.y = (f1 < 0.0) ? min(-0.001000000047497451305389404296875, f1) : max(0.001000000047497451305389404296875, f1);
    vec3 f3 = normalize(f2);
    float f4 = f3.y;
    float f5 = 0.083333335816860198974609375 / max(abs(f4), 9.9999997473787516355514526367188e-05);
    vec2 f6 = vec2(32.0) * VARYING0;
    vec3 f7 = vec3(f6.x, (f4 <= 0.0) ? 0.984375 : 0.015625, f6.y);
    int f8;
    float f9;
    float f10;
    float f11;
    float f12;
    f12 = -1.0;
    f11 = 0.0;
    f10 = 0.0;
    f9 = 1.0;
    f8 = 1;
    int f13;
    float f14;
    float f15;
    float f16;
    float f17;
    for (int f18 = 0; f18 <= 12; f12 = f17, f11 = f16, f10 = f15, f9 = f14, f8 = f13, f18++)
    {
        vec3 f19 = f7 + ((f3 * float(f18)) * f5);
        float f20 = float(int(CB5[2].z <= 9.0));
        vec2 f21 = (textureLod(AdvectionTexTexture, vec4((f19.xz * 0.125) + vec2(0.0, CB5[0].w * (-17.5)), 0.0, f20).xy, f20).xy * 2.0) - vec2(1.0);
        vec3 f22 = vec3(f21.x, 0.0, f21.y);
        vec3 f23 = f19;
        f23.x = f19.x + (CB5[0].w * 39.0625);
        float f24 = CB5[2].y * clamp(1.0 + (0.001000000047497451305389404296875 * (6000.0 - CB0[11].y)), 0.0, 1.0);
        vec2 f25 = mix(vec2(0.1500000059604644775390625, 0.070000000298023223876953125), vec2(0.07500000298023223876953125, 0.0500000007450580596923828125), vec2(f24));
        vec2 f26 = vec2(CB5[4].x, 0.3499999940395355224609375 * CB5[4].x) * ((vec2(textureLod(DetailTex3DTexture, vec4((f23 * (0.5 * CB5[4].y)) + (f22 * f25.x), f20).xyz, f20).x, textureLod(DetailTex3DTexture, vec4((f23 * (2.0 * CB5[4].y)) + (f22 * f25.y), f20).xyz, f20).x) * 2.0) - vec2(1.0));
        float f27 = textureLod(CloudsDistanceFieldTexture, vec4(((f19 + (f22 * 0.75)) * vec3(0.03125, 1.0, 0.03125)).xzy, f20).xyz, f20).x + (f26.x + f26.y);
        float f28 = 1.03999996185302734375 * CB5[2].x;
        if ((f27 < f28) && (f9 > 9.9999997473787516355514526367188e-06))
        {
            float f29 = f24 * (f28 - f27);
            float f30 = f11 + f29;
            float f31 = f30 * 1.48809528350830078125;
            f17 = (f12 < 0.0) ? f31 : f12;
            f16 = f30;
            f15 = f31;
            f14 = f9 * exp2(f29 * (-0.120224587619304656982421875));
            f13 = f8 + 1;
        }
        else
        {
            f17 = f12;
            f16 = f11;
            f15 = f10;
            f14 = f9;
            f13 = f8;
        }
    }
    float f32;
    if (f8 > 1)
    {
        vec3 f33 = f7 + ((f3 * 12.0) * f5);
        float f34;
        float f35;
        float f36;
        int f37 = 0;
        float f38 = f9;
        float f39 = 0.0;
        for (;;)
        {
            if (f37 <= 12)
            {
                vec3 f40 = f33 - ((f3 * float(f37)) * f5);
                float f41 = float(int(CB5[2].z <= 9.0));
                vec2 f42 = (textureLod(AdvectionTexTexture, vec4((f40.xz * 0.125) + vec2(0.0, CB5[0].w * (-17.5)), 0.0, f41).xy, f41).xy * 2.0) - vec2(1.0);
                vec3 f43 = vec3(f42.x, 0.0, f42.y);
                vec3 f44 = f40;
                f44.x = f40.x + (CB5[0].w * 39.0625);
                float f45 = CB5[2].y * clamp(1.0 + (0.001000000047497451305389404296875 * (6000.0 - CB0[11].y)), 0.0, 1.0);
                vec2 f46 = mix(vec2(0.1500000059604644775390625, 0.070000000298023223876953125), vec2(0.07500000298023223876953125, 0.0500000007450580596923828125), vec2(f45));
                vec2 f47 = vec2(CB5[4].x, 0.3499999940395355224609375 * CB5[4].x) * ((vec2(textureLod(DetailTex3DTexture, vec4((f44 * (0.5 * CB5[4].y)) + (f43 * f46.x), f41).xyz, f41).x, textureLod(DetailTex3DTexture, vec4((f44 * (2.0 * CB5[4].y)) + (f43 * f46.y), f41).xyz, f41).x) * 2.0) - vec2(1.0));
                float f48 = textureLod(CloudsDistanceFieldTexture, vec4(((f40 + (f43 * 0.75)) * vec3(0.03125, 1.0, 0.03125)).xzy, f41).xyz, f41).x + (f47.x + f47.y);
                float f49 = 1.03999996185302734375 * CB5[2].x;
                if (f48 < f49)
                {
                    float f50 = f45 * (f49 - f48);
                    float f51 = f38 * exp2(f50 * (-0.120224587619304656982421875));
                    float f52 = f39 + f50;
                    if (f51 <= 9.9999997473787516355514526367188e-06)
                    {
                        f34 = f52;
                        break;
                    }
                    f36 = f52;
                    f35 = f51;
                }
                else
                {
                    f36 = f39;
                    f35 = f38;
                }
                f39 = f36;
                f38 = f35;
                f37++;
                continue;
            }
            else
            {
                f34 = f39;
                break;
            }
        }
        f32 = f34;
    }
    else
    {
        f32 = 0.0;
    }
    _entryPointOutput = vec4(1.0 - (0.5 * f10), f11 / float(f8), 1.0 - (0.5 * f12), f32);
}

//$$CloudsDistanceFieldTexture=s0
//$$AdvectionTexTexture=s6
//$$DetailTex3DTexture=s5
