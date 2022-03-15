#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[4];
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
    vec4 f0 = mix(texture(DiffuseMapTexture, VARYING0 * CB2[1].y), texture(DiffuseMapTexture, VARYING0), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[3].x) - (0.60000002384185791015625 * CB2[3].x), 0.0, 1.0)));
    vec3 f1 = mix(vec3(1.0), VARYING2.xyz, vec3(f0.w)) * f0.xyz;
    vec4 f2 = vec4(0.0);
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    vec4 f5 = f4;
    f5.w = VARYING2.w;
    vec3 f6 = f5.xyz * f5.xyz;
    vec4 f7 = f5;
    f7.x = f6.x;
    vec4 f8 = f7;
    f8.y = f6.y;
    vec4 f9 = f8;
    f9.z = f6.z;
    vec3 f10 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f11 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING3.yzx - (VARYING3.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture(LightGridSkylightTexture, f12), vec4(1.0), f13);
    vec4 f16 = texture(ShadowMapTexture, f10.xy);
    float f17 = f10.z;
    float f18 = (1.0 - ((step(f16.x, f17) * clamp(CB0[24].z + (CB0[24].w * abs(f17 - 0.5)), 0.0, 1.0)) * f16.y)) * f15.y;
    vec3 f19 = (((VARYING5.xyz * f18) + min((f14.xyz * (f14.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f15.x)), vec3(CB0[16].w))) * f9.xyz) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f9.xyz, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f18));
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec4 f23 = f22;
    f23.w = VARYING2.w;
    float f24 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f25 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f24) * 5.0).xyz;
    bvec3 f26 = bvec3(!(CB0[13].w == 0.0));
    vec3 f27 = mix(vec3(f26.x ? CB0[14].xyz.x : f25.x, f26.y ? CB0[14].xyz.y : f25.y, f26.z ? CB0[14].xyz.z : f25.z), f23.xyz, vec3(f24));
    vec4 f28 = f23;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec3 f31 = sqrt(clamp(f30.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f32 = f30;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    vec4 f35 = f34;
    f35.w = VARYING2.w;
    _entryPointOutput = f35;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
