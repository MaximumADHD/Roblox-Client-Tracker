#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec3 f1 = f0.xyz * VARYING2.xyz;
    vec4 f2 = vec4(f1.x, f1.y, f1.z, f0.w);
    f2.w = VARYING2.w;
    float f3 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f4 = VARYING3.yzx - (VARYING3.yzx * f3);
    vec4 f5 = vec4(clamp(f3, 0.0, 1.0));
    vec4 f6 = mix(texture(LightMapTexture, f4), vec4(0.0), f5);
    vec4 f7 = mix(texture(LightGridSkylightTexture, f4), vec4(1.0), f5);
    float f8 = f7.x;
    vec4 f9 = texture(ShadowMapTexture, VARYING7.xy);
    float f10 = (1.0 - ((step(f9.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f9.y)) * f7.y;
    float f11 = length(VARYING4.xyz);
    vec3 f12 = reflect(-(VARYING4.xyz / vec3(f11)), normalize(VARYING5.xyz));
    float f13 = (VARYING7.w != 0.0) ? 0.0 : (max(VARYING5.w, 0.04500000178813934326171875) * 5.0);
    vec3 f14 = (((VARYING6.xyz * f10) + min((f6.xyz * (f6.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f8)), vec3(CB0[16].w))) * ((mix(vec3(1.0), textureLod(PrefilteredEnvTexture, vec4(f12, f13).xyz, f13).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f12.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f8)) * VARYING7.w) + ((f2.xyz * f2.xyz).xyz * (VARYING2.w - VARYING7.w)))) + (CB0[10].xyz * ((VARYING6.w * f10) * 0.100000001490116119384765625));
    vec4 f15 = vec4(f14.x, f14.y, f14.z, vec4(0.0).w);
    f15.w = VARYING2.w;
    float f16 = clamp(exp2((CB0[13].z * f11) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f17 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f16) * 5.0).xyz;
    bvec3 f18 = bvec3(CB0[13].w != 0.0);
    float f19 = f16 * VARYING2.w;
    vec3 f20 = sqrt(clamp(mix(vec3(f18.x ? CB0[14].xyz.x : f17.x, f18.y ? CB0[14].xyz.y : f17.y, f18.z ? CB0[14].xyz.z : f17.z), f15.xyz, vec3(f16)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f21 = vec4(f20.x, f20.y, f20.z, f15.w);
    f21.w = f19;
    vec4 f22 = f21;
    f22.w = f19;
    _entryPointOutput = f22;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
