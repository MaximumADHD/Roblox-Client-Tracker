#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[18];
uniform sampler2D Texture6Texture;
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0);
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
    _entryPointOutput = vec4(clamp(f1 + ((((textureLod(Texture6Texture, vec4(fract((f2 * CB1[17].xy) + CB1[16].xy), 0.0, 0.0).xy, 0.0).xyz * 2.0) - vec3(1.0)) * CB1[16].z) * (vec3(CB1[17].z) + ((f1 * ((1.0 - CB1[17].z) * 4.0)) * (vec3(1.0) - f1)))), vec3(0.0), vec3(1.0)), 1.0);
}

//$$Texture6Texture=s6
//$$Texture0Texture=s0
