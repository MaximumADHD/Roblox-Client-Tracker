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
    vec4 f4 = texture(NormalMapTexture, f1);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * f2;
    float f13 = f12.x;
    vec4 f14 = texture(SpecularMapTexture, f1);
    vec4 f15 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f3.w, CB2[3].w))) * f3.xyz) * (1.0 + (f13 * 0.20000000298023223876953125)), VARYING2.w);
    float f16 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f17 = VARYING6.xyz * f16;
    vec3 f18 = VARYING5.xyz * f16;
    vec3 f19 = normalize(((f17 * f13) + (cross(f18, f17) * f12.y)) + (f18 * f7));
    vec3 f20 = -CB0[16].xyz;
    float f21 = dot(f19, f20);
    vec3 f22 = f15.xyz;
    vec3 f23 = f22 * f22;
    vec4 f24 = f15;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    float f27 = length(VARYING4.xyz);
    vec3 f28 = VARYING4.xyz / vec3(f27);
    float f29 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f30 = 0.08900000154972076416015625 + (f14.y * 0.9110000133514404296875);
    vec3 f31 = -f28;
    vec3 f32 = reflect(f31, f19);
    float f33 = f14.x * f29;
    vec3 f34 = mix(vec3(0.039999999105930328369140625), f26.xyz, vec3(f33));
    vec3 f35 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f36 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f37 = VARYING3.yzx - (VARYING3.yzx * f36);
    vec4 f38 = texture(LightMapTexture, f37);
    vec4 f39 = texture(LightGridSkylightTexture, f37);
    vec4 f40 = vec4(clamp(f36, 0.0, 1.0));
    vec4 f41 = mix(f38, vec4(0.0), f40);
    vec4 f42 = mix(f39, vec4(1.0), f40);
    vec3 f43 = f41.xyz * (f41.w * 120.0);
    float f44 = f42.x;
    float f45 = f42.y;
    vec3 f46 = f35 - CB0[46].xyz;
    vec3 f47 = f35 - CB0[47].xyz;
    vec3 f48 = f35 - CB0[48].xyz;
    vec4 f49 = vec4(f35, 1.0) * mat4(CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f50 = textureLod(ShadowAtlasTexture, f49.xy, 0.0);
    vec2 f51 = vec2(0.0);
    f51.x = CB0[52].z;
    vec2 f52 = f51;
    f52.y = CB0[52].w;
    float f53 = (2.0 * f49.z) - 1.0;
    float f54 = exp(CB0[52].z * f53);
    float f55 = -exp((-CB0[52].w) * f53);
    vec2 f56 = (f52 * CB0[53].y) * vec2(f54, f55);
    vec2 f57 = f56 * f56;
    float f58 = f50.x;
    float f59 = max(f50.y - (f58 * f58), f57.x);
    float f60 = f54 - f58;
    float f61 = f50.z;
    float f62 = max(f50.w - (f61 * f61), f57.y);
    float f63 = f55 - f61;
    float f64 = (f21 * CB0[14].w) * (((f21 * CB0[53].x) > 0.0) ? mix(min((f54 <= f58) ? 1.0 : clamp(((f59 / (f59 + (f60 * f60))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f55 <= f61) ? 1.0 : clamp(((f62 / (f62 + (f63 * f63))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f45, clamp((length(f35 - CB0[11].xyz) * CB0[52].y) - (CB0[52].x * CB0[52].y), 0.0, 1.0)) : f45);
    vec3 f65;
    vec3 f66;
    if (f64 > 0.0)
    {
        vec3 f67 = normalize(f28 + f20);
        float f68 = clamp(f64, 0.0, 1.0);
        float f69 = f30 * f30;
        float f70 = max(0.001000000047497451305389404296875, dot(f19, f67));
        float f71 = dot(f20, f67);
        float f72 = 1.0 - f71;
        float f73 = f72 * f72;
        float f74 = (f73 * f73) * f72;
        vec3 f75 = vec3(f74) + (f34 * (1.0 - f74));
        float f76 = f69 * f69;
        float f77 = (((f70 * f76) - f70) * f70) + 1.0;
        float f78 = 1.0 - f33;
        f66 = f43 + (((vec3(f78) - (f75 * (f29 * f78))) * CB0[15].xyz) * f68);
        f65 = ((f75 * (((f76 + (f76 * f76)) / (((f77 * f77) * ((f71 * 3.0) + 0.5)) * ((f70 * 0.75) + 0.25))) * f68)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f66 = f43;
        f65 = vec3(0.0);
    }
    float f79 = f30 * 5.0;
    vec3 f80 = vec4(f32, f79).xyz;
    vec3 f81 = textureLod(PrefilteredEnvIndoorTexture, f80, f79).xyz;
    vec3 f82;
    if (CB0[32].w == 0.0)
    {
        f82 = f81;
    }
    else
    {
        f82 = mix(f81, textureLod(PrefilteredEnvBlendTargetTexture, f80, f79).xyz, vec3(CB0[32].w));
    }
    vec4 f83 = texture(PrecomputedBRDFTexture, vec2(f30, max(9.9999997473787516355514526367188e-05, dot(f19, f28))));
    float f84 = f83.x;
    float f85 = f83.y;
    vec3 f86 = ((f34 * f84) + vec3(f85)) / vec3(f84 + f85);
    float f87 = 1.0 - f33;
    vec3 f88 = f19 * f19;
    bvec3 f89 = lessThan(f19, vec3(0.0));
    vec3 f90 = vec3(f89.x ? f88.x : vec3(0.0).x, f89.y ? f88.y : vec3(0.0).y, f89.z ? f88.z : vec3(0.0).z);
    vec3 f91 = f88 - f90;
    float f92 = f91.x;
    float f93 = f91.y;
    float f94 = f91.z;
    float f95 = f90.x;
    float f96 = f90.y;
    float f97 = f90.z;
    vec3 f98 = ((((f66 + (((vec3(f87) - (f86 * (f29 * f87))) * (((((((CB0[40].xyz * f92) + (CB0[42].xyz * f93)) + (CB0[44].xyz * f94)) + (CB0[41].xyz * f95)) + (CB0[43].xyz * f96)) + (CB0[45].xyz * f97)) + (((((((CB0[34].xyz * f92) + (CB0[36].xyz * f93)) + (CB0[38].xyz * f94)) + (CB0[35].xyz * f95)) + (CB0[37].xyz * f96)) + (CB0[39].xyz * f97)) * f44))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f44 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f14.z * 2.0) * f2)) * f26.xyz) + (f65 + ((mix(f82, textureLod(PrefilteredEnvTexture, f80, f79).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f32.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f44)) * f86) * f29));
    vec4 f99 = vec4(0.0);
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    vec4 f102 = f101;
    f102.w = VARYING2.w;
    float f103 = clamp(exp2((CB0[18].z * f27) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f104 = textureLod(PrefilteredEnvTexture, vec4(f31, 0.0).xyz, max(CB0[18].y, f103) * 5.0).xyz;
    bvec3 f105 = bvec3(!(CB0[18].w == 0.0));
    vec3 f106 = mix(vec3(f105.x ? CB0[19].xyz.x : f104.x, f105.y ? CB0[19].xyz.y : f104.y, f105.z ? CB0[19].xyz.z : f104.z), f102.xyz, vec3(f103));
    vec4 f107 = f102;
    f107.x = f106.x;
    vec4 f108 = f107;
    f108.y = f106.y;
    vec4 f109 = f108;
    f109.z = f106.z;
    vec3 f110 = sqrt(clamp(f109.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f111 = f109;
    f111.x = f110.x;
    vec4 f112 = f111;
    f112.y = f110.y;
    vec4 f113 = f112;
    f113.z = f110.z;
    vec4 f114 = f113;
    f114.w = VARYING2.w;
    _entryPointOutput = f114;
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
