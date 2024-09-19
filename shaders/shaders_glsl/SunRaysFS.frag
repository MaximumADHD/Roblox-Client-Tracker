#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture1Texture;
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec2 f0 = vec2(CB1[2].x, CB1[2].y) - VARYING1.xy;
    vec2 f1 = (sign(f0) - VARYING1.xy) / f0;
    float f2 = f1.x;
    float f3 = f1.y;
    vec2 f4 = ((((VARYING1.xy - vec2(CB1[2].x, CB1[2].y)) * 0.5) * CB1[1].xy) * min(min((f2 < 0.0) ? 1.0 : f2, (f3 < 0.0) ? 1.0 : f3), 1.0)) * 0.083333335816860198974609375;
    vec2 f5 = (VARYING0 + (f4 * texture2D(Texture1Texture, (VARYING0 * CB1[0].xy) * vec2(0.125)).x)) - f4;
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
    vec2 f16 = CB1[5].zw;
    f16.x = CB1[5].z;
    float f17 = inversesqrt(clamp((1.0 + CB1[3].z) - ((2.0 * CB1[3].y) * dot(normalize(vec3((VARYING1.xy * CB1[5].xy) + f16, -1.0)), vec3(CB1[2].zw, CB1[3].w))), 0.00999999977648258209228515625, 1.0));
    gl_FragData[0] = vec4(CB1[4].xyz * (((((((((((((float(texture2D(Texture0Texture, f5).x >= 0.999000012874603271484375) + float(texture2D(Texture0Texture, f6).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, f7).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, f8).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, f9).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, f10).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, f11).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, f12).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, f13).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, f14).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, f15).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, f15 - f4).x >= 0.999000012874603271484375)) * CB1[3].x) * ((((1.0 - CB1[3].z) * f17) * f17) * f17)), 1.0);
}

//$$Texture1Texture=s1
//$$Texture0Texture=s0
