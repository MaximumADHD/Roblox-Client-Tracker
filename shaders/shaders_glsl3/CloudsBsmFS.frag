#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler3D CloudsDistanceFieldTexture;

in vec2 VARYING0;
out float _entryPointOutput;

void main()
{
    vec3 f0 = -CB0[11].xyz;
    float f1 = f0.y;
    float f2 = (f1 < 0.0) ? min(-0.100000001490116119384765625, f1) : max(0.100000001490116119384765625, f1);
    vec3 f3 = f0;
    f3.y = f2;
    vec3 f4 = f3;
    f4.y = f2 * 0.5;
    vec3 f5 = normalize(f4);
    float f6 = f5.y;
    float f7 = 0.03125 / max(abs(f6), 9.9999997473787516355514526367188e-05);
    vec3 f8 = vec3(VARYING0.x, 0.0, VARYING0.y);
    f8.y = (f6 >= 0.0) ? 0.0 : 1.0;
    float f9;
    f9 = 0.0;
    float f10;
    for (int f11 = 0; f11 < 32; f9 = f10, f11++)
    {
        vec3 f12 = f8 + ((f5 * float(f11)) * f7);
        float f13 = f12.y;
        if ((f13 > 1.0) || (f13 < 0.0))
        {
            break;
        }
        f10 = f9 + textureLod(CloudsDistanceFieldTexture, vec4(f12.xz, f13, 0.0).xyz, 0.0).x;
    }
    _entryPointOutput = f9 * 0.03125;
}

//$$CloudsDistanceFieldTexture=s0
