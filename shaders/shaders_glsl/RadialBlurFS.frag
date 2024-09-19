#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec2 f0 = vec2(CB1[2].x, CB1[2].y) - VARYING1.xy;
    vec2 f1 = (sign(f0) - VARYING1.xy) / f0;
    float f2 = f1.x;
    float f3 = f1.y;
    vec2 f4 = (((VARYING1.xy - vec2(CB1[2].x, CB1[2].y)) * 0.5) * min(min((f2 < 0.0) ? 1.0 : f2, (f3 < 0.0) ? 1.0 : f3), 1.0)) * 0.0416666679084300994873046875;
    vec2 f5 = min(VARYING0 - f4, CB1[11].xy);
    vec2 f6 = min(f5 - f4, CB1[11].xy);
    vec2 f7 = min(f6 - f4, CB1[11].xy);
    vec2 f8 = min(f7 - f4, CB1[11].xy);
    vec2 f9 = min(f8 - f4, CB1[11].xy);
    vec2 f10 = min(f9 - f4, CB1[11].xy);
    vec2 f11 = min(f10 - f4, CB1[11].xy);
    vec2 f12 = min(f11 - f4, CB1[11].xy);
    vec2 f13 = min(f12 - f4, CB1[11].xy);
    vec2 f14 = min(f13 - f4, CB1[11].xy);
    vec2 f15 = min(f14 - f4, CB1[11].xy);
    gl_FragData[0] = vec4((((((((((((texture2D(Texture0Texture, f5).xyz + texture2D(Texture0Texture, f6).xyz) + texture2D(Texture0Texture, f7).xyz) + texture2D(Texture0Texture, f8).xyz) + texture2D(Texture0Texture, f9).xyz) + texture2D(Texture0Texture, f10).xyz) + texture2D(Texture0Texture, f11).xyz) + texture2D(Texture0Texture, f12).xyz) + texture2D(Texture0Texture, f13).xyz) + texture2D(Texture0Texture, f14).xyz) + texture2D(Texture0Texture, f15).xyz) + texture2D(Texture0Texture, min(f15 - f4, CB1[11].xy)).xyz) * vec3(0.083333335816860198974609375), 1.0);
}

//$$Texture0Texture=s0
