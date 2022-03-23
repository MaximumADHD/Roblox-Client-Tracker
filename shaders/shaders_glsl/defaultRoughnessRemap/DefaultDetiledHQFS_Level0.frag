#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D WangTileMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = length(VARYING4.xyz);
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    float f3 = texture2D(WangTileMapTexture, f2 * CB2[2].w).x * 8.0;
    float f4 = fract(f3);
    float f5 = floor(f3);
    vec2 f6 = dFdx(f2);
    vec2 f7 = dFdy(f2);
    vec2 f8 = sin(vec2(3.0, 7.0) * f5) + f2;
    vec2 f9 = sin(vec2(3.0, 7.0) * (f5 + 1.0)) + f2;
    vec4 f10 = vec4(f4);
    vec4 f11 = mix(texture2DGradARB(DiffuseMapTexture, f8, f6, f7), texture2DGradARB(DiffuseMapTexture, f9, f6, f7), f10);
    vec2 f12 = texture2DGradARB(NormalMapTexture, f8, f6, f7).wy * 2.0;
    vec2 f13 = f12 - vec2(1.0);
    vec4 f14 = vec4(0.0);
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f12, f13), 0.0, 1.0));
    vec2 f17 = texture2DGradARB(NormalMapTexture, f9, f6, f7).wy * 2.0;
    vec2 f18 = f17 - vec2(1.0);
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f17, f18), 0.0, 1.0));
    vec3 f22 = mix(f16.xyz, f21.xyz, vec3(f4));
    vec2 f23 = f22.xy + (vec3((texture2D(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f24 = f22;
    f24.x = f23.x;
    vec3 f25 = f24;
    f25.y = f23.y;
    vec2 f26 = f25.xy * f1;
    float f27 = f26.x;
    vec4 f28 = mix(texture2DGradARB(SpecularMapTexture, f8, f6, f7), texture2DGradARB(SpecularMapTexture, f9, f6, f7), f10);
    vec4 f29 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f11.w, CB2[3].w))) * f11.xyz) * (1.0 + (f27 * CB2[0].z)), VARYING2.w);
    float f30 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f31 = VARYING6.xyz * f30;
    vec3 f32 = VARYING5.xyz * f30;
    vec3 f33 = normalize(((f31 * f27) + (cross(f32, f31) * f26.y)) + (f32 * f22.z));
    vec3 f34 = f29.xyz;
    vec3 f35 = f34 * f34;
    vec4 f36 = f29;
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    vec4 f38 = f37;
    f38.z = f35.z;
    vec3 f39 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f40 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f41 = VARYING3.yzx - (VARYING3.yzx * f40);
    vec4 f42 = vec4(clamp(f40, 0.0, 1.0));
    vec4 f43 = mix(texture3D(LightMapTexture, f41), vec4(0.0), f42);
    vec4 f44 = mix(texture3D(LightGridSkylightTexture, f41), vec4(1.0), f42);
    vec4 f45 = texture2D(ShadowMapTexture, f39.xy);
    float f46 = f39.z;
    float f47 = CB0[26].w * f1;
    float f48 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f49 = f28.x * f47;
    vec3 f50 = -CB0[11].xyz;
    float f51 = (dot(f33, f50) * CB0[9].w) * ((1.0 - ((step(f45.x, f46) * clamp(CB0[24].z + (CB0[24].w * abs(f46 - 0.5)), 0.0, 1.0)) * f45.y)) * f44.y);
    vec3 f52 = normalize(f50 + (VARYING4.xyz / vec3(f0)));
    float f53 = clamp(f51, 0.0, 1.0);
    float f54 = f48 * f48;
    float f55 = max(0.001000000047497451305389404296875, dot(f33, f52));
    float f56 = dot(f50, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (mix(vec3(0.039999999105930328369140625), f38.xyz, vec3(f49)) * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    float f63 = 1.0 - f49;
    vec3 f64 = ((((((vec3(f63) - (f60 * (f47 * f63))) * CB0[10].xyz) * f53) + (CB0[12].xyz * (f63 * clamp(-f51, 0.0, 1.0)))) + min((f43.xyz * (f43.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f44.x)), vec3(CB0[16].w))) * f38.xyz) + (((f60 * (((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25))) * f53)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w));
    vec4 f65 = vec4(0.0);
    f65.x = f64.x;
    vec4 f66 = f65;
    f66.y = f64.y;
    vec4 f67 = f66;
    f67.z = f64.z;
    vec4 f68 = f67;
    f68.w = VARYING2.w;
    vec3 f69 = mix(CB0[14].xyz, f68.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f70 = f68;
    f70.x = f69.x;
    vec4 f71 = f70;
    f71.y = f69.y;
    vec4 f72 = f71;
    f72.z = f69.z;
    vec3 f73 = sqrt(clamp(f72.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f74 = f72;
    f74.x = f73.x;
    vec4 f75 = f74;
    f75.y = f73.y;
    vec4 f76 = f75;
    f76.z = f73.z;
    vec4 f77 = f76;
    f77.w = VARYING2.w;
    gl_FragData[0] = f77;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
