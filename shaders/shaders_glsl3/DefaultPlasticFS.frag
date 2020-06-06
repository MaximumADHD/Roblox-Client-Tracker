#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D StudsMapTexture;

in vec2 VARYING1;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in float VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING7) * 0.25;
    vec3 f1 = vec4(VARYING2.xyz * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING3.yzx - (VARYING3.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec4 f7 = texture(ShadowMapTexture, VARYING6.xy);
    float f8 = (1.0 - ((step(f7.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f7.y)) * f6.y;
    vec3 f9 = (f1 * f1).xyz;
    vec3 f10 = (((VARYING5.xyz * f8) + min((f5.xyz * (f5.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f6.x)), vec3(CB0[16].w))) * f9) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f9, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f8));
    vec4 f11 = vec4(f10.x, f10.y, f10.z, vec4(0.0).w);
    f11.w = VARYING2.w;
    float f12 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f13 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f12) * 5.0).xyz;
    bvec3 f14 = bvec3(CB0[13].w != 0.0);
    vec3 f15 = sqrt(clamp(mix(vec3(f14.x ? CB0[14].xyz.x : f13.x, f14.y ? CB0[14].xyz.y : f13.y, f14.z ? CB0[14].xyz.z : f13.z), f11.xyz, vec3(f12)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f16 = vec4(f15.x, f15.y, f15.z, f11.w);
    f16.w = VARYING2.w;
    _entryPointOutput = f16;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$StudsMapTexture=s0
