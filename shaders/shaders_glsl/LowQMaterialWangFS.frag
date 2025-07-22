#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialParams.h>
uniform vec4 CB0[61];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D WangTileMapTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
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
    vec3 f13 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f14 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f15 = VARYING3.yzx - (VARYING3.yzx * f14);
    vec4 f16 = vec4(clamp(f14, 0.0, 1.0));
    vec4 f17 = mix(texture3D(LightMapTexture, f15), vec4(0.0), f16);
    vec4 f18 = mix(texture3D(LightGridSkylightTexture, f15), vec4(1.0), f16);
    vec4 f19 = texture2D(ShadowMapTexture, f13.xy);
    float f20 = f13.z;
    float f21 = (1.0 - ((step(f19.x, f20) * clamp(CB0[29].z + (CB0[29].w * abs(f20 - 0.5)), 0.0, 1.0)) * f19.y)) * f18.y;
    vec3 f22 = (((VARYING5.xyz * f21) + min((f17.xyz * (f17.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f18.x)), vec3(CB0[21].w))) * f12.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f12.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f21));
    vec4 f23 = vec4(0.0);
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    vec4 f26 = f25;
    f26.w = VARYING2.w;
    vec3 f27 = mix(CB0[19].xyz, f26.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING4.xyz)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f28 = f26;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec3 f31 = sqrt(clamp(f30.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f32 = f30;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    vec4 f35 = f34;
    f35.w = VARYING2.w;
    gl_FragData[0] = f35;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
