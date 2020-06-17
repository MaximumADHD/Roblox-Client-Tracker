#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[52];
uniform vec4 CB2[1];
uniform vec4 CB3[2];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB2[0].y > 0.5);
    vec4 f3 = VARYING1 * vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    vec2 f4 = abs(vec2((VARYING0.x * CB3[0].x) - CB3[0].y, (VARYING0.y * CB3[0].z) - CB3[0].w)) - CB3[1].xy;
    float f5 = f3.w * clamp(CB3[1].z - (length(max(f4, vec2(0.0))) + min(max(f4.x, f4.y), 0.0)), 0.0, 1.0);
    vec4 f6 = f3;
    f6.w = f5;
    vec4 f7 = f6;
    f7.w = f5;
    vec3 f8 = sqrt(clamp(mix(CB0[14].xyz, (f7.xyz * f7.xyz).xyz, vec3(clamp(exp2((CB0[13].z * length(VARYING2)) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f8.x, f8.y, f8.z, f7.w);
}

//$$DiffuseMapTexture=s0
