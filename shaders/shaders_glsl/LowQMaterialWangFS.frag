#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[47];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D WangTileMapTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec2 f0 = (VARYING0 * CB2[0].x) * 4.0;
    vec2 f1 = f0 * 0.25;
    vec4 f2 = vec4(dFdx(f1), dFdy(f1));
    vec4 f3 = texture2DGradARB(DiffuseMapTexture, (texture2D(WangTileMapTexture, f0 * vec2(0.0078125)).zw * 0.99609375) + (fract(f0) * 0.25), f2.xy, f2.zw);
    vec3 f4 = mix(vec3(1.0), VARYING2.xyz, vec3(f3.w)) * f3.xyz;
    vec4 f5 = vec4(f4.x, f4.y, f4.z, f3.w);
    f5.w = VARYING2.w;
    float f6 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f7 = VARYING3.yzx - (VARYING3.yzx * f6);
    vec4 f8 = vec4(clamp(f6, 0.0, 1.0));
    vec4 f9 = mix(texture3D(LightMapTexture, f7), vec4(0.0), f8);
    vec4 f10 = mix(texture3D(LightGridSkylightTexture, f7), vec4(1.0), f8);
    vec4 f11 = texture2D(ShadowMapTexture, VARYING6.xy);
    float f12 = (1.0 - ((step(f11.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f11.y)) * f10.y;
    vec3 f13 = (f5.xyz * f5.xyz).xyz;
    vec3 f14 = (((VARYING5.xyz * f12) + min((f9.xyz * (f9.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f10.x)), vec3(CB0[16].w))) * f13) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f13, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f12));
    vec4 f15 = vec4(f14.x, f14.y, f14.z, vec4(0.0).w);
    f15.w = VARYING2.w;
    vec3 f16 = sqrt(clamp(mix(CB0[14].xyz, f15.xyz, vec3(clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f17 = vec4(f16.x, f16.y, f16.z, f15.w);
    f17.w = VARYING2.w;
    gl_FragData[0] = f17;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
