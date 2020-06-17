#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
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
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    vec3 f1 = f0.xyz * VARYING2.xyz;
    vec4 f2 = vec4(f1.x, f1.y, f1.z, f0.w);
    f2.w = VARYING2.w;
    vec3 f3 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f4 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f5 = VARYING3.yzx - (VARYING3.yzx * f4);
    vec4 f6 = vec4(clamp(f4, 0.0, 1.0));
    vec4 f7 = mix(texture3D(LightMapTexture, f5), vec4(0.0), f6);
    vec4 f8 = mix(texture3D(LightGridSkylightTexture, f5), vec4(1.0), f6);
    float f9 = f8.x;
    vec4 f10 = texture2D(ShadowMapTexture, f3.xy);
    float f11 = f3.z;
    float f12 = (1.0 - ((step(f10.x, f11) * clamp(CB0[24].z + (CB0[24].w * abs(f11 - 0.5)), 0.0, 1.0)) * f10.y)) * f8.y;
    float f13 = length(VARYING4.xyz);
    vec3 f14 = textureCube(EnvironmentMapTexture, reflect(-(VARYING4.xyz / vec3(f13)), normalize(VARYING5.xyz))).xyz;
    vec3 f15 = (((VARYING6.xyz * f12) + min((f7.xyz * (f7.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f9)), vec3(CB0[16].w))) * ((mix(vec3(1.0), (f14 * f14) * CB0[15].x, vec3(f9)) * VARYING7.w) + ((f2.xyz * f2.xyz).xyz * (VARYING2.w - VARYING7.w)))) + (CB0[10].xyz * ((VARYING6.w * f12) * 0.100000001490116119384765625));
    vec4 f16 = vec4(f15.x, f15.y, f15.z, vec4(0.0).w);
    f16.w = VARYING2.w;
    float f17 = clamp(exp2((CB0[13].z * f13) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    float f18 = f17 * VARYING2.w;
    vec3 f19 = sqrt(clamp(mix(CB0[14].xyz, f16.xyz, vec3(f17)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f20 = vec4(f19.x, f19.y, f19.z, f16.w);
    f20.w = f18;
    vec4 f21 = f20;
    f21.w = f18;
    gl_FragData[0] = f21;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$EnvironmentMapTexture=s2
