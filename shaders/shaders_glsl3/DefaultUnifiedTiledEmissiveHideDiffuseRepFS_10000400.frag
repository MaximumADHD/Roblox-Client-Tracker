#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
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
    float f10 = length(VARYING4.xyz);
    float f11 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING3.yzx - (VARYING3.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture(LightGridSkylightTexture, f12), vec4(1.0), f13);
    float f16 = f15.y;
    vec3 f17 = (((VARYING5.xyz * f16) + min((f14.xyz * (f14.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f15.x)), vec3(CB0[21].w))) * f9.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f9.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f16));
    vec4 f18 = vec4(0.0);
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    vec4 f21 = f20;
    f21.w = VARYING2.w;
    float f22 = clamp(exp2((CB0[18].z * f10) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f23 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f10)), 0.0).xyz, max(CB0[18].y, f22) * 5.0).xyz;
    bvec3 f24 = bvec3(!(CB0[18].w == 0.0));
    vec3 f25 = mix(vec3(f24.x ? CB0[19].xyz.x : f23.x, f24.y ? CB0[19].xyz.y : f23.y, f24.z ? CB0[19].xyz.z : f23.z), f21.xyz, vec3(f22));
    vec4 f26 = f21;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    vec3 f29 = sqrt(clamp(f28.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f30 = f28;
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    vec4 f33 = f32;
    f33.w = VARYING2.w;
    _entryPointOutput = f33;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
