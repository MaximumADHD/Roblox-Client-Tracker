#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
    vec3 f0 = VARYING2.xyz * VARYING2.xyz;
    vec4 f1 = VARYING2;
    f1.x = f0.x;
    vec4 f2 = f1;
    f2.y = f0.y;
    vec4 f3 = f2;
    f3.z = f0.z;
    vec3 f4 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f5 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING3.yzx - (VARYING3.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture(LightGridSkylightTexture, f6), vec4(1.0), f7);
    vec4 f10 = texture(ShadowMapTexture, f4.xy);
    float f11 = f4.z;
    float f12 = (1.0 - ((step(f10.x, f11) * clamp(CB0[29].z + (CB0[29].w * abs(f11 - 0.5)), 0.0, 1.0)) * f10.y)) * f9.y;
    vec3 f13 = (((VARYING5.xyz * f12) + min((f8.xyz * (f8.w * 120.0)) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f9.x)), vec3(CB0[21].w))) * f3.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f3.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f12));
    vec4 f14 = vec4(0.0);
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    vec4 f17 = f16;
    f17.w = VARYING2.w;
    float f18 = clamp(exp2((CB0[18].z * length(VARYING4.xyz)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f19 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f18) * 5.0).xyz;
    bvec3 f20 = bvec3(!(CB0[18].w == 0.0));
    vec3 f21 = mix(vec3(f20.x ? CB0[19].xyz.x : f19.x, f20.y ? CB0[19].xyz.y : f19.y, f20.z ? CB0[19].xyz.z : f19.z), f17.xyz, vec3(f18));
    vec4 f22 = f17;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec3 f25 = max(vec3(0.0), f24.xyz);
    vec4 f26 = f24;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    _entryPointOutput = f28;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
