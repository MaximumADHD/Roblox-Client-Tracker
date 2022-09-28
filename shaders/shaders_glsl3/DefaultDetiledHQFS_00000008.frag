#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
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
    float f2 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec2 f3 = VARYING0 * CB2[0].x;
    vec4 f4 = texture(NoiseMapTexture, f3 * CB2[2].w);
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
    vec4 f16 = vec4(0.0);
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f14, f15), 0.0, 1.0));
    vec2 f19 = textureGrad(NormalMapTexture, f11, f8, f9).wy * 2.0;
    vec2 f20 = f19 - vec2(1.0);
    vec4 f21 = vec4(0.0);
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f19, f20), 0.0, 1.0));
    vec3 f24 = mix(f18.xyz, f23.xyz, vec3(f6));
    vec2 f25 = f24.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f26 = f24;
    f26.x = f25.x;
    vec3 f27 = f26;
    f27.y = f25.y;
    vec2 f28 = f27.xy * f2;
    float f29 = f28.x;
    vec4 f30 = mix(textureGrad(SpecularMapTexture, f10, f8, f9), textureGrad(SpecularMapTexture, f11, f8, f9), f12);
    vec4 f31 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f13.w, CB2[3].w))) * f13.xyz) * (1.0 + (f29 * 0.20000000298023223876953125)), VARYING2.w);
    float f32 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f33 = VARYING6.xyz * f32;
    vec3 f34 = VARYING5.xyz * f32;
    vec3 f35 = normalize(((f33 * f29) + (cross(f34, f33) * f28.y)) + (f34 * f24.z));
    vec3 f36 = -CB0[16].xyz;
    float f37 = dot(f35, f36);
    vec3 f38 = f31.xyz;
    vec3 f39 = f38 * f38;
    vec4 f40 = f31;
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    float f43 = CB0[31].w * f2;
    float f44 = 0.08900000154972076416015625 + (f30.y * 0.9110000133514404296875);
    vec3 f45 = reflect(-f1, f35);
    float f46 = f30.x * f43;
    vec3 f47 = mix(vec3(0.039999999105930328369140625), f42.xyz, vec3(f46));
    vec3 f48 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f49 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f50 = VARYING3.yzx - (VARYING3.yzx * f49);
    vec4 f51 = texture(LightMapTexture, f50);
    vec4 f52 = texture(LightGridSkylightTexture, f50);
    vec4 f53 = vec4(clamp(f49, 0.0, 1.0));
    vec4 f54 = mix(f51, vec4(0.0), f53);
    vec4 f55 = mix(f52, vec4(1.0), f53);
    float f56 = f55.x;
    float f57 = f55.y;
    vec3 f58 = f48 - CB0[46].xyz;
    vec3 f59 = f48 - CB0[47].xyz;
    vec3 f60 = f48 - CB0[48].xyz;
    vec4 f61 = vec4(f48, 1.0) * mat4(CB8[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f62 = textureLod(ShadowAtlasTexture, f61.xy, 0.0);
    vec2 f63 = vec2(0.0);
    f63.x = CB0[51].z;
    vec2 f64 = f63;
    f64.y = CB0[51].w;
    float f65 = (2.0 * f61.z) - 1.0;
    float f66 = exp(CB0[51].z * f65);
    float f67 = -exp((-CB0[51].w) * f65);
    vec2 f68 = (f64 * CB0[52].y) * vec2(f66, f67);
    vec2 f69 = f68 * f68;
    float f70 = f62.x;
    float f71 = max(f62.y - (f70 * f70), f69.x);
    float f72 = f66 - f70;
    float f73 = f62.z;
    float f74 = max(f62.w - (f73 * f73), f69.y);
    float f75 = f67 - f73;
    vec3 f76 = normalize(f1 - CB0[16].xyz);
    float f77 = clamp((f37 * CB0[14].w) * (((f37 * CB0[52].x) > 0.0) ? mix(min((f66 <= f70) ? 1.0 : clamp(((f71 / (f71 + (f72 * f72))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f67 <= f73) ? 1.0 : clamp(((f74 / (f74 + (f75 * f75))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f57, clamp((length(f48 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f57), 0.0, 1.0);
    float f78 = f44 * f44;
    float f79 = max(0.001000000047497451305389404296875, dot(f35, f76));
    float f80 = dot(f36, f76);
    float f81 = 1.0 - f80;
    float f82 = f81 * f81;
    float f83 = (f82 * f82) * f81;
    vec3 f84 = vec3(f83) + (f47 * (1.0 - f83));
    float f85 = f78 * f78;
    float f86 = (((f79 * f85) - f79) * f79) + 1.0;
    float f87 = 1.0 - f46;
    float f88 = f43 * f87;
    vec3 f89 = vec3(f87);
    float f90 = f44 * 5.0;
    vec3 f91 = vec4(f45, f90).xyz;
    vec3 f92 = textureLod(PrefilteredEnvIndoorTexture, f91, f90).xyz;
    vec3 f93;
    if (CB0[32].w == 0.0)
    {
        f93 = f92;
    }
    else
    {
        f93 = mix(f92, textureLod(PrefilteredEnvBlendTargetTexture, f91, f90).xyz, vec3(CB0[32].w));
    }
    vec4 f94 = texture(PrecomputedBRDFTexture, vec2(f44, max(9.9999997473787516355514526367188e-05, dot(f35, f1))));
    float f95 = f94.x;
    float f96 = f94.y;
    vec3 f97 = ((f47 * f95) + vec3(f96)) / vec3(f95 + f96);
    vec3 f98 = f35 * f35;
    bvec3 f99 = lessThan(f35, vec3(0.0));
    vec3 f100 = vec3(f99.x ? f98.x : vec3(0.0).x, f99.y ? f98.y : vec3(0.0).y, f99.z ? f98.z : vec3(0.0).z);
    vec3 f101 = f98 - f100;
    float f102 = f101.x;
    float f103 = f101.y;
    float f104 = f101.z;
    float f105 = f100.x;
    float f106 = f100.y;
    float f107 = f100.z;
    vec3 f108 = ((((((f54.xyz * (f54.w * 120.0)) * 1.0) + (((f89 - (f84 * f88)) * CB0[15].xyz) * f77)) + ((f89 - (f97 * f88)) * (((((((CB0[40].xyz * f102) + (CB0[42].xyz * f103)) + (CB0[44].xyz * f104)) + (CB0[41].xyz * f105)) + (CB0[43].xyz * f106)) + (CB0[45].xyz * f107)) + (((((((CB0[34].xyz * f102) + (CB0[36].xyz * f103)) + (CB0[38].xyz * f104)) + (CB0[35].xyz * f105)) + (CB0[37].xyz * f106)) + (CB0[39].xyz * f107)) * f56)))) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f56))) * f42.xyz) + ((((f84 * (min((f85 + (f85 * f85)) / (((f86 * f86) * ((f80 * 3.0) + 0.5)) * ((f79 * 0.75) + 0.25)), 65504.0) * f77)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f93, textureLod(PrefilteredEnvTexture, f91, f90).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f45.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f56)) * f97) * f43));
    vec4 f109 = vec4(0.0);
    f109.x = f108.x;
    vec4 f110 = f109;
    f110.y = f108.y;
    vec4 f111 = f110;
    f111.z = f108.z;
    vec4 f112 = f111;
    f112.w = VARYING2.w;
    float f113 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f114 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f113) * 5.0).xyz;
    bvec3 f115 = bvec3(!(CB0[18].w == 0.0));
    vec3 f116 = mix(vec3(f115.x ? CB0[19].xyz.x : f114.x, f115.y ? CB0[19].xyz.y : f114.y, f115.z ? CB0[19].xyz.z : f114.z), f112.xyz, vec3(f113));
    vec4 f117 = f112;
    f117.x = f116.x;
    vec4 f118 = f117;
    f118.y = f116.y;
    vec4 f119 = f118;
    f119.z = f116.z;
    vec3 f120 = sqrt(clamp(f119.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f121 = f119;
    f121.x = f120.x;
    vec4 f122 = f121;
    f122.y = f120.y;
    vec4 f123 = f122;
    f123.z = f120.z;
    vec4 f124 = f123;
    f124.w = VARYING2.w;
    _entryPointOutput = f124;
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
