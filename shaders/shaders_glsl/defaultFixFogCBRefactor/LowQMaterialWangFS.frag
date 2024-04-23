#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[57];
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
    float f13 = length(VARYING4.xyz);
    vec3 f14 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture3D(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture3D(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec4 f20 = texture2D(ShadowMapTexture, f14.xy);
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
    vec3 f28 = -(VARYING4.xyz / vec3(f13));
    vec3 f29 = f28 * f28;
    bvec3 f30 = lessThan(f28, vec3(0.0));
    vec3 f31 = vec3(f30.x ? f29.x : vec3(0.0).x, f30.y ? f29.y : vec3(0.0).y, f30.z ? f29.z : vec3(0.0).z);
    vec3 f32 = f29 - f31;
    vec3 f33 = (((((CB0[34].xyz * f32.x) + (CB0[36].xyz * f32.y)) + (CB0[38].xyz * f32.z)) + (CB0[35].xyz * f31.x)) + (CB0[37].xyz * f31.y)) + (CB0[39].xyz * f31.z);
    bvec3 f34 = bvec3(!(CB0[18].w == 0.0));
    vec3 f35 = mix(vec3(f34.x ? CB0[19].xyz.x : f33.x, f34.y ? CB0[19].xyz.y : f33.y, f34.z ? CB0[19].xyz.z : f33.z), f27.xyz, vec3(clamp(exp2((CB0[18].z * f13) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f36 = f27;
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    vec4 f38 = f37;
    f38.z = f35.z;
    vec3 f39 = sqrt(clamp(f38.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f40 = f38;
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    vec4 f43 = f42;
    f43.w = VARYING2.w;
    gl_FragData[0] = f43;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
