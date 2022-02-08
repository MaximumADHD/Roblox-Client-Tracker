#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <TrailParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[1];
uniform sampler2D texTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;

void main()
{
    vec4 f0 = texture2D(texTexture, VARYING0);
    vec3 f1 = (f0.xyz * VARYING1.xyz).xyz;
    float f2 = clamp(exp2((CB0[13].z * length(VARYING2)) + CB0[13].x) - CB0[13].w, 0.0, 1.0) * (VARYING1.w * f0.w);
    vec3 f3 = sqrt(clamp(((f1 * f1).xyz * CB1[0].w).xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz * f2;
    vec4 f4 = vec4(f3.x, f3.y, f3.z, vec4(0.0).w);
    f4.w = f2 * CB1[0].y;
    gl_FragData[0] = f4;
}

//$$texTexture=s0
