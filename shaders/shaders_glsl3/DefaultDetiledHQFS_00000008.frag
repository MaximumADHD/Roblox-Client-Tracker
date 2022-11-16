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
    vec4 f2 = texture(NoiseMapTexture, VARYING0 * CB2[2].w);
    float f3 = f2.x * 8.0;
    float f4 = fract(f3);
    float f5 = floor(f3);
    vec2 f6 = dFdx(VARYING0);
    vec2 f7 = dFdy(VARYING0);
    vec2 f8 = sin(vec2(3.0, 7.0) * f5) + VARYING0;
    vec2 f9 = sin(vec2(3.0, 7.0) * (f5 + 1.0)) + VARYING0;
    vec4 f10 = vec4(f4);
    vec4 f11 = mix(textureGrad(DiffuseMapTexture, f8, f6, f7), textureGrad(DiffuseMapTexture, f9, f6, f7), f10);
    vec2 f12 = textureGrad(NormalMapTexture, f8, f6, f7).wy * 2.0;
    vec2 f13 = f12 - vec2(1.0);
    vec4 f14 = vec4(0.0);
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f12, f13), 0.0, 1.0));
    vec2 f17 = textureGrad(NormalMapTexture, f9, f6, f7).wy * 2.0;
    vec2 f18 = f17 - vec2(1.0);
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f17, f18), 0.0, 1.0));
    vec3 f22 = mix(f16.xyz, f21.xyz, vec3(f4));
    vec2 f23 = f22.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f24 = f22;
    f24.x = f23.x;
    vec3 f25 = f24;
    f25.y = f23.y;
    vec2 f26 = f25.xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    float f27 = f26.x;
    vec4 f28 = mix(textureGrad(SpecularMapTexture, f8, f6, f7), textureGrad(SpecularMapTexture, f9, f6, f7), f10);
    vec4 f29 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f11.w, CB2[3].w))) * f11.xyz) * (1.0 + (f27 * 0.20000000298023223876953125)), VARYING2.w);
    float f30 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f31 = VARYING6.xyz * f30;
    vec3 f32 = VARYING5.xyz * f30;
    vec3 f33 = normalize(((f31 * f27) + (cross(f32, f31) * f26.y)) + (f32 * f22.z));
    vec3 f34 = -CB0[16].xyz;
    float f35 = dot(f33, f34);
    vec3 f36 = f29.xyz;
    vec3 f37 = f36 * f36;
    vec4 f38 = f29;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    float f41 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f42 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    vec3 f43 = -f1;
    vec3 f44 = reflect(f43, f33);
    float f45 = f28.x * f41;
    vec3 f46 = mix(vec3(0.039999999105930328369140625), f40.xyz, vec3(f45));
    vec3 f47 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f48 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f49 = VARYING3.yzx - (VARYING3.yzx * f48);
    vec4 f50 = texture(LightMapTexture, f49);
    vec4 f51 = texture(LightGridSkylightTexture, f49);
    vec4 f52 = vec4(clamp(f48, 0.0, 1.0));
    vec4 f53 = mix(f50, vec4(0.0), f52);
    vec4 f54 = mix(f51, vec4(1.0), f52);
    vec3 f55 = f53.xyz * (f53.w * 120.0);
    float f56 = f54.x;
    float f57 = f54.y;
    vec3 f58 = f47 - CB0[46].xyz;
    vec3 f59 = f47 - CB0[47].xyz;
    vec3 f60 = f47 - CB0[48].xyz;
    vec4 f61 = vec4(f47, 1.0) * mat4(CB8[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
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
    float f76 = (f35 * CB0[14].w) * (((f35 * CB0[52].x) > 0.0) ? mix(min((f66 <= f70) ? 1.0 : clamp(((f71 / (f71 + (f72 * f72))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f67 <= f73) ? 1.0 : clamp(((f74 / (f74 + (f75 * f75))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f57, clamp((length(f47 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f57);
    vec3 f77;
    vec3 f78;
    if (f76 > 0.0)
    {
        vec3 f79 = normalize(f1 + f34);
        float f80 = clamp(f76, 0.0, 1.0);
        float f81 = f42 * f42;
        float f82 = max(0.001000000047497451305389404296875, dot(f33, f79));
        float f83 = dot(f34, f79);
        float f84 = 1.0 - f83;
        float f85 = f84 * f84;
        float f86 = (f85 * f85) * f84;
        vec3 f87 = vec3(f86) + (f46 * (1.0 - f86));
        float f88 = f81 * f81;
        float f89 = (((f82 * f88) - f82) * f82) + 1.0;
        float f90 = 1.0 - f45;
        f78 = f55 + (((vec3(f90) - (f87 * (f41 * f90))) * CB0[15].xyz) * f80);
        f77 = ((f87 * (((f88 + (f88 * f88)) / max(((f89 * f89) * ((f83 * 3.0) + 0.5)) * ((f82 * 0.75) + 0.25), 7.0000001869630068540573120117188e-05)) * f80)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f78 = f55;
        f77 = vec3(0.0);
    }
    float f91 = f42 * 5.0;
    vec3 f92 = vec4(f44, f91).xyz;
    vec3 f93 = textureLod(PrefilteredEnvIndoorTexture, f92, f91).xyz;
    vec3 f94;
    if (CB0[32].w == 0.0)
    {
        f94 = f93;
    }
    else
    {
        f94 = mix(f93, textureLod(PrefilteredEnvBlendTargetTexture, f92, f91).xyz, vec3(CB0[32].w));
    }
    vec4 f95 = texture(PrecomputedBRDFTexture, vec2(f42, max(9.9999997473787516355514526367188e-05, dot(f33, f1))));
    float f96 = f95.x;
    float f97 = f95.y;
    vec3 f98 = ((f46 * f96) + vec3(f97)) / vec3(f96 + f97);
    float f99 = 1.0 - f45;
    vec3 f100 = f33 * f33;
    bvec3 f101 = lessThan(f33, vec3(0.0));
    vec3 f102 = vec3(f101.x ? f100.x : vec3(0.0).x, f101.y ? f100.y : vec3(0.0).y, f101.z ? f100.z : vec3(0.0).z);
    vec3 f103 = f100 - f102;
    float f104 = f103.x;
    float f105 = f103.y;
    float f106 = f103.z;
    float f107 = f102.x;
    float f108 = f102.y;
    float f109 = f102.z;
    vec3 f110 = (((f78 + (((vec3(f99) - (f98 * (f41 * f99))) * (((((((CB0[40].xyz * f104) + (CB0[42].xyz * f105)) + (CB0[44].xyz * f106)) + (CB0[41].xyz * f107)) + (CB0[43].xyz * f108)) + (CB0[45].xyz * f109)) + (((((((CB0[34].xyz * f104) + (CB0[36].xyz * f105)) + (CB0[38].xyz * f106)) + (CB0[35].xyz * f107)) + (CB0[37].xyz * f108)) + (CB0[39].xyz * f109)) * f56))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f56 * (2.0 - CB0[14].w)))) * 1.0)) * f40.xyz) + (f77 + ((mix(f94, textureLod(PrefilteredEnvTexture, f92, f91).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f44.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f56)) * f98) * f41));
    vec4 f111 = vec4(0.0);
    f111.x = f110.x;
    vec4 f112 = f111;
    f112.y = f110.y;
    vec4 f113 = f112;
    f113.z = f110.z;
    vec4 f114 = f113;
    f114.w = VARYING2.w;
    float f115 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f116 = textureLod(PrefilteredEnvTexture, vec4(f43, 0.0).xyz, max(CB0[18].y, f115) * 5.0).xyz;
    bvec3 f117 = bvec3(!(CB0[18].w == 0.0));
    vec3 f118 = mix(vec3(f117.x ? CB0[19].xyz.x : f116.x, f117.y ? CB0[19].xyz.y : f116.y, f117.z ? CB0[19].xyz.z : f116.z), f114.xyz, vec3(f115));
    vec4 f119 = f114;
    f119.x = f118.x;
    vec4 f120 = f119;
    f120.y = f118.y;
    vec4 f121 = f120;
    f121.z = f118.z;
    vec3 f122 = sqrt(clamp(f121.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f123 = f121;
    f123.x = f122.x;
    vec4 f124 = f123;
    f124.y = f122.y;
    vec4 f125 = f124;
    f125.z = f122.z;
    vec4 f126 = f125;
    f126.w = VARYING2.w;
    _entryPointOutput = f126;
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
