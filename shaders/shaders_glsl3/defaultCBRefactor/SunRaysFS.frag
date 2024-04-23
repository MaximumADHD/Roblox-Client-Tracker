#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture1Texture;
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = vec2(CB1[1].x, CB1[1].y) - VARYING1.xy;
    vec2 f1 = (sign(f0) - VARYING1.xy) / f0;
    float f2 = f1.x;
    float f3 = f1.y;
    vec2 f4 = (((VARYING1.xy - vec2(CB1[1].x, CB1[1].y)) * 0.5) * min(min((f2 < 0.0) ? 1.0 : f2, (f3 < 0.0) ? 1.0 : f3), 1.0)) * 0.083333335816860198974609375;
    vec2 f5 = (VARYING0 + (f4 * texture(Texture1Texture, (VARYING0 * CB1[0].xy) * vec2(0.125)).x)) - f4;
    vec2 f6 = f5 - f4;
    vec2 f7 = f6 - f4;
    vec2 f8 = f7 - f4;
    vec2 f9 = f8 - f4;
    vec2 f10 = f9 - f4;
    vec2 f11 = f10 - f4;
    vec2 f12 = f11 - f4;
    vec2 f13 = f12 - f4;
    vec2 f14 = f13 - f4;
    vec2 f15 = f14 - f4;
    vec2 f16 = CB1[4].zw;
    f16.x = CB1[4].z;
    _entryPointOutput = vec4(CB1[3].xyz * (((((((((((((float(texture(Texture0Texture, f5).x >= 0.999000012874603271484375) + float(texture(Texture0Texture, f6).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, f7).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, f8).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, f9).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, f10).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, f11).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, f12).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, f13).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, f14).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, f15).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, f15 - f4).x >= 0.999000012874603271484375)) * CB1[2].x) * ((1.0 - CB1[2].z) * pow(clamp((1.0 + CB1[2].z) - ((2.0 * CB1[2].y) * dot(normalize(vec3((VARYING1.xy * CB1[4].xy) + f16, -1.0)), vec3(CB1[1].zw, CB1[2].w))), 0.0, 1.0), -1.5))), 1.0);
}

//$$Texture1Texture=s1
//$$Texture0Texture=s0
