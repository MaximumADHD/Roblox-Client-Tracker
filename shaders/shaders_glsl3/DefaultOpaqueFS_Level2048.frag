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
    vec3 f0 = (texture(DiffuseMapTexture, VARYING0) * VARYING2).xyz;
    vec3 f1 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING3.yzx - (VARYING3.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec4 f7 = texture(ShadowMapTexture, f1.xy);
    float f8 = f1.z;
    float f9 = (1.0 - ((step(f7.x, f8) * clamp(CB0[24].z + (CB0[24].w * abs(f8 - 0.5)), 0.0, 1.0)) * f7.y)) * f6.y;
    vec3 f10 = (f0 * f0).xyz;
    vec3 f11 = (((VARYING5.xyz * f9) + min((f5.xyz * (f5.w * 120.0)).xyz + (CB0[27].xyz + (CB0[28].xyz * f6.x)), vec3(CB0[16].w))) * f10) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f10, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f9));
    vec4 f12 = vec4(f11.x, f11.y, f11.z, vec4(0.0).w);
    f12.w = 1.0;
    float f13 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f14 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f13) * 5.0).xyz;
    bvec3 f15 = bvec3(CB0[13].w != 0.0);
    vec3 f16 = max(vec3(0.0), mix(vec3(f15.x ? CB0[14].xyz.x : f14.x, f15.y ? CB0[14].xyz.y : f14.y, f15.z ? CB0[14].xyz.z : f14.z), f12.xyz, vec3(f13)).xyz);
    _entryPointOutput = vec4(f16.x, f16.y, f16.z, f12.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
