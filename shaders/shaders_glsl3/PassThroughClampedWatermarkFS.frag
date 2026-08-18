#version 150
#extension GL_ARB_shader_bit_encoding : require

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[18];
uniform sampler2D Texture6Texture;
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, min(VARYING0, CB1[12].xy));
    vec3 f1 = f0.xyz;
    vec2 f2;
    do
    {
        uint f3 = uint(CB1[17].w);
        uint f4 = uint(CB1[0].x) - 1u;
        uint f5 = uint(CB1[0].y) - 1u;
        if (f3 == 0u)
        {
            f2 = gl_FragCoord.xy;
            break;
        }
        if (f3 == 1u)
        {
            f2 = vec2(gl_FragCoord.y, float(f4) - gl_FragCoord.x);
            break;
        }
        if (f3 == 2u)
        {
            f2 = vec2(float(f4) - gl_FragCoord.x, float(f5) - gl_FragCoord.y);
            break;
        }
        f2 = vec2(float(f5) - gl_FragCoord.y, gl_FragCoord.x);
        break;
    } while(false);
    uint f6 = floatBitsToUint(CB1[16].w);
    vec3 f7 = clamp(f1, vec3(0.0), vec3(1.0));
    vec3 f8 = clamp(f1 + ((((vec3(uvec3((textureLod(Texture6Texture, vec4(fract((f2 * CB1[17].xy) + CB1[16].xy), 0.0, 0.0).xy, 0.0).xyz * 255.0) + vec3(0.5)) ^ uvec3(f6 & 255u, (f6 >> 8u) & 255u, (f6 >> 16u) & 255u)) * 0.007843137718737125396728515625) - vec3(1.0)) * CB1[16].z) * (vec3(CB1[17].z) + ((f7 * ((1.0 - CB1[17].z) * 4.0)) * (vec3(1.0) - f7)))), vec3(0.0), vec3(1.0));
    vec4 f9 = f0;
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    _entryPointOutput = f11;
}

//$$Texture6Texture=s6
//$$Texture0Texture=s0
