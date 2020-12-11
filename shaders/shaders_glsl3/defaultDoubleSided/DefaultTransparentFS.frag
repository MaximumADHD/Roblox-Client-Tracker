#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f1 = f0.xyz;
    vec3 f2 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f3 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f4 = VARYING3.yzx - (VARYING3.yzx * f3);
    vec4 f5 = vec4(clamp(f3, 0.0, 1.0));
    vec4 f6 = mix(texture(LightMapTexture, f4), vec4(0.0), f5);
    vec4 f7 = mix(texture(LightGridSkylightTexture, f4), vec4(1.0), f5);
    vec4 f8 = texture(ShadowMapTexture, f2.xy);
    float f9 = f2.z;
    float f10 = (1.0 - ((step(f8.x, f9) * clamp(CB0[24].z + (CB0[24].w * abs(f9 - 0.5)), 0.0, 1.0)) * f8.y)) * f7.y;
    vec3 f11 = (f1 * f1).xyz;
    vec3 f12 = (((VARYING5.xyz * f10) + min((f6.xyz * (f6.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f7.x)), vec3(CB0[16].w))) * f11) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f11, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f10));
    float f13 = f0.w;
    vec4 f14 = vec4(f12.x, f12.y, f12.z, vec4(0.0).w);
    f14.w = f13;
    float f15 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f16 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f15) * 5.0).xyz;
    bvec3 f17 = bvec3(CB0[13].w != 0.0);
    vec3 f18 = sqrt(clamp(mix(vec3(f17.x ? CB0[14].xyz.x : f16.x, f17.y ? CB0[14].xyz.y : f16.y, f17.z ? CB0[14].xyz.z : f16.z), f14.xyz, vec3(f15)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f19 = vec4(f18.x, f18.y, f18.z, f14.w);
    f19.w = f13;
    _entryPointOutput = f19;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
