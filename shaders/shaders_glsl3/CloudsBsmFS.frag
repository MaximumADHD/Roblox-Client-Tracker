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
    vec3 f7 = vec3(VARYING0.x, 0.0, VARYING0.y);
    f7.y = (f6 >= 0.0) ? 0.0 : 1.0;
    float f8;
    f8 = 0.0;
    float f9;
    for (int f10 = 0; f10 < 32; f8 = f9, f10++)
    {
        vec3 f11 = f7 + ((f5 * float(f10)) * (0.03125 / max(abs(f6), 9.9999997473787516355514526367188e-05)));
        float f12 = f11.y;
        if ((f12 > 1.0) || (f12 < 0.0))
        {
            break;
        }
        f9 = f8 + textureLod(CloudsDistanceFieldTexture, vec4(f11.xz, f12, 0.0).xyz, 0.0).x;
    }
    _entryPointOutput = f8 * 0.03125;
}

//$$CloudsDistanceFieldTexture=s0
