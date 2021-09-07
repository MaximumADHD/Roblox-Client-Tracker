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
    vec4 f5 = vec4(f4.x, f4.y, f4.z, f3.w);
    f5.w = VARYING2.w;
    vec3 f6 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f7 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f8 = VARYING3.yzx - (VARYING3.yzx * f7);
    vec4 f9 = vec4(clamp(f7, 0.0, 1.0));
    vec4 f10 = mix(texture(LightMapTexture, f8), vec4(0.0), f9);
    vec4 f11 = mix(texture(LightGridSkylightTexture, f8), vec4(1.0), f9);
    vec4 f12 = texture(ShadowMapTexture, f6.xy);
    float f13 = f6.z;
    float f14 = (1.0 - ((step(f12.x, f13) * clamp(CB0[24].z + (CB0[24].w * abs(f13 - 0.5)), 0.0, 1.0)) * f12.y)) * f11.y;
    vec3 f15 = (f5.xyz * f5.xyz).xyz;
    vec3 f16 = (((VARYING5.xyz * f14) + min((f10.xyz * (f10.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f11.x)), vec3(CB0[16].w))) * f15) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f15, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f14));
    vec4 f17 = vec4(f16.x, f16.y, f16.z, vec4(0.0).w);
    f17.w = VARYING2.w;
    float f18 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f19 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f18) * 5.0).xyz;
    bvec3 f20 = bvec3(!(CB0[13].w == 0.0));
    vec3 f21 = sqrt(clamp(mix(vec3(f20.x ? CB0[14].xyz.x : f19.x, f20.y ? CB0[14].xyz.y : f19.y, f20.z ? CB0[14].xyz.z : f19.z), f17.xyz, vec3(f18)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f22 = vec4(f21.x, f21.y, f21.z, f17.w);
    f22.w = VARYING2.w;
    _entryPointOutput = f22;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
