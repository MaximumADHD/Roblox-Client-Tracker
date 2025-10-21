#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[16];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = vec2(CB1[2].x, CB1[2].y) - VARYING1.xy;
    vec2 f1 = (sign(f0) - VARYING1.xy) / f0;
    float f2 = f1.x;
    float f3 = f1.y;
    vec2 f4 = ((((VARYING1.xy - vec2(CB1[2].x, CB1[2].y)) * 0.5) * CB1[1].xy) * min(min((f2 < 0.0) ? 1.0 : f2, (f3 < 0.0) ? 1.0 : f3), 1.0)) * 0.083333335816860198974609375;
    vec2 f5 = min(VARYING0 - f4, CB1[12].xy);
    vec2 f6 = min(f5 - f4, CB1[12].xy);
    vec2 f7 = min(f6 - f4, CB1[12].xy);
    vec2 f8 = min(f7 - f4, CB1[12].xy);
    vec2 f9 = min(f8 - f4, CB1[12].xy);
    _entryPointOutput = vec4((((((texture(Texture0Texture, f5).xyz + texture(Texture0Texture, f6).xyz) + texture(Texture0Texture, f7).xyz) + texture(Texture0Texture, f8).xyz) + texture(Texture0Texture, f9).xyz) + texture(Texture0Texture, min(f9 - f4, CB1[12].xy)).xyz) * vec3(0.16666667163372039794921875), 1.0);
}

//$$Texture0Texture=s0
