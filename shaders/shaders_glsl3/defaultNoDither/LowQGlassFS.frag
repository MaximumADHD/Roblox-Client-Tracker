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
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec4 f1 = texture(DiffuseMapTexture, VARYING0);
    vec3 f2 = f1.xyz * VARYING2.xyz;
    vec4 f3 = vec4(f2.x, f2.y, f2.z, f1.w);
    f3.w = VARYING2.w;
    vec3 f4 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f5 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING3.yzx - (VARYING3.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture(LightGridSkylightTexture, f6), vec4(1.0), f7);
    float f10 = f9.x;
    vec4 f11 = texture(ShadowMapTexture, f4.xy);
    float f12 = f4.z;
    float f13 = (1.0 - ((step(f11.x, f12) * clamp(CB0[24].z + (CB0[24].w * abs(f12 - 0.5)), 0.0, 1.0)) * f11.y)) * f9.y;
    vec3 f14 = reflect(-(VARYING4.xyz / vec3(f0)), normalize(VARYING5.xyz));
    float f15 = (!(VARYING7.w == 0.0)) ? 0.0 : (max(VARYING5.w, 0.04500000178813934326171875) * 5.0);
    vec3 f16 = (((VARYING6.xyz * f13) + min((f8.xyz * (f8.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f10)), vec3(CB0[16].w))) * ((mix(vec3(1.0), textureLod(PrefilteredEnvTexture, vec4(f14, f15).xyz, f15).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f14.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f10)) * VARYING7.w) + ((f3.xyz * f3.xyz).xyz * (VARYING2.w - VARYING7.w)))) + (CB0[10].xyz * ((VARYING6.w * f13) * 0.100000001490116119384765625));
    vec4 f17 = vec4(f16.x, f16.y, f16.z, vec4(0.0).w);
    f17.w = VARYING2.w;
    float f18 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f19 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f18) * 5.0).xyz;
    bvec3 f20 = bvec3(!(CB0[13].w == 0.0));
    vec3 f21 = sqrt(clamp(mix(vec3(f20.x ? CB0[14].xyz.x : f19.x, f20.y ? CB0[14].xyz.y : f19.y, f20.z ? CB0[14].xyz.z : f19.z), f17.xyz, vec3(f18)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    float f22 = 1.0 - ((1.0 - VARYING2.w) * f18);
    vec4 f23 = vec4(f21.x, f21.y, f21.z, f17.w);
    f23.w = f22;
    vec4 f24 = f23;
    f24.w = f22;
    _entryPointOutput = f24;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
