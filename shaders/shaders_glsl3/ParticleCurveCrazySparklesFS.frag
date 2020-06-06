#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[47];
uniform vec4 CB1[3];
uniform sampler2D texTexture;

in vec3 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(texTexture, VARYING0.xy);
    vec3 f1 = VARYING1.xyz * CB1[0].xyz;
    float f2 = f0.w;
    float f3 = f2 * 2.0;
    vec3 f4 = f1 * f3;
    vec3 f5 = mix(f1, f0.xyz, vec3(f3 - 1.0));
    bvec3 f6 = bvec3(f2 < 0.5);
    vec3 f7 = (vec3(f6.x ? f4.x : f5.x, f6.y ? f4.y : f5.y, f6.z ? f4.z : f5.z).xyz * VARYING1.w).xyz;
    vec3 f8 = sqrt(clamp((f7 * f7) * CB0[15].y, vec3(0.0), vec3(1.0)));
    float f9 = clamp(exp2((CB0[13].z * VARYING0.z) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec4 f10 = vec4(f8.x, f8.y, f8.z, vec4(0.0).w);
    f10.w = (CB1[1].y * f2) * (VARYING1.w * f9);
    vec3 f11 = f10.xyz * f9;
    _entryPointOutput = vec4(f11.x, f11.y, f11.z, f10.w);
}

//$$texTexture=s0
