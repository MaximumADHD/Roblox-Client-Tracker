#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
#include <PartMaterialParams.h>
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
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    float f2 = f0.y;
    vec4 f3 = mix(texture(DiffuseMapTexture, f1 * CB2[1].y), texture(DiffuseMapTexture, f1), vec4(clamp((f0.x * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec4 f4 = texture(NormalMapTexture, f1 * CB2[1].z);
    vec4 f5 = texture(NormalMapTexture, f1);
    vec2 f6 = mix(f4, f5, vec4(clamp((f2 * CB2[3].y) - (CB2[2].y * CB2[3].y), 0.0, 1.0))).wy * 2.0;
    vec2 f7 = f6 - vec2(1.0);
    float f8 = sqrt(clamp(1.0 + dot(vec2(1.0) - f6, f7), 0.0, 1.0));
    vec3 f9 = vec3(f7, f8);
    vec2 f10 = f9.xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f11 = f9;
    f11.x = f10.x;
    vec3 f12 = f11;
    f12.y = f10.y;
    vec2 f13 = f12.xy * f2;
    float f14 = f13.x;
    vec4 f15 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f16 = texture(SpecularMapTexture, f1);
    vec4 f17 = mix(f15, f16, vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    vec4 f18 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f3.w, CB2[3].w))) * f3.xyz) * (1.0 + (f14 * 0.20000000298023223876953125)), VARYING2.w);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f14) + (cross(f21, f20) * f13.y)) + (f21 * f8));
    vec3 f23 = -CB0[16].xyz;
    float f24 = dot(f22, f23);
    vec3 f25 = f18.xyz;
    vec3 f26 = f25 * f25;
    vec4 f27 = f18;
    f27.x = f26.x;
    vec4 f28 = f27;
    f28.y = f26.y;
    vec4 f29 = f28;
    f29.z = f26.z;
    float f30 = length(VARYING4.xyz);
    vec3 f31 = VARYING4.xyz / vec3(f30);
    float f32 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f33 = 0.08900000154972076416015625 + (f17.y * 0.9110000133514404296875);
    vec3 f34 = -f31;
    vec3 f35 = reflect(f34, f22);
    float f36 = f17.x * f32;
    vec3 f37 = mix(vec3(0.039999999105930328369140625), f29.xyz, vec3(f36));
    vec3 f38 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f39 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f40 = VARYING3.yzx - (VARYING3.yzx * f39);
    vec4 f41 = texture(LightMapTexture, f40);
    vec4 f42 = texture(LightGridSkylightTexture, f40);
    vec4 f43 = vec4(clamp(f39, 0.0, 1.0));
    vec4 f44 = mix(f41, vec4(0.0), f43);
    vec4 f45 = mix(f42, vec4(1.0), f43);
    vec3 f46 = f44.xyz * (f44.w * 120.0);
    float f47 = f45.x;
    float f48 = f45.y;
    vec3 f49 = f38 - CB0[46].xyz;
    vec3 f50 = f38 - CB0[47].xyz;
    vec3 f51 = f38 - CB0[48].xyz;
    vec4 f52 = vec4(f38, 1.0) * mat4(CB8[((dot(f49, f49) < CB0[46].w) ? 0 : ((dot(f50, f50) < CB0[47].w) ? 1 : ((dot(f51, f51) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f49, f49) < CB0[46].w) ? 0 : ((dot(f50, f50) < CB0[47].w) ? 1 : ((dot(f51, f51) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f49, f49) < CB0[46].w) ? 0 : ((dot(f50, f50) < CB0[47].w) ? 1 : ((dot(f51, f51) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f49, f49) < CB0[46].w) ? 0 : ((dot(f50, f50) < CB0[47].w) ? 1 : ((dot(f51, f51) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f53 = textureLod(ShadowAtlasTexture, f52.xy, 0.0);
    vec2 f54 = vec2(0.0);
    f54.x = CB0[52].z;
    vec2 f55 = f54;
    f55.y = CB0[52].w;
    float f56 = (2.0 * f52.z) - 1.0;
    float f57 = exp(CB0[52].z * f56);
    float f58 = -exp((-CB0[52].w) * f56);
    vec2 f59 = (f55 * CB0[53].y) * vec2(f57, f58);
    vec2 f60 = f59 * f59;
    float f61 = f53.x;
    float f62 = max(f53.y - (f61 * f61), f60.x);
    float f63 = f57 - f61;
    float f64 = f53.z;
    float f65 = max(f53.w - (f64 * f64), f60.y);
    float f66 = f58 - f64;
    float f67 = (f24 * CB0[14].w) * (((f24 * CB0[53].x) > 0.0) ? mix(min((f57 <= f61) ? 1.0 : clamp(((f62 / (f62 + (f63 * f63))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f58 <= f64) ? 1.0 : clamp(((f65 / (f65 + (f66 * f66))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f48, clamp((length(f38 - CB0[11].xyz) * CB0[52].y) - (CB0[52].x * CB0[52].y), 0.0, 1.0)) : f48);
    vec3 f68;
    vec3 f69;
    if (f67 > 0.0)
    {
        vec3 f70 = normalize(f31 + f23);
        float f71 = clamp(f67, 0.0, 1.0);
        float f72 = f33 * f33;
        float f73 = max(0.001000000047497451305389404296875, dot(f22, f70));
        float f74 = dot(f23, f70);
        float f75 = 1.0 - f74;
        float f76 = f75 * f75;
        float f77 = (f76 * f76) * f75;
        vec3 f78 = vec3(f77) + (f37 * (1.0 - f77));
        float f79 = f72 * f72;
        float f80 = (((f73 * f79) - f73) * f73) + 1.0;
        float f81 = 1.0 - f36;
        f69 = f46 + (((vec3(f81) - (f78 * (f32 * f81))) * CB0[15].xyz) * f71);
        f68 = ((f78 * (((f79 + (f79 * f79)) / (((f80 * f80) * ((f74 * 3.0) + 0.5)) * ((f73 * 0.75) + 0.25))) * f71)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f69 = f46;
        f68 = vec3(0.0);
    }
    float f82 = f33 * 5.0;
    vec3 f83 = vec4(f35, f82).xyz;
    vec3 f84 = textureLod(PrefilteredEnvIndoorTexture, f83, f82).xyz;
    vec3 f85;
    if (CB0[32].w == 0.0)
    {
        f85 = f84;
    }
    else
    {
        f85 = mix(f84, textureLod(PrefilteredEnvBlendTargetTexture, f83, f82).xyz, vec3(CB0[32].w));
    }
    vec4 f86 = texture(PrecomputedBRDFTexture, vec2(f33, max(9.9999997473787516355514526367188e-05, dot(f22, f31))));
    float f87 = f86.x;
    float f88 = f86.y;
    vec3 f89 = ((f37 * f87) + vec3(f88)) / vec3(f87 + f88);
    float f90 = 1.0 - f36;
    vec3 f91 = f22 * f22;
    bvec3 f92 = lessThan(f22, vec3(0.0));
    vec3 f93 = vec3(f92.x ? f91.x : vec3(0.0).x, f92.y ? f91.y : vec3(0.0).y, f92.z ? f91.z : vec3(0.0).z);
    vec3 f94 = f91 - f93;
    float f95 = f94.x;
    float f96 = f94.y;
    float f97 = f94.z;
    float f98 = f93.x;
    float f99 = f93.y;
    float f100 = f93.z;
    vec3 f101 = (((f69 + (((vec3(f90) - (f89 * (f32 * f90))) * (((((((CB0[40].xyz * f95) + (CB0[42].xyz * f96)) + (CB0[44].xyz * f97)) + (CB0[41].xyz * f98)) + (CB0[43].xyz * f99)) + (CB0[45].xyz * f100)) + (((((((CB0[34].xyz * f95) + (CB0[36].xyz * f96)) + (CB0[38].xyz * f97)) + (CB0[35].xyz * f98)) + (CB0[37].xyz * f99)) + (CB0[39].xyz * f100)) * f47))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f47 * (2.0 - CB0[14].w)))) * 1.0)) * f29.xyz) + (f68 + ((mix(f85, textureLod(PrefilteredEnvTexture, f83, f82).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f35.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f47)) * f89) * f32));
    vec4 f102 = vec4(0.0);
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    vec4 f105 = f104;
    f105.w = VARYING2.w;
    float f106 = clamp(exp2((CB0[18].z * f30) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f107 = textureLod(PrefilteredEnvTexture, vec4(f34, 0.0).xyz, max(CB0[18].y, f106) * 5.0).xyz;
    bvec3 f108 = bvec3(!(CB0[18].w == 0.0));
    vec3 f109 = mix(vec3(f108.x ? CB0[19].xyz.x : f107.x, f108.y ? CB0[19].xyz.y : f107.y, f108.z ? CB0[19].xyz.z : f107.z), f105.xyz, vec3(f106));
    vec4 f110 = f105;
    f110.x = f109.x;
    vec4 f111 = f110;
    f111.y = f109.y;
    vec4 f112 = f111;
    f112.z = f109.z;
    vec3 f113 = sqrt(clamp(f112.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
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
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
