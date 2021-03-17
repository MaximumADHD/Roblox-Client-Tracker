#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f1 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f2 = VARYING3.yzx - (VARYING3.yzx * f1);
    vec4 f3 = vec4(clamp(f1, 0.0, 1.0));
    vec4 f4 = mix(texture(LightMapTexture, f2), vec4(0.0), f3);
    vec4 f5 = mix(texture(LightGridSkylightTexture, f2), vec4(1.0), f3);
    vec4 f6 = texture(ShadowMapTexture, f0.xy);
    float f7 = f0.z;
    float f8 = (1.0 - ((step(f6.x, f7) * clamp(CB0[24].z + (CB0[24].w * abs(f7 - 0.5)), 0.0, 1.0)) * f6.y)) * f5.y;
    vec3 f9 = (VARYING2.xyz * VARYING2.xyz).xyz;
    vec3 f10 = (((VARYING5.xyz * f8) + min((f4.xyz * (f4.w * 120.0)).xyz + (CB0[27].xyz + (CB0[28].xyz * f5.x)), vec3(CB0[16].w))) * f9) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f9, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f8));
    vec4 f11 = vec4(f10.x, f10.y, f10.z, vec4(0.0).w);
    f11.w = VARYING2.w;
    float f12 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f13 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f12) * 5.0).xyz;
    bvec3 f14 = bvec3(CB0[13].w != 0.0);
    vec3 f15 = max(vec3(0.0), mix(vec3(f14.x ? CB0[14].xyz.x : f13.x, f14.y ? CB0[14].xyz.y : f13.y, f14.z ? CB0[14].xyz.z : f13.z), f11.xyz, vec3(f12)).xyz);
    _entryPointOutput = vec4(f15.x, f15.y, f15.z, f11.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
