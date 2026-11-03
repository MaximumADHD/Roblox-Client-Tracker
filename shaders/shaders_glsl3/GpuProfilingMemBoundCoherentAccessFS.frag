#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[18];
uniform sampler2D Texture0Texture;

out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = gl_FragCoord.xy * CB1[3].zw;
    uvec2 f1 = uvec2(gl_FragCoord.xy) / uvec2(64u);
    uint f2 = ((f1.y ^ 2654435769u) * 747796405u) + 2891336453u;
    uint f3 = ((f2 >> ((f2 >> 28u) + 4u)) ^ f2) * 277803737u;
    uint f4 = ((f1.x ^ ((f3 >> 22u) ^ f3)) * 747796405u) + 2891336453u;
    uint f5 = ((f4 >> ((f4 >> 28u) + 4u)) ^ f4) * 277803737u;
    uint f6 = uint(CB1[2].x) + uint((float(((f5 >> 22u) ^ f5) & 65535u) * 1.52587890625e-05) < fract(CB1[2].x));
    vec4 f7;
    f7 = vec4(0.0);
    for (uint f8 = 0u; f8 < f6; )
    {
        f7 += textureLod(Texture0Texture, vec4(f0 + (vec2(0.61803400516510009765625, 0.38196599483489990234375) * float(f8)), 0.0, 0.0).xy, 0.0);
        f8++;
        continue;
    }
    _entryPointOutput = f7;
}

//$$Texture0Texture=s0
