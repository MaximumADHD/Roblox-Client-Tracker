#version 150
#extension GL_ARB_shader_bit_encoding : require

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[18];
uniform sampler2D Texture6Texture;

out vec4 _entryPointOutput;

void main()
{
    vec2 f0;
    do
    {
        uint f1 = uint(CB1[17].w);
        uint f2 = uint(CB1[0].x) - 1u;
        uint f3 = uint(CB1[0].y) - 1u;
        if (f1 == 0u)
        {
            f0 = gl_FragCoord.xy;
            break;
        }
        if (f1 == 1u)
        {
            f0 = vec2(gl_FragCoord.y, float(f2) - gl_FragCoord.x);
            break;
        }
        if (f1 == 2u)
        {
            f0 = vec2(float(f2) - gl_FragCoord.x, float(f3) - gl_FragCoord.y);
            break;
        }
        f0 = vec2(float(f3) - gl_FragCoord.y, gl_FragCoord.x);
        break;
    } while(false);
    uint f4 = floatBitsToUint(CB1[16].w);
    _entryPointOutput = vec4(max(((vec3(uvec3((textureLod(Texture6Texture, vec4(fract((f0 * CB1[17].xy) + CB1[16].xy), 0.0, 0.0).xy, 0.0).xyz * 255.0) + vec3(0.5)) ^ uvec3(f4 & 255u, (f4 >> 8u) & 255u, (f4 >> 16u) & 255u)) * 0.007843137718737125396728515625) - vec3(1.0)) * CB1[16].z, vec3(0.0)), 0.0);
}

//$$Texture6Texture=s6
