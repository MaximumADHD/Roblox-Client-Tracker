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
uniform sampler2D NoiseMapTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    float f0 = texture2D(NoiseMapTexture, VARYING0 * CB2[2].w).x * 8.0;
    float f1 = floor(f0);
    vec2 f2 = dFdx(VARYING0);
    vec2 f3 = dFdy(VARYING0);
    vec4 f4 = mix(texture2DGradARB(DiffuseMapTexture, sin(vec2(3.0, 7.0) * f1) + VARYING0, f2, f3), texture2DGradARB(DiffuseMapTexture, sin(vec2(3.0, 7.0) * (f1 + 1.0)) + VARYING0, f2, f3), vec4(fract(f0)));
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
    vec3 f14 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture3D(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture3D(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec4 f20 = texture2D(ShadowMapTexture, f14.xy);
    float f21 = f14.z;
    float f22 = (1.0 - ((step(f20.x, f21) * clamp(CB0[29].z + (CB0[29].w * abs(f21 - 0.5)), 0.0, 1.0)) * f20.y)) * f19.y;
    vec3 f23 = (((VARYING5.xyz * f22) + min((f18.xyz * (f18.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f19.x)), vec3(CB0[21].w))) * f13.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f13.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f22));
    vec4 f24 = vec4(0.0);
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    vec4 f27 = f26;
    f27.w = VARYING2.w;
    vec3 f28 = mix(CB0[19].xyz, f27.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING4.xyz)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f29 = f27;
    f29.x = f28.x;
    vec4 f30 = f29;
    f30.y = f28.y;
    vec4 f31 = f30;
    f31.z = f28.z;
    vec3 f32 = sqrt(clamp(f31.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f33 = f31;
    f33.x = f32.x;
    vec4 f34 = f33;
    f34.y = f32.y;
    vec4 f35 = f34;
    f35.z = f32.z;
    vec4 f36 = f35;
    f36.w = VARYING2.w;
    gl_FragData[0] = f36;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NoiseMapTexture=s9
//$$DiffuseMapTexture=s3
