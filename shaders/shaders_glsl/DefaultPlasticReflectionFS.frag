#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D StudsMapTexture;
uniform samplerCube EnvironmentMapTexture;

varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec3 VARYING3;
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
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING3.yzx - (VARYING3.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture3D(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture3D(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec4 f7 = texture2D(ShadowMapTexture, VARYING7.xy);
    float f8 = (1.0 - ((step(f7.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f7.y)) * f6.y;
    float f9 = length(VARYING4.xyz);
    vec3 f10 = textureCube(EnvironmentMapTexture, reflect(-(VARYING4.xyz / vec3(f9)), normalize(VARYING5.xyz))).xyz;
    vec3 f11 = (((VARYING6.xyz * f8) + min((f5.xyz * (f5.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f6.x)), vec3(CB0[16].w))) * mix((f1 * f1).xyz, (f10 * f10) * CB0[15].x, vec3(VARYING7.w))) + (CB0[10].xyz * ((VARYING6.w * f8) * 0.100000001490116119384765625));
    vec4 f12 = vec4(f11.x, f11.y, f11.z, vec4(0.0).w);
    f12.w = VARYING2.w;
    vec3 f13 = sqrt(clamp(mix(CB0[14].xyz, f12.xyz, vec3(clamp(exp2((CB0[13].z * f9) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f14 = vec4(f13.x, f13.y, f13.z, f12.w);
    f14.w = VARYING2.w;
    gl_FragData[0] = f14;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$StudsMapTexture=s0
//$$EnvironmentMapTexture=s2
