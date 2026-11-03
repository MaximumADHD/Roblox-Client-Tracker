#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[18];
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = fract(gl_FragCoord.xyxy * vec4(0.103100001811981201171875, 0.10300000011920928955078125, 0.097300000488758087158203125, 0.109899997711181640625));
    uvec2 f1 = uvec2(gl_FragCoord.xy) / uvec2(64u);
    uint f2 = ((f1.y ^ 2654435769u) * 747796405u) + 2891336453u;
    uint f3 = ((f2 >> ((f2 >> 28u) + 4u)) ^ f2) * 277803737u;
    uint f4 = ((f1.x ^ ((f3 >> 22u) ^ f3)) * 747796405u) + 2891336453u;
    uint f5 = ((f4 >> ((f4 >> 28u) + 4u)) ^ f4) * 277803737u;
    uint f6 = uint(CB1[2].x) + uint((float(((f5 >> 22u) ^ f5) & 65535u) * 1.52587890625e-05) < fract(CB1[2].x));
    vec4 f7;
    vec4 f8;
    vec4 f9;
    vec4 f10;
    f10 = f0.wxyz;
    f9 = f0.zwxy;
    f8 = f0.yzwx;
    f7 = f0;
    for (uint f11 = 0u; f11 < f6; )
    {
        vec4 f12 = f7 * f8;
        vec4 f13 = (f12 * 0.5) + vec4(0.25);
        vec4 f14 = f8 * f9;
        vec4 f15 = f9 * f10;
        f10 = (sin(f10 * f13) * 0.25) + vec4(0.5);
        f9 = (f15 * 0.5) + vec4(0.25);
        f8 = (f14 * 0.5) + vec4(0.25);
        f7 = f13;
        f11++;
        continue;
    }
    _entryPointOutput = ((f7 + f8) + f9) + f10;
}

