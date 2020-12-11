#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[3];
uniform sampler2D LightingAtlasTexture;
uniform sampler2D texTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec2 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(texTexture, VARYING0.xy);
    vec4 f1 = VARYING1 * CB1[0];
    vec3 f2 = f0.xyz * f1.xyz;
    float f3 = (f0.w * f1.w) * clamp(exp2((CB0[13].z * VARYING0.z) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec4 f4 = vec4(f2.x, f2.y, f2.z, vec4(0.0).w);
    f4.w = f3;
    vec4 f5 = f4;
    f5.w = f3;
    vec4 f6 = texture(LightingAtlasTexture, VARYING2);
    vec3 f7 = (f5.xyz * f5.xyz).xyz;
    vec3 f8 = sqrt(clamp(mix(f7, (f6.xyz * (f6.w * 120.0)) * f7, vec3(CB1[2].w)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f8.x, f8.y, f8.z, f5.w);
}

//$$LightingAtlasTexture=s2
//$$texTexture=s0
