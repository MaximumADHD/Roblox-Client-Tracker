#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <FeedbackData.h>
uniform vec4 CB0[58];
uniform vec4 CB6[2];
varying vec2 VARYING0;

void main()
{
    vec2 f0 = VARYING0 * vec2(4096.0);
    vec2 f1 = dFdx(f0) / vec2(CB6[0].x);
    vec2 f2 = dFdy(f0) / vec2(CB6[0].y);
    int f3 = min(int(floor(max(0.0, (0.5 * max(0.0, log2(max(dot(f1, f1), dot(f2, f2))))) + CB6[0].z))), 9);
    gl_FragData[0] = vec4(sqrt(clamp(vec3(fract((floor((vec2(4096.0) * VARYING0) / vec2(float(min(4096, (128 << f3))))) + vec2(float(f3))) * 10.8173999786376953125), 0.0) * CB0[20].y, vec3(0.0), vec3(1.0))), 1.0);
}

