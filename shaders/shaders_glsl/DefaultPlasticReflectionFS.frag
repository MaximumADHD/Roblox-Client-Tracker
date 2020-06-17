#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D StudsMapTexture;
uniform samplerCube EnvironmentMapTexture;

varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    vec3 f1 = vec4(VARYING2.xyz * (texture2D(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    vec3 f2 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f3 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f4 = VARYING3.yzx - (VARYING3.yzx * f3);
    vec4 f5 = vec4(clamp(f3, 0.0, 1.0));
    vec4 f6 = mix(texture3D(LightMapTexture, f4), vec4(0.0), f5);
    vec4 f7 = mix(texture3D(LightGridSkylightTexture, f4), vec4(1.0), f5);
    vec4 f8 = texture2D(ShadowMapTexture, f2.xy);
    float f9 = f2.z;
    float f10 = (1.0 - ((step(f8.x, f9) * clamp(CB0[24].z + (CB0[24].w * abs(f9 - 0.5)), 0.0, 1.0)) * f8.y)) * f7.y;
    float f11 = length(VARYING4.xyz);
    vec3 f12 = textureCube(EnvironmentMapTexture, reflect(-(VARYING4.xyz / vec3(f11)), normalize(VARYING5.xyz))).xyz;
    vec3 f13 = (((VARYING6.xyz * f10) + min((f6.xyz * (f6.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f7.x)), vec3(CB0[16].w))) * mix((f1 * f1).xyz, (f12 * f12) * CB0[15].x, vec3(VARYING7.w))) + (CB0[10].xyz * ((VARYING6.w * f10) * 0.100000001490116119384765625));
    vec4 f14 = vec4(f13.x, f13.y, f13.z, vec4(0.0).w);
    f14.w = VARYING2.w;
    vec3 f15 = sqrt(clamp(mix(CB0[14].xyz, f14.xyz, vec3(clamp(exp2((CB0[13].z * f11) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f16 = vec4(f15.x, f15.y, f15.z, f14.w);
    f16.w = VARYING2.w;
    gl_FragData[0] = f16;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$StudsMapTexture=s0
//$$EnvironmentMapTexture=s2
