#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[4];
uniform sampler2D LightingAtlasTexture;
uniform sampler2D texTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying float VARYING4;

void main()
{
    vec4 f0 = mix(texture2D(texTexture, VARYING0.xy), texture2D(texTexture, VARYING3), vec4(VARYING4));
    vec3 f1 = (f0.xyz * VARYING1.xyz).xyz;
    vec4 f2 = texture2D(LightingAtlasTexture, VARYING2);
    vec3 f3 = (f1 * f1).xyz;
    vec3 f4 = sqrt(clamp(mix(f3 * CB1[3].y, (f2.xyz * (f2.w * 120.0)) * f3, vec3(CB1[2].w)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    float f5 = (VARYING1.w * f0.w) * clamp(exp2((CB0[13].z * VARYING0.z) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec4 f6 = vec4(f4.x, f4.y, f4.z, vec4(0.0).w);
    f6.w = f5;
    vec3 f7 = f6.xyz * f5;
    vec4 f8 = vec4(f7.x, f7.y, f7.z, f6.w);
    f8.w = f5 * CB1[1].y;
    gl_FragData[0] = f8;
}

//$$LightingAtlasTexture=s2
//$$texTexture=s0
