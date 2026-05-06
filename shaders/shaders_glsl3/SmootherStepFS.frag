#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[18];
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
    _entryPointOutput = vec4(texture(Texture0Texture, min(vec2(mix(f3.x, (f3 + vec2(f2.x, 0.0)).x, ((f4 * f4) * f4) * ((f4 * ((f4 * 6.0) - 15.0)) + 10.0)), mix(f3.y, (f3 + vec2(0.0, f2.y)).y, ((f5 * f5) * f5) * ((f5 * ((f5 * 6.0) - 15.0)) + 10.0))) * CB1[1].xy, CB1[12].xy)).xyz, 1.0);
}

//$$Texture0Texture=s0
