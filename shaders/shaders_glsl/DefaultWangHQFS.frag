#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D WangTileMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    vec2 f3 = f2 * 4.0;
    vec2 f4 = f3 * 0.25;
    vec4 f5 = vec4(dFdx(f4), dFdy(f4));
    vec2 f6 = (texture2D(WangTileMapTexture, f3 * vec2(0.0078125)).zw * 0.99609375) + (fract(f3) * 0.25);
    vec2 f7 = f5.xy;
    vec2 f8 = f5.zw;
    vec4 f9 = texture2DGradARB(DiffuseMapTexture, f6, f7, f8);
    vec2 f10 = texture2DGradARB(NormalMapTexture, f6, f7, f8).wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0));
    vec2 f13 = (vec3(f11, f12).xy + (vec3((texture2D(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f14 = f13.x;
    vec4 f15 = texture2DGradARB(SpecularMapTexture, f6, f7, f8);
    vec3 f16 = normalize(((VARYING6.xyz * f14) + (cross(VARYING5.xyz, VARYING6.xyz) * f13.y)) + (VARYING5.xyz * f12));
    vec3 f17 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f9.w + CB2[2].w, 0.0, 1.0))) * f9.xyz) * (1.0 + (f14 * CB2[0].z))) * (texture2D(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    vec3 f18 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f19 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING3.yzx - (VARYING3.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture3D(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture3D(LightGridSkylightTexture, f20), vec4(1.0), f21);
    vec4 f24 = texture2D(ShadowMapTexture, f18.xy);
    float f25 = f18.z;
    float f26 = length(VARYING4.xyz);
    vec3 f27 = (f17 * f17).xyz;
    float f28 = CB0[26].w * f1;
    float f29 = max(f15.y, 0.04500000178813934326171875);
    float f30 = f15.x * f28;
    vec3 f31 = -CB0[11].xyz;
    float f32 = dot(f16, f31) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[24].z + (CB0[24].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f23.y);
    vec3 f33 = normalize(f31 + (VARYING4.xyz / vec3(f26)));
    float f34 = clamp(f32, 0.0, 1.0);
    float f35 = f29 * f29;
    float f36 = max(0.001000000047497451305389404296875, dot(f16, f33));
    float f37 = dot(f31, f33);
    float f38 = 1.0 - f37;
    float f39 = f38 * f38;
    float f40 = (f39 * f39) * f38;
    vec3 f41 = vec3(f40) + (mix(vec3(0.039999999105930328369140625), f27, vec3(f30)) * (1.0 - f40));
    float f42 = f35 * f35;
    float f43 = (((f36 * f42) - f36) * f36) + 1.0;
    float f44 = 1.0 - f30;
    vec3 f45 = ((((((vec3(f44) - (f41 * (f28 * f44))) * CB0[10].xyz) * f34) + (CB0[12].xyz * (f44 * clamp(-f32, 0.0, 1.0)))) + min((f22.xyz * (f22.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f23.x)), vec3(CB0[16].w))) * f27) + ((f41 * (((f42 + (f42 * f42)) / (((f43 * f43) * ((f37 * 3.0) + 0.5)) * ((f36 * 0.75) + 0.25))) * f34)) * CB0[10].xyz);
    vec4 f46 = vec4(f45.x, f45.y, f45.z, vec4(0.0).w);
    f46.w = VARYING2.w;
    vec3 f47 = sqrt(clamp(mix(CB0[14].xyz, f46.xyz, vec3(clamp(exp2((CB0[13].z * f26) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f48 = vec4(f47.x, f47.y, f47.z, f46.w);
    f48.w = VARYING2.w;
    gl_FragData[0] = f48;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
