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
uniform sampler2D WangTileMapTexture;
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
    vec2 f3 = VARYING0 * CB2[0].x;
    vec4 f4 = texture(WangTileMapTexture, f3 * CB2[3].w);
    float f5 = f4.x * 8.0;
    float f6 = fract(f5);
    float f7 = floor(f5);
    vec2 f8 = dFdx(f3);
    vec2 f9 = dFdy(f3);
    vec2 f10 = sin(vec2(3.0, 7.0) * f7) + f3;
    vec2 f11 = sin(vec2(3.0, 7.0) * (f7 + 1.0)) + f3;
    vec4 f12 = vec4(f6);
    vec4 f13 = mix(textureGrad(DiffuseMapTexture, f10, f8, f9), textureGrad(DiffuseMapTexture, f11, f8, f9), f12);
    vec2 f14 = textureGrad(NormalMapTexture, f10, f8, f9).wy * 2.0;
    vec2 f15 = f14 - vec2(1.0);
    vec2 f16 = textureGrad(NormalMapTexture, f11, f8, f9).wy * 2.0;
    vec2 f17 = f16 - vec2(1.0);
    vec3 f18 = mix(vec3(f15, sqrt(clamp(1.0 + dot(vec2(1.0) - f14, f15), 0.0, 1.0))).xyz, vec3(f17, sqrt(clamp(1.0 + dot(vec2(1.0) - f16, f17), 0.0, 1.0))).xyz, vec3(f6));
    vec4 f19 = texture(NormalDetailMapTexture, f3 * CB2[0].w);
    vec2 f20 = (f18.xy + (vec3((f19.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f2;
    float f21 = f20.x;
    vec4 f22 = mix(textureGrad(SpecularMapTexture, f10, f8, f9), textureGrad(SpecularMapTexture, f11, f8, f9), f12);
    float f23 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f24 = VARYING6.xyz * f23;
    vec3 f25 = VARYING5.xyz * f23;
    vec3 f26 = normalize(((f24 * f21) + (cross(f25, f24) * f20.y)) + (f25 * f18.z));
    vec3 f27 = -CB0[11].xyz;
    float f28 = dot(f26, f27);
    vec3 f29 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f13.w + CB2[2].w, 0.0, 1.0))) * f13.xyz) * (1.0 + (f21 * CB2[0].z)), VARYING2.w).xyz;
    vec3 f30 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f31 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f32 = VARYING3.yzx - (VARYING3.yzx * f31);
    vec4 f33 = texture(LightMapTexture, f32);
    vec4 f34 = texture(LightGridSkylightTexture, f32);
    vec4 f35 = vec4(clamp(f31, 0.0, 1.0));
    vec4 f36 = mix(f33, vec4(0.0), f35);
    vec4 f37 = mix(f34, vec4(1.0), f35);
    float f38 = f37.x;
    float f39 = f37.y;
    vec3 f40 = f30 - CB0[41].xyz;
    vec3 f41 = f30 - CB0[42].xyz;
    vec3 f42 = f30 - CB0[43].xyz;
    vec4 f43 = vec4(f30, 1.0) * mat4(CB8[((dot(f40, f40) < CB0[41].w) ? 0 : ((dot(f41, f41) < CB0[42].w) ? 1 : ((dot(f42, f42) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f40, f40) < CB0[41].w) ? 0 : ((dot(f41, f41) < CB0[42].w) ? 1 : ((dot(f42, f42) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f40, f40) < CB0[41].w) ? 0 : ((dot(f41, f41) < CB0[42].w) ? 1 : ((dot(f42, f42) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f40, f40) < CB0[41].w) ? 0 : ((dot(f41, f41) < CB0[42].w) ? 1 : ((dot(f42, f42) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f44 = textureLod(ShadowAtlasTexture, f43.xy, 0.0);
    vec2 f45 = vec2(0.0);
    f45.x = CB0[46].z;
    vec2 f46 = f45;
    f46.y = CB0[46].w;
    float f47 = (2.0 * f43.z) - 1.0;
    float f48 = exp(CB0[46].z * f47);
    float f49 = -exp((-CB0[46].w) * f47);
    vec2 f50 = (f46 * CB0[47].y) * vec2(f48, f49);
    vec2 f51 = f50 * f50;
    float f52 = f44.x;
    float f53 = max(f44.y - (f52 * f52), f51.x);
    float f54 = f48 - f52;
    float f55 = f44.z;
    float f56 = max(f44.w - (f55 * f55), f51.y);
    float f57 = f49 - f55;
    vec3 f58 = (f29 * f29).xyz;
    float f59 = CB0[26].w * f2;
    float f60 = max(f22.y, 0.04500000178813934326171875);
    vec3 f61 = reflect(-f1, f26);
    float f62 = f60 * 5.0;
    vec3 f63 = vec4(f61, f62).xyz;
    vec3 f64 = textureLod(PrefilteredEnvIndoorTexture, f63, f62).xyz;
    vec3 f65;
    if (CB0[27].w == 0.0)
    {
        f65 = f64;
    }
    else
    {
        f65 = mix(f64, textureLod(PrefilteredEnvBlendTargetTexture, f63, f62).xyz, vec3(CB0[27].w));
    }
    vec4 f66 = texture(PrecomputedBRDFTexture, vec2(f60, max(9.9999997473787516355514526367188e-05, dot(f26, f1))));
    float f67 = f22.x * f59;
    vec3 f68 = mix(vec3(0.039999999105930328369140625), f58, vec3(f67));
    vec3 f69 = normalize(f27 + f1);
    float f70 = clamp(f28 * (((f28 * CB0[47].x) > 0.0) ? mix(min((f48 <= f52) ? 1.0 : clamp(((f53 / (f53 + (f54 * f54))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f49 <= f55) ? 1.0 : clamp(((f56 / (f56 + (f57 * f57))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f39, clamp((length(f30 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f39), 0.0, 1.0);
    float f71 = f60 * f60;
    float f72 = max(0.001000000047497451305389404296875, dot(f26, f69));
    float f73 = dot(f27, f69);
    float f74 = 1.0 - f73;
    float f75 = f74 * f74;
    float f76 = (f75 * f75) * f74;
    vec3 f77 = vec3(f76) + (f68 * (1.0 - f76));
    float f78 = f71 * f71;
    float f79 = (((f72 * f78) - f72) * f72) + 1.0;
    float f80 = 1.0 - f67;
    float f81 = f59 * f80;
    vec3 f82 = vec3(f80);
    float f83 = f66.x;
    float f84 = f66.y;
    vec3 f85 = ((f68 * f83) + vec3(f84)) / vec3(f83 + f84);
    vec3 f86 = f26 * f26;
    bvec3 f87 = lessThan(f26, vec3(0.0));
    vec3 f88 = vec3(f87.x ? f86.x : vec3(0.0).x, f87.y ? f86.y : vec3(0.0).y, f87.z ? f86.z : vec3(0.0).z);
    vec3 f89 = f86 - f88;
    float f90 = f89.x;
    float f91 = f89.y;
    float f92 = f89.z;
    float f93 = f88.x;
    float f94 = f88.y;
    float f95 = f88.z;
    vec3 f96 = (((((((f82 - (f77 * f81)) * CB0[10].xyz) * f70) + ((f36.xyz * (f36.w * 120.0)).xyz * 1.0)) + ((f82 - (f85 * f81)) * (((((((CB0[35].xyz * f90) + (CB0[37].xyz * f91)) + (CB0[39].xyz * f92)) + (CB0[36].xyz * f93)) + (CB0[38].xyz * f94)) + (CB0[40].xyz * f95)) + (((((((CB0[29].xyz * f90) + (CB0[31].xyz * f91)) + (CB0[33].xyz * f92)) + (CB0[30].xyz * f93)) + (CB0[32].xyz * f94)) + (CB0[34].xyz * f95)) * f38)))) + (CB0[27].xyz + (CB0[28].xyz * f38))) * f58) + (((f77 * (((f78 + (f78 * f78)) / (((f79 * f79) * ((f73 * 3.0) + 0.5)) * ((f72 * 0.75) + 0.25))) * f70)) * CB0[10].xyz) + ((mix(f65, textureLod(PrefilteredEnvTexture, f63, f62).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f61.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f38)) * f85) * f59));
    vec4 f97 = vec4(f96.x, f96.y, f96.z, vec4(0.0).w);
    f97.w = VARYING2.w;
    float f98 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f99 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f98) * 5.0).xyz;
    bvec3 f100 = bvec3(!(CB0[13].w == 0.0));
    vec3 f101 = sqrt(clamp(mix(vec3(f100.x ? CB0[14].xyz.x : f99.x, f100.y ? CB0[14].xyz.y : f99.y, f100.z ? CB0[14].xyz.z : f99.z), f97.xyz, vec3(f98)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f102 = vec4(f101.x, f101.y, f101.z, f97.w);
    f102.w = VARYING2.w;
    _entryPointOutput = f102;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
