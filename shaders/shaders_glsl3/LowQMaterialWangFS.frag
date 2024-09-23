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
uniform sampler2D WangTileMapTexture;
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
    vec2 f0 = (VARYING0 * CB2[0].x) * 4.0;
    vec2 f1 = f0 * 0.25;
    vec4 f2 = vec4(dFdx(f1), dFdy(f1));
    vec4 f3 = textureGrad(DiffuseMapTexture, (texture(WangTileMapTexture, f0 * vec2(0.0078125)).xy * 0.99609375) + (fract(f0) * 0.25), f2.xy, f2.zw);
    vec3 f4 = mix(vec3(1.0), VARYING2.xyz, vec3(f3.w)) * f3.xyz;
    vec4 f5 = vec4(0.0);
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    vec4 f8 = f7;
    f8.w = VARYING2.w;
    vec3 f9 = f8.xyz * f8.xyz;
    vec4 f10 = f8;
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    float f13 = length(VARYING4.xyz);
    vec3 f14 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec4 f20 = texture(ShadowMapTexture, f14.xy);
    float f21 = f14.z;
    float f22 = (1.0 - ((step(f20.x, f21) * clamp(CB0[29].z + (CB0[29].w * abs(f21 - 0.5)), 0.0, 1.0)) * f20.y)) * f19.y;
    vec3 f23 = (((VARYING5.xyz * f22) + min((f18.xyz * (f18.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f19.x)), vec3(CB0[21].w))) * f12.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f12.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f22));
    vec4 f24 = vec4(0.0);
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    vec4 f27 = f26;
    f27.w = VARYING2.w;
    float f28 = clamp(exp2((CB0[18].z * f13) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f29 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f13)), 0.0).xyz, max(CB0[18].y, f28) * 5.0).xyz;
    bvec3 f30 = bvec3(!(CB0[18].w == 0.0));
    vec3 f31 = mix(vec3(f30.x ? CB0[19].xyz.x : f29.x, f30.y ? CB0[19].xyz.y : f29.y, f30.z ? CB0[19].xyz.z : f29.z), f27.xyz, vec3(f28));
    vec4 f32 = f27;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    vec3 f35 = sqrt(clamp(f34.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f36 = f34;
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    vec4 f38 = f37;
    f38.z = f35.z;
    vec4 f39 = f38;
    f39.w = VARYING2.w;
    _entryPointOutput = f39;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
