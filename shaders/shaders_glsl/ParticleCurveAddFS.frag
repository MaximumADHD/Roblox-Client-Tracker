#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[3];
uniform sampler2D texTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 f0 = texture2D(texTexture, VARYING0.xy);
    vec3 f1 = ((f0.xyz + VARYING1.xyz) * CB1[0].xyz).xyz;
    vec3 f2 = sqrt(clamp((f1 * f1) * CB0[15].y, vec3(0.0), vec3(1.0)));
    float f3 = (f0.w * VARYING1.w) * clamp(exp2((CB0[13].z * VARYING0.z) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec4 f4 = vec4(f2.x, f2.y, f2.z, vec4(0.0).w);
    f4.w = f3;
    vec4 f5 = f4;
    f5.w = f3;
    vec3 f6 = f5.xyz * f3;
    gl_FragData[0] = vec4(f6.x, f6.y, f6.z, f5.w);
}

//$$texTexture=s0
