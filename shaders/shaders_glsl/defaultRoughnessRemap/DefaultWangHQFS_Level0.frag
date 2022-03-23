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
    vec3 f13 = vec3(f11, f12);
    vec2 f14 = f13.xy + (vec3((texture2D(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f15 = f13;
    f15.x = f14.x;
    vec3 f16 = f15;
    f16.y = f14.y;
    vec2 f17 = f16.xy * f1;
    float f18 = f17.x;
    vec4 f19 = texture2DGradARB(SpecularMapTexture, f6, f7, f8);
    vec4 f20 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f9.w, CB2[3].w))) * f9.xyz) * (1.0 + (f18 * CB2[0].z)), VARYING2.w);
    float f21 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f22 = VARYING6.xyz * f21;
    vec3 f23 = VARYING5.xyz * f21;
    vec3 f24 = normalize(((f22 * f18) + (cross(f23, f22) * f17.y)) + (f23 * f12));
    vec3 f25 = f20.xyz;
    vec3 f26 = f25 * f25;
    vec4 f27 = f20;
    f27.x = f26.x;
    vec4 f28 = f27;
    f28.y = f26.y;
    vec4 f29 = f28;
    f29.z = f26.z;
    vec3 f30 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f31 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f32 = VARYING3.yzx - (VARYING3.yzx * f31);
    vec4 f33 = vec4(clamp(f31, 0.0, 1.0));
    vec4 f34 = mix(texture3D(LightMapTexture, f32), vec4(0.0), f33);
    vec4 f35 = mix(texture3D(LightGridSkylightTexture, f32), vec4(1.0), f33);
    vec4 f36 = texture2D(ShadowMapTexture, f30.xy);
    float f37 = f30.z;
    float f38 = CB0[26].w * f1;
    float f39 = 0.08900000154972076416015625 + (f19.y * 0.9110000133514404296875);
    float f40 = f19.x * f38;
    vec3 f41 = -CB0[11].xyz;
    float f42 = (dot(f24, f41) * CB0[9].w) * ((1.0 - ((step(f36.x, f37) * clamp(CB0[24].z + (CB0[24].w * abs(f37 - 0.5)), 0.0, 1.0)) * f36.y)) * f35.y);
    vec3 f43 = normalize(f41 + (VARYING4.xyz / vec3(f0)));
    float f44 = clamp(f42, 0.0, 1.0);
    float f45 = f39 * f39;
    float f46 = max(0.001000000047497451305389404296875, dot(f24, f43));
    float f47 = dot(f41, f43);
    float f48 = 1.0 - f47;
    float f49 = f48 * f48;
    float f50 = (f49 * f49) * f48;
    vec3 f51 = vec3(f50) + (mix(vec3(0.039999999105930328369140625), f29.xyz, vec3(f40)) * (1.0 - f50));
    float f52 = f45 * f45;
    float f53 = (((f46 * f52) - f46) * f46) + 1.0;
    float f54 = 1.0 - f40;
    vec3 f55 = ((((((vec3(f54) - (f51 * (f38 * f54))) * CB0[10].xyz) * f44) + (CB0[12].xyz * (f54 * clamp(-f42, 0.0, 1.0)))) + min((f34.xyz * (f34.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f35.x)), vec3(CB0[16].w))) * f29.xyz) + (((f51 * (((f52 + (f52 * f52)) / (((f53 * f53) * ((f47 * 3.0) + 0.5)) * ((f46 * 0.75) + 0.25))) * f44)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w));
    vec4 f56 = vec4(0.0);
    f56.x = f55.x;
    vec4 f57 = f56;
    f57.y = f55.y;
    vec4 f58 = f57;
    f58.z = f55.z;
    vec4 f59 = f58;
    f59.w = VARYING2.w;
    vec3 f60 = mix(CB0[14].xyz, f59.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f61 = f59;
    f61.x = f60.x;
    vec4 f62 = f61;
    f62.y = f60.y;
    vec4 f63 = f62;
    f63.z = f60.z;
    vec3 f64 = sqrt(clamp(f63.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f65 = f63;
    f65.x = f64.x;
    vec4 f66 = f65;
    f66.y = f64.y;
    vec4 f67 = f66;
    f67.z = f64.z;
    vec4 f68 = f67;
    f68.w = VARYING2.w;
    gl_FragData[0] = f68;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
