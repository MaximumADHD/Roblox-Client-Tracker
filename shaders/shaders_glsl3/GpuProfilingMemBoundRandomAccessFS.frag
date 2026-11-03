#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[18];
uniform sampler2D Texture0Texture;

out vec4 _entryPointOutput;

void main()
{
    uvec2 f0 = uvec2(gl_FragCoord.xy);
    uint f1 = (f0.y * 747796405u) + 2891336453u;
    uint f2 = ((f1 >> ((f1 >> 28u) + 4u)) ^ f1) * 277803737u;
    uint f3 = ((f0.x ^ ((f2 >> 22u) ^ f2)) * 747796405u) + 2891336453u;
    uint f4 = ((f3 >> ((f3 >> 28u) + 4u)) ^ f3) * 277803737u;
    uint f5 = (f4 >> 22u) ^ f4;
    uvec2 f6 = f0 / uvec2(64u);
    uint f7 = ((f6.y ^ 2654435769u) * 747796405u) + 2891336453u;
    uint f8 = ((f7 >> ((f7 >> 28u) + 4u)) ^ f7) * 277803737u;
    uint f9 = ((f6.x ^ ((f8 >> 22u) ^ f8)) * 747796405u) + 2891336453u;
    uint f10 = ((f9 >> ((f9 >> 28u) + 4u)) ^ f9) * 277803737u;
    uint f11 = uint(CB1[2].x) + uint((float(((f10 >> 22u) ^ f10) & 65535u) * 1.52587890625e-05) < fract(CB1[2].x));
    vec4 f12;
    vec2 f13;
    f13 = vec2(float(f5 & 65535u), float(f5 >> 16u)) * 1.52587890625e-05;
    f12 = vec4(0.0);
    for (uint f14 = 0u; f14 < f11; )
    {
        float f15 = f13.x;
        float f16 = f13.y;
        vec4 f17 = textureLod(Texture0Texture, vec4(f15, f16, 0.0, 0.0).xy, 0.0);
        f13 = fract((f13 + f17.xy) + (f17.zw * 0.00390625));
        f12 = f17;
        f14++;
        continue;
    }
    _entryPointOutput = f12;
}

//$$Texture0Texture=s0
