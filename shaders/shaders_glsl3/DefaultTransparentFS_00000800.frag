#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
    vec3 f2 = f1 * f1;
    vec4 f3 = f0;
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    vec3 f6 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f7 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f8 = VARYING3.yzx - (VARYING3.yzx * f7);
    vec4 f9 = vec4(clamp(f7, 0.0, 1.0));
    vec4 f10 = mix(texture(LightMapTexture, f8), vec4(0.0), f9);
    vec4 f11 = mix(texture(LightGridSkylightTexture, f8), vec4(1.0), f9);
    vec4 f12 = texture(ShadowMapTexture, f6.xy);
    float f13 = f6.z;
    float f14 = (1.0 - ((step(f12.x, f13) * clamp(CB0[29].z + (CB0[29].w * abs(f13 - 0.5)), 0.0, 1.0)) * f12.y)) * f11.y;
    vec3 f15 = (((VARYING5.xyz * f14) + min((f10.xyz * (f10.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f11.x)), vec3(CB0[21].w))) * f5.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f5.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f14));
    vec4 f16 = vec4(0.0);
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    vec4 f19 = f18;
    f19.w = f0.w;
    float f20 = clamp(exp2((CB0[18].z * length(VARYING4.xyz)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f21 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f20) * 5.0).xyz;
    bvec3 f22 = bvec3(!(CB0[18].w == 0.0));
    vec3 f23 = mix(vec3(f22.x ? CB0[19].xyz.x : f21.x, f22.y ? CB0[19].xyz.y : f21.y, f22.z ? CB0[19].xyz.z : f21.z), f19.xyz, vec3(f20));
    vec4 f24 = f19;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    vec3 f27 = max(vec3(0.0), f26.xyz);
    vec4 f28 = f26;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    _entryPointOutput = f30;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
