#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D NoiseMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f3 = texture(NoiseMapTexture, VARYING0 * CB2[2].w);
    float f4 = f3.x * 8.0;
    float f5 = fract(f4);
    float f6 = floor(f4);
    vec2 f7 = dFdx(VARYING0);
    vec2 f8 = dFdy(VARYING0);
    vec2 f9 = sin(vec2(3.0, 7.0) * f6) + VARYING0;
    vec2 f10 = sin(vec2(3.0, 7.0) * (f6 + 1.0)) + VARYING0;
    vec4 f11 = vec4(f5);
    vec4 f12 = mix(textureGrad(DiffuseMapTexture, f9, f7, f8), textureGrad(DiffuseMapTexture, f10, f7, f8), f11);
    vec2 f13 = textureGrad(NormalMapTexture, f9, f7, f8).wy * 2.0;
    vec2 f14 = f13 - vec2(1.0);
    vec4 f15 = vec4(0.0);
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f13, f14), 0.0, 1.0));
    vec2 f18 = textureGrad(NormalMapTexture, f10, f7, f8).wy * 2.0;
    vec2 f19 = f18 - vec2(1.0);
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f18, f19), 0.0, 1.0));
    vec3 f23 = mix(f17.xyz, f22.xyz, vec3(f5));
    vec2 f24 = f23.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f25 = f23;
    f25.x = f24.x;
    vec3 f26 = f25;
    f26.y = f24.y;
    vec2 f27 = f26.xy * f2;
    float f28 = f27.x;
    vec4 f29 = mix(textureGrad(SpecularMapTexture, f9, f7, f8), textureGrad(SpecularMapTexture, f10, f7, f8), f11);
    vec4 f30 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f12.w, CB2[3].w))) * f12.xyz) * (1.0 + (f28 * 0.20000000298023223876953125)), VARYING2.w);
    float f31 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f32 = VARYING6.xyz * f31;
    vec3 f33 = VARYING5.xyz * f31;
    vec3 f34 = normalize(((f32 * f28) + (cross(f33, f32) * f27.y)) + (f33 * f23.z));
    vec3 f35 = -CB0[11].xyz;
    float f36 = dot(f34, f35);
    vec3 f37 = f30.xyz;
    vec3 f38 = f37 * f37;
    vec4 f39 = f30;
    f39.x = f38.x;
    vec4 f40 = f39;
    f40.y = f38.y;
    vec4 f41 = f40;
    f41.z = f38.z;
    vec3 f42 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f43 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f44 = VARYING3.yzx - (VARYING3.yzx * f43);
    vec4 f45 = texture(LightMapTexture, f44);
    vec4 f46 = texture(LightGridSkylightTexture, f44);
    vec4 f47 = vec4(clamp(f43, 0.0, 1.0));
    vec4 f48 = mix(f45, vec4(0.0), f47);
    vec4 f49 = mix(f46, vec4(1.0), f47);
    float f50 = f49.x;
    float f51 = f49.y;
    vec3 f52 = f42 - CB0[41].xyz;
    vec3 f53 = f42 - CB0[42].xyz;
    vec3 f54 = f42 - CB0[43].xyz;
    vec4 f55 = vec4(f42, 1.0) * mat4(CB8[((dot(f52, f52) < CB0[41].w) ? 0 : ((dot(f53, f53) < CB0[42].w) ? 1 : ((dot(f54, f54) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f52, f52) < CB0[41].w) ? 0 : ((dot(f53, f53) < CB0[42].w) ? 1 : ((dot(f54, f54) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f52, f52) < CB0[41].w) ? 0 : ((dot(f53, f53) < CB0[42].w) ? 1 : ((dot(f54, f54) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f52, f52) < CB0[41].w) ? 0 : ((dot(f53, f53) < CB0[42].w) ? 1 : ((dot(f54, f54) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f56 = textureLod(ShadowAtlasTexture, f55.xy, 0.0);
    vec2 f57 = vec2(0.0);
    f57.x = CB0[46].z;
    vec2 f58 = f57;
    f58.y = CB0[46].w;
    float f59 = (2.0 * f55.z) - 1.0;
    float f60 = exp(CB0[46].z * f59);
    float f61 = -exp((-CB0[46].w) * f59);
    vec2 f62 = (f58 * CB0[47].y) * vec2(f60, f61);
    vec2 f63 = f62 * f62;
    float f64 = f56.x;
    float f65 = max(f56.y - (f64 * f64), f63.x);
    float f66 = f60 - f64;
    float f67 = f56.z;
    float f68 = max(f56.w - (f67 * f67), f63.y);
    float f69 = f61 - f67;
    float f70 = CB0[26].w * f2;
    float f71 = 0.08900000154972076416015625 + (f29.y * 0.9110000133514404296875);
    vec3 f72 = reflect(-f1, f34);
    float f73 = f71 * 5.0;
    vec3 f74 = vec4(f72, f73).xyz;
    vec3 f75 = textureLod(PrefilteredEnvIndoorTexture, f74, f73).xyz;
    vec3 f76;
    if (CB0[27].w == 0.0)
    {
        f76 = f75;
    }
    else
    {
        f76 = mix(f75, textureLod(PrefilteredEnvBlendTargetTexture, f74, f73).xyz, vec3(CB0[27].w));
    }
    vec4 f77 = texture(PrecomputedBRDFTexture, vec2(f71, max(9.9999997473787516355514526367188e-05, dot(f34, f1))));
    float f78 = f29.x * f70;
    vec3 f79 = mix(vec3(0.039999999105930328369140625), f41.xyz, vec3(f78));
    vec3 f80 = normalize(f1 - CB0[11].xyz);
    float f81 = clamp((f36 * CB0[9].w) * (((f36 * CB0[47].x) > 0.0) ? mix(min((f60 <= f64) ? 1.0 : clamp(((f65 / (f65 + (f66 * f66))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f61 <= f67) ? 1.0 : clamp(((f68 / (f68 + (f69 * f69))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f51, clamp((length(f42 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f51), 0.0, 1.0);
    float f82 = f71 * f71;
    float f83 = max(0.001000000047497451305389404296875, dot(f34, f80));
    float f84 = dot(f35, f80);
    float f85 = 1.0 - f84;
    float f86 = f85 * f85;
    float f87 = (f86 * f86) * f85;
    vec3 f88 = vec3(f87) + (f79 * (1.0 - f87));
    float f89 = f82 * f82;
    float f90 = (((f83 * f89) - f83) * f83) + 1.0;
    float f91 = 1.0 - f78;
    float f92 = f70 * f91;
    vec3 f93 = vec3(f91);
    float f94 = f77.x;
    float f95 = f77.y;
    vec3 f96 = ((f79 * f94) + vec3(f95)) / vec3(f94 + f95);
    vec3 f97 = f34 * f34;
    bvec3 f98 = lessThan(f34, vec3(0.0));
    vec3 f99 = vec3(f98.x ? f97.x : vec3(0.0).x, f98.y ? f97.y : vec3(0.0).y, f98.z ? f97.z : vec3(0.0).z);
    vec3 f100 = f97 - f99;
    float f101 = f100.x;
    float f102 = f100.y;
    float f103 = f100.z;
    float f104 = f99.x;
    float f105 = f99.y;
    float f106 = f99.z;
    vec3 f107 = (((((((f93 - (f88 * f92)) * CB0[10].xyz) * f81) + ((f48.xyz * (f48.w * 120.0)) * 1.0)) + ((f93 - (f96 * f92)) * (((((((CB0[35].xyz * f101) + (CB0[37].xyz * f102)) + (CB0[39].xyz * f103)) + (CB0[36].xyz * f104)) + (CB0[38].xyz * f105)) + (CB0[40].xyz * f106)) + (((((((CB0[29].xyz * f101) + (CB0[31].xyz * f102)) + (CB0[33].xyz * f103)) + (CB0[30].xyz * f104)) + (CB0[32].xyz * f105)) + (CB0[34].xyz * f106)) * f50)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f50))) * f41.xyz) + ((((f88 * (((f89 + (f89 * f89)) / (((f90 * f90) * ((f84 * 3.0) + 0.5)) * ((f83 * 0.75) + 0.25))) * f81)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f76, textureLod(PrefilteredEnvTexture, f74, f73).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f72.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f50)) * f96) * f70));
    vec4 f108 = vec4(0.0);
    f108.x = f107.x;
    vec4 f109 = f108;
    f109.y = f107.y;
    vec4 f110 = f109;
    f110.z = f107.z;
    vec4 f111 = f110;
    f111.w = VARYING2.w;
    float f112 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f113 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f112) * 5.0).xyz;
    bvec3 f114 = bvec3(!(CB0[13].w == 0.0));
    vec3 f115 = mix(vec3(f114.x ? CB0[14].xyz.x : f113.x, f114.y ? CB0[14].xyz.y : f113.y, f114.z ? CB0[14].xyz.z : f113.z), f111.xyz, vec3(f112));
    vec4 f116 = f111;
    f116.x = f115.x;
    vec4 f117 = f116;
    f117.y = f115.y;
    vec4 f118 = f117;
    f118.z = f115.z;
    vec3 f119 = sqrt(clamp(f118.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f120 = f118;
    f120.x = f119.x;
    vec4 f121 = f120;
    f121.y = f119.y;
    vec4 f122 = f121;
    f122.z = f119.z;
    vec4 f123 = f122;
    f123.w = VARYING2.w;
    _entryPointOutput = f123;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$NoiseMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
