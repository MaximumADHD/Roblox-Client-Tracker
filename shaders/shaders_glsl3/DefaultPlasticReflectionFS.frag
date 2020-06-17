#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D StudsMapTexture;

in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    vec3 f1 = vec4(VARYING2.xyz * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    vec3 f2 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f3 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f4 = VARYING3.yzx - (VARYING3.yzx * f3);
    vec4 f5 = vec4(clamp(f3, 0.0, 1.0));
    vec4 f6 = mix(texture(LightMapTexture, f4), vec4(0.0), f5);
    vec4 f7 = mix(texture(LightGridSkylightTexture, f4), vec4(1.0), f5);
    vec4 f8 = texture(ShadowMapTexture, f2.xy);
    float f9 = f2.z;
    float f10 = (1.0 - ((step(f8.x, f9) * clamp(CB0[24].z + (CB0[24].w * abs(f9 - 0.5)), 0.0, 1.0)) * f8.y)) * f7.y;
    float f11 = length(VARYING4.xyz);
    vec3 f12 = reflect(-(VARYING4.xyz / vec3(f11)), normalize(VARYING5.xyz));
    float f13 = (VARYING7.w != 0.0) ? 0.0 : (max(VARYING5.w, 0.04500000178813934326171875) * 5.0);
    vec3 f14 = (((VARYING6.xyz * f10) + min((f6.xyz * (f6.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f7.x)), vec3(CB0[16].w))) * mix((f1 * f1).xyz, textureLod(PrefilteredEnvTexture, vec4(f12, f13).xyz, f13).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f12.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(VARYING7.w))) + (CB0[10].xyz * ((VARYING6.w * f10) * 0.100000001490116119384765625));
    vec4 f15 = vec4(f14.x, f14.y, f14.z, vec4(0.0).w);
    f15.w = VARYING2.w;
    float f16 = clamp(exp2((CB0[13].z * f11) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f17 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f16) * 5.0).xyz;
    bvec3 f18 = bvec3(CB0[13].w != 0.0);
    vec3 f19 = sqrt(clamp(mix(vec3(f18.x ? CB0[14].xyz.x : f17.x, f18.y ? CB0[14].xyz.y : f17.y, f18.z ? CB0[14].xyz.z : f17.z), f15.xyz, vec3(f16)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f20 = vec4(f19.x, f19.y, f19.z, f15.w);
    f20.w = VARYING2.w;
    _entryPointOutput = f20;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$StudsMapTexture=s0
