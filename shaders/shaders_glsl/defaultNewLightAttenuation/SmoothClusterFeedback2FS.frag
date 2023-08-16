#version 110

#extension GL_ARB_shading_language_include : require
#include <FeedbackData.h>
uniform vec4 CB6[2];
uniform ivec4 CB4[1];
varying vec2 VARYING0;

void main()
{
    vec2 f0 = VARYING0 * vec2(4096.0);
    vec2 f1 = dFdx(f0) / vec2(CB6[0].x);
    vec2 f2 = dFdy(f0) / vec2(CB6[0].y);
    float f3 = 0.5 * max(0.0, log2(max(dot(f1, f1), dot(f2, f2))));
    int f4 = int(floor((f3 - min(f3 - (0.5 * max(0.0, log2(f3))), 0.0)) + CB6[0].z));
    vec2 f5 = floor((vec2(4096.0) * VARYING0) / vec2(float(128 * (1 << f4))));
    gl_FragData[0] = (((1 | (int(f5.y) << 1)) | (int(f5.x) << 8)) | (CB4[0].z << 16)) | (f4 << 28);
}

