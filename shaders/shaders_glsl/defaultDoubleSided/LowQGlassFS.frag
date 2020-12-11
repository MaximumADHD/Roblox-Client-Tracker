#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform samplerCube EnvironmentMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec4 f1 = texture2D(DiffuseMapTexture, VARYING0);
    vec3 f2 = f1.xyz * VARYING2.xyz;
    vec4 f3 = vec4(f2.x, f2.y, f2.z, f1.w);
    f3.w = VARYING2.w;
    vec3 f4 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f5 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING3.yzx - (VARYING3.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture3D(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture3D(LightGridSkylightTexture, f6), vec4(1.0), f7);
    float f10 = f9.x;
    vec4 f11 = texture2D(ShadowMapTexture, f4.xy);
    float f12 = f4.z;
    float f13 = (1.0 - ((step(f11.x, f12) * clamp(CB0[24].z + (CB0[24].w * abs(f12 - 0.5)), 0.0, 1.0)) * f11.y)) * f9.y;
    vec3 f14 = textureCube(EnvironmentMapTexture, reflect(-(VARYING4.xyz / vec3(f0)), normalize(VARYING5.xyz))).xyz;
    vec3 f15 = (((VARYING6.xyz * f13) + min((f8.xyz * (f8.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f10)), vec3(CB0[16].w))) * ((mix(vec3(1.0), (f14 * f14) * CB0[15].x, vec3(f10)) * VARYING7.w) + ((f3.xyz * f3.xyz).xyz * (VARYING2.w - VARYING7.w)))) + (CB0[10].xyz * ((VARYING6.w * f13) * 0.100000001490116119384765625));
    vec4 f16 = vec4(f15.x, f15.y, f15.z, vec4(0.0).w);
    f16.w = VARYING2.w;
    float f17 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f18 = sqrt(clamp(mix(CB0[14].xyz, f16.xyz, vec3(f17)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    float f19 = 1.0 - ((1.0 - VARYING2.w) * f17);
    vec4 f20 = vec4(f18.x, f18.y, f18.z, f16.w);
    f20.w = f19;
    vec4 f21 = f20;
    f21.w = f19;
    gl_FragData[0] = f21;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$EnvironmentMapTexture=s2
