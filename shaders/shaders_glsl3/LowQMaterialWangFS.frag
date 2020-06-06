#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[47];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D WangTileMapTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec3 VARYING3;
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
    float f6 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f7 = VARYING3.yzx - (VARYING3.yzx * f6);
    vec4 f8 = vec4(clamp(f6, 0.0, 1.0));
    vec4 f9 = mix(texture(LightMapTexture, f7), vec4(0.0), f8);
    vec4 f10 = mix(texture(LightGridSkylightTexture, f7), vec4(1.0), f8);
    vec4 f11 = texture(ShadowMapTexture, VARYING6.xy);
    float f12 = (1.0 - ((step(f11.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f11.y)) * f10.y;
    vec3 f13 = (f5.xyz * f5.xyz).xyz;
    vec3 f14 = (((VARYING5.xyz * f12) + min((f9.xyz * (f9.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f10.x)), vec3(CB0[16].w))) * f13) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f13, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f12));
    vec4 f15 = vec4(f14.x, f14.y, f14.z, vec4(0.0).w);
    f15.w = VARYING2.w;
    float f16 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
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
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
