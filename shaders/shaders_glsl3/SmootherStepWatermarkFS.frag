#version 150
#extension GL_ARB_shader_bit_encoding : require

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[18];
uniform sampler2D Texture6Texture;
uniform sampler2D Texture0Texture;

out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = ((gl_FragCoord.xy / CB1[0].xy) * CB1[1].zw) - vec2(0.5);
    vec2 f1 = fract(f0);
    vec2 f2 = vec2(1.0) / CB1[1].zw;
    vec2 f3 = ((f0 - f1) + vec2(0.5)) * f2;
    float f4 = clamp(f1.x, 0.0, 1.0);
    float f5 = clamp(f1.y, 0.0, 1.0);
    vec4 f6 = texture(Texture0Texture, min(vec2(mix(f3.x, (f3 + vec2(f2.x, 0.0)).x, ((f4 * f4) * f4) * ((f4 * ((f4 * 6.0) - 15.0)) + 10.0)), mix(f3.y, (f3 + vec2(0.0, f2.y)).y, ((f5 * f5) * f5) * ((f5 * ((f5 * 6.0) - 15.0)) + 10.0))) * CB1[1].xy, CB1[12].xy));
    vec3 f7 = f6.xyz;
    vec2 f8;
    do
    {
        uint f9 = uint(CB1[17].w);
        uint f10 = uint(CB1[0].x) - 1u;
        uint f11 = uint(CB1[0].y) - 1u;
        if (f9 == 0u)
        {
            f8 = gl_FragCoord.xy;
            break;
        }
        if (f9 == 1u)
        {
            f8 = vec2(gl_FragCoord.y, float(f10) - gl_FragCoord.x);
            break;
        }
        if (f9 == 2u)
        {
            f8 = vec2(float(f10) - gl_FragCoord.x, float(f11) - gl_FragCoord.y);
            break;
        }
        f8 = vec2(float(f11) - gl_FragCoord.y, gl_FragCoord.x);
        break;
    } while(false);
    uint f12 = floatBitsToUint(CB1[16].w);
    vec3 f13 = clamp(f7, vec3(0.0), vec3(1.0));
    _entryPointOutput = vec4(clamp(f7 + ((((vec3(uvec3((textureLod(Texture6Texture, vec4(fract((f8 * CB1[17].xy) + CB1[16].xy), 0.0, 0.0).xy, 0.0).xyz * 255.0) + vec3(0.5)) ^ uvec3(f12 & 255u, (f12 >> 8u) & 255u, (f12 >> 16u) & 255u)) * 0.007843137718737125396728515625) - vec3(1.0)) * CB1[16].z) * (vec3(CB1[17].z) + ((f13 * ((1.0 - CB1[17].z) * 4.0)) * (vec3(1.0) - f13)))), vec3(0.0), vec3(1.0)), 1.0);
}

//$$Texture6Texture=s6
//$$Texture0Texture=s0
