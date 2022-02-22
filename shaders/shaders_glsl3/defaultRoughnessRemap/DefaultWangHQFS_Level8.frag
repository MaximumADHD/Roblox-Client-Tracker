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
    vec2 f4 = f3 * 4.0;
    vec4 f5 = texture(WangTileMapTexture, f4 * vec2(0.0078125));
    vec2 f6 = f4 * 0.25;
    vec2 f7 = dFdx(f6);
    vec2 f8 = dFdy(f6);
    vec4 f9 = vec4(f7, f8);
    vec2 f10 = (f5.xy * 0.99609375) + (fract(f4) * 0.25);
    vec2 f11 = f9.xy;
    vec2 f12 = f9.zw;
    vec4 f13 = textureGrad(DiffuseMapTexture, f10, f11, f12);
    vec2 f14 = textureGrad(NormalMapTexture, f10, f11, f12).wy * 2.0;
    vec2 f15 = f14 - vec2(1.0);
    float f16 = sqrt(clamp(1.0 + dot(vec2(1.0) - f14, f15), 0.0, 1.0));
    vec3 f17 = vec3(f15, f16);
    vec2 f18 = f17.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f19 = f17;
    f19.x = f18.x;
    vec3 f20 = f19;
    f20.y = f18.y;
    vec2 f21 = f20.xy * f2;
    float f22 = f21.x;
    vec4 f23 = textureGrad(SpecularMapTexture, f10, f11, f12);
    vec4 f24 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f13.w + CB2[2].w, 0.0, 1.0))) * f13.xyz) * (1.0 + (f22 * CB2[0].z)), VARYING2.w);
    float f25 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f26 = VARYING6.xyz * f25;
    vec3 f27 = VARYING5.xyz * f25;
    vec3 f28 = normalize(((f26 * f22) + (cross(f27, f26) * f21.y)) + (f27 * f16));
    vec3 f29 = -CB0[11].xyz;
    float f30 = dot(f28, f29);
    vec3 f31 = f24.xyz;
    vec3 f32 = f31 * f31;
    vec4 f33 = f24;
    f33.x = f32.x;
    vec4 f34 = f33;
    f34.y = f32.y;
    vec4 f35 = f34;
    f35.z = f32.z;
    vec3 f36 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f37 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f38 = VARYING3.yzx - (VARYING3.yzx * f37);
    vec4 f39 = texture(LightMapTexture, f38);
    vec4 f40 = texture(LightGridSkylightTexture, f38);
    vec4 f41 = vec4(clamp(f37, 0.0, 1.0));
    vec4 f42 = mix(f39, vec4(0.0), f41);
    vec4 f43 = mix(f40, vec4(1.0), f41);
    float f44 = f43.x;
    float f45 = f43.y;
    vec3 f46 = f36 - CB0[41].xyz;
    vec3 f47 = f36 - CB0[42].xyz;
    vec3 f48 = f36 - CB0[43].xyz;
    vec4 f49 = vec4(f36, 1.0) * mat4(CB8[((dot(f46, f46) < CB0[41].w) ? 0 : ((dot(f47, f47) < CB0[42].w) ? 1 : ((dot(f48, f48) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f46, f46) < CB0[41].w) ? 0 : ((dot(f47, f47) < CB0[42].w) ? 1 : ((dot(f48, f48) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f46, f46) < CB0[41].w) ? 0 : ((dot(f47, f47) < CB0[42].w) ? 1 : ((dot(f48, f48) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f46, f46) < CB0[41].w) ? 0 : ((dot(f47, f47) < CB0[42].w) ? 1 : ((dot(f48, f48) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f50 = textureLod(ShadowAtlasTexture, f49.xy, 0.0);
    vec2 f51 = vec2(0.0);
    f51.x = CB0[46].z;
    vec2 f52 = f51;
    f52.y = CB0[46].w;
    float f53 = (2.0 * f49.z) - 1.0;
    float f54 = exp(CB0[46].z * f53);
    float f55 = -exp((-CB0[46].w) * f53);
    vec2 f56 = (f52 * CB0[47].y) * vec2(f54, f55);
    vec2 f57 = f56 * f56;
    float f58 = f50.x;
    float f59 = max(f50.y - (f58 * f58), f57.x);
    float f60 = f54 - f58;
    float f61 = f50.z;
    float f62 = max(f50.w - (f61 * f61), f57.y);
    float f63 = f55 - f61;
    float f64 = CB0[26].w * f2;
    float f65 = 0.08900000154972076416015625 + (f23.y * 0.9110000133514404296875);
    vec3 f66 = reflect(-f1, f28);
    float f67 = f65 * 5.0;
    vec3 f68 = vec4(f66, f67).xyz;
    vec3 f69 = textureLod(PrefilteredEnvIndoorTexture, f68, f67).xyz;
    vec3 f70;
    if (CB0[27].w == 0.0)
    {
        f70 = f69;
    }
    else
    {
        f70 = mix(f69, textureLod(PrefilteredEnvBlendTargetTexture, f68, f67).xyz, vec3(CB0[27].w));
    }
    vec4 f71 = texture(PrecomputedBRDFTexture, vec2(f65, max(9.9999997473787516355514526367188e-05, dot(f28, f1))));
    float f72 = f23.x * f64;
    vec3 f73 = mix(vec3(0.039999999105930328369140625), f35.xyz, vec3(f72));
    vec3 f74 = normalize(f29 + f1);
    float f75 = clamp((f30 * CB0[9].w) * (((f30 * CB0[47].x) > 0.0) ? mix(min((f54 <= f58) ? 1.0 : clamp(((f59 / (f59 + (f60 * f60))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f55 <= f61) ? 1.0 : clamp(((f62 / (f62 + (f63 * f63))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f45, clamp((length(f36 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f45), 0.0, 1.0);
    float f76 = f65 * f65;
    float f77 = max(0.001000000047497451305389404296875, dot(f28, f74));
    float f78 = dot(f29, f74);
    float f79 = 1.0 - f78;
    float f80 = f79 * f79;
    float f81 = (f80 * f80) * f79;
    vec3 f82 = vec3(f81) + (f73 * (1.0 - f81));
    float f83 = f76 * f76;
    float f84 = (((f77 * f83) - f77) * f77) + 1.0;
    float f85 = 1.0 - f72;
    float f86 = f64 * f85;
    vec3 f87 = vec3(f85);
    float f88 = f71.x;
    float f89 = f71.y;
    vec3 f90 = ((f73 * f88) + vec3(f89)) / vec3(f88 + f89);
    vec3 f91 = f28 * f28;
    bvec3 f92 = lessThan(f28, vec3(0.0));
    vec3 f93 = vec3(f92.x ? f91.x : vec3(0.0).x, f92.y ? f91.y : vec3(0.0).y, f92.z ? f91.z : vec3(0.0).z);
    vec3 f94 = f91 - f93;
    float f95 = f94.x;
    float f96 = f94.y;
    float f97 = f94.z;
    float f98 = f93.x;
    float f99 = f93.y;
    float f100 = f93.z;
    vec3 f101 = (((((((f87 - (f82 * f86)) * CB0[10].xyz) * f75) + ((f42.xyz * (f42.w * 120.0)) * 1.0)) + ((f87 - (f90 * f86)) * (((((((CB0[35].xyz * f95) + (CB0[37].xyz * f96)) + (CB0[39].xyz * f97)) + (CB0[36].xyz * f98)) + (CB0[38].xyz * f99)) + (CB0[40].xyz * f100)) + (((((((CB0[29].xyz * f95) + (CB0[31].xyz * f96)) + (CB0[33].xyz * f97)) + (CB0[30].xyz * f98)) + (CB0[32].xyz * f99)) + (CB0[34].xyz * f100)) * f44)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f44))) * f35.xyz) + ((((f82 * (((f83 + (f83 * f83)) / (((f84 * f84) * ((f78 * 3.0) + 0.5)) * ((f77 * 0.75) + 0.25))) * f75)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f70, textureLod(PrefilteredEnvTexture, f68, f67).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f66.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f44)) * f90) * f64));
    vec4 f102 = vec4(0.0);
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    vec4 f105 = f104;
    f105.w = VARYING2.w;
    float f106 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f107 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f106) * 5.0).xyz;
    bvec3 f108 = bvec3(!(CB0[13].w == 0.0));
    vec3 f109 = mix(vec3(f108.x ? CB0[14].xyz.x : f107.x, f108.y ? CB0[14].xyz.y : f107.y, f108.z ? CB0[14].xyz.z : f107.z), f105.xyz, vec3(f106));
    vec4 f110 = f105;
    f110.x = f109.x;
    vec4 f111 = f110;
    f111.y = f109.y;
    vec4 f112 = f111;
    f112.z = f109.z;
    vec3 f113 = sqrt(clamp(f112.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f114 = f112;
    f114.x = f113.x;
    vec4 f115 = f114;
    f115.y = f113.y;
    vec4 f116 = f115;
    f116.z = f113.z;
    vec4 f117 = f116;
    f117.w = VARYING2.w;
    _entryPointOutput = f117;
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
