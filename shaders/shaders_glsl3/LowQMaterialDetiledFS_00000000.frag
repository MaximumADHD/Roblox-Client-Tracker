#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D NoiseMapTexture;
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
    float f0 = texture(NoiseMapTexture, VARYING0 * CB2[2].w).x * 8.0;
    float f1 = floor(f0);
    vec2 f2 = dFdx(VARYING0);
    vec2 f3 = dFdy(VARYING0);
    vec4 f4 = mix(textureGrad(DiffuseMapTexture, sin(vec2(3.0, 7.0) * f1) + VARYING0, f2, f3), textureGrad(DiffuseMapTexture, sin(vec2(3.0, 7.0) * (f1 + 1.0)) + VARYING0, f2, f3), vec4(fract(f0)));
    vec3 f5 = mix(vec3(1.0), VARYING2.xyz, vec3(f4.w)) * f4.xyz;
    vec4 f6 = vec4(0.0);
    f6.x = f5.x;
    vec4 f7 = f6;
    f7.y = f5.y;
    vec4 f8 = f7;
    f8.z = f5.z;
    vec4 f9 = f8;
    f9.w = VARYING2.w;
    vec3 f10 = f9.xyz * f9.xyz;
    vec4 f11 = f9;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    float f14 = length(VARYING4.xyz);
    vec3 f15 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f16 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec4 f21 = texture(ShadowMapTexture, f15.xy);
    float f22 = f15.z;
    float f23 = (1.0 - ((step(f21.x, f22) * clamp(CB0[29].z + (CB0[29].w * abs(f22 - 0.5)), 0.0, 1.0)) * f21.y)) * f20.y;
    vec3 f24 = (((VARYING5.xyz * f23) + min((f19.xyz * (f19.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f20.x)), vec3(CB0[21].w))) * f13.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f13.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f23));
    vec4 f25 = vec4(0.0);
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    vec4 f28 = f27;
    f28.w = VARYING2.w;
    float f29 = clamp(exp2((CB0[18].z * f14) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f30 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f14)), 0.0).xyz, max(CB0[18].y, f29) * 5.0).xyz;
    bvec3 f31 = bvec3(!(CB0[18].w == 0.0));
    vec3 f32 = mix(vec3(f31.x ? CB0[19].xyz.x : f30.x, f31.y ? CB0[19].xyz.y : f30.y, f31.z ? CB0[19].xyz.z : f30.z), f28.xyz, vec3(f29));
    vec4 f33 = f28;
    f33.x = f32.x;
    vec4 f34 = f33;
    f34.y = f32.y;
    vec4 f35 = f34;
    f35.z = f32.z;
    vec3 f36 = sqrt(clamp(f35.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f37 = f35;
    f37.x = f36.x;
    vec4 f38 = f37;
    f38.y = f36.y;
    vec4 f39 = f38;
    f39.z = f36.z;
    vec4 f40 = f39;
    f40.w = VARYING2.w;
    _entryPointOutput = f40;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NoiseMapTexture=s9
//$$DiffuseMapTexture=s3
