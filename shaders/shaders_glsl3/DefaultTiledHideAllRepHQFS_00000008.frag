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
    vec4 f4 = mix(texture(DiffuseMapTexture, f3 * CB2[1].y), texture(DiffuseMapTexture, f3), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec4 f5 = texture(NormalMapTexture, f3 * CB2[1].z);
    vec4 f6 = texture(NormalMapTexture, f3);
    vec2 f7 = mix(f5, f6, vec4(clamp((f2 * CB2[3].y) - (CB2[2].y * CB2[3].y), 0.0, 1.0))).wy * 2.0;
    vec2 f8 = f7 - vec2(1.0);
    float f9 = sqrt(clamp(1.0 + dot(vec2(1.0) - f7, f8), 0.0, 1.0));
    vec3 f10 = vec3(f8, f9);
    vec2 f11 = f10.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f12 = f10;
    f12.x = f11.x;
    vec3 f13 = f12;
    f13.y = f11.y;
    vec2 f14 = f13.xy * f2;
    float f15 = f14.x;
    vec4 f16 = texture(SpecularMapTexture, f3 * CB2[1].w);
    vec4 f17 = texture(SpecularMapTexture, f3);
    vec4 f18 = mix(f16, f17, vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    vec4 f19 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f4.w, CB2[3].w))) * f4.xyz) * (1.0 + (f15 * 0.20000000298023223876953125)), VARYING2.w);
    float f20 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f21 = VARYING6.xyz * f20;
    vec3 f22 = VARYING5.xyz * f20;
    vec3 f23 = normalize(((f21 * f15) + (cross(f22, f21) * f14.y)) + (f22 * f9));
    vec3 f24 = -CB0[16].xyz;
    float f25 = dot(f23, f24);
    vec3 f26 = f19.xyz;
    vec3 f27 = f26 * f26;
    vec4 f28 = f19;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    float f31 = CB0[31].w * f2;
    float f32 = 0.08900000154972076416015625 + (f18.y * 0.9110000133514404296875);
    vec3 f33 = -f1;
    vec3 f34 = reflect(f33, f23);
    float f35 = f18.x * f31;
    vec3 f36 = mix(vec3(0.039999999105930328369140625), f30.xyz, vec3(f35));
    vec3 f37 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f38 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f39 = VARYING3.yzx - (VARYING3.yzx * f38);
    vec4 f40 = texture(LightMapTexture, f39);
    vec4 f41 = texture(LightGridSkylightTexture, f39);
    vec4 f42 = vec4(clamp(f38, 0.0, 1.0));
    vec4 f43 = mix(f40, vec4(0.0), f42);
    vec4 f44 = mix(f41, vec4(1.0), f42);
    float f45 = f44.x;
    float f46 = f44.y;
    vec3 f47 = f37 - CB0[46].xyz;
    vec3 f48 = f37 - CB0[47].xyz;
    vec3 f49 = f37 - CB0[48].xyz;
    vec4 f50 = vec4(f37, 1.0) * mat4(CB8[((dot(f47, f47) < CB0[46].w) ? 0 : ((dot(f48, f48) < CB0[47].w) ? 1 : ((dot(f49, f49) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f47, f47) < CB0[46].w) ? 0 : ((dot(f48, f48) < CB0[47].w) ? 1 : ((dot(f49, f49) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f47, f47) < CB0[46].w) ? 0 : ((dot(f48, f48) < CB0[47].w) ? 1 : ((dot(f49, f49) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f47, f47) < CB0[46].w) ? 0 : ((dot(f48, f48) < CB0[47].w) ? 1 : ((dot(f49, f49) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f51 = textureLod(ShadowAtlasTexture, f50.xy, 0.0);
    vec2 f52 = vec2(0.0);
    f52.x = CB0[51].z;
    vec2 f53 = f52;
    f53.y = CB0[51].w;
    float f54 = (2.0 * f50.z) - 1.0;
    float f55 = exp(CB0[51].z * f54);
    float f56 = -exp((-CB0[51].w) * f54);
    vec2 f57 = (f53 * CB0[52].y) * vec2(f55, f56);
    vec2 f58 = f57 * f57;
    float f59 = f51.x;
    float f60 = max(f51.y - (f59 * f59), f58.x);
    float f61 = f55 - f59;
    float f62 = f51.z;
    float f63 = max(f51.w - (f62 * f62), f58.y);
    float f64 = f56 - f62;
    vec3 f65 = normalize(f1 - CB0[16].xyz);
    float f66 = clamp((f25 * CB0[14].w) * (((f25 * CB0[52].x) > 0.0) ? mix(min((f55 <= f59) ? 1.0 : clamp(((f60 / (f60 + (f61 * f61))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f56 <= f62) ? 1.0 : clamp(((f63 / (f63 + (f64 * f64))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f46, clamp((length(f37 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f46), 0.0, 1.0);
    float f67 = f32 * f32;
    float f68 = max(0.001000000047497451305389404296875, dot(f23, f65));
    float f69 = dot(f24, f65);
    float f70 = 1.0 - f69;
    float f71 = f70 * f70;
    float f72 = (f71 * f71) * f70;
    vec3 f73 = vec3(f72) + (f36 * (1.0 - f72));
    float f74 = f67 * f67;
    float f75 = (((f68 * f74) - f68) * f68) + 1.0;
    float f76 = 1.0 - f35;
    float f77 = f31 * f76;
    vec3 f78 = vec3(f76);
    float f79 = f32 * 5.0;
    vec3 f80 = vec4(f34, f79).xyz;
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
    vec4 f83 = texture(PrecomputedBRDFTexture, vec2(f32, max(9.9999997473787516355514526367188e-05, dot(f23, f1))));
    float f84 = f83.x;
    float f85 = f83.y;
    vec3 f86 = ((f36 * f84) + vec3(f85)) / vec3(f84 + f85);
    vec3 f87 = f23 * f23;
    bvec3 f88 = lessThan(f23, vec3(0.0));
    vec3 f89 = vec3(f88.x ? f87.x : vec3(0.0).x, f88.y ? f87.y : vec3(0.0).y, f88.z ? f87.z : vec3(0.0).z);
    vec3 f90 = f87 - f89;
    float f91 = f90.x;
    float f92 = f90.y;
    float f93 = f90.z;
    float f94 = f89.x;
    float f95 = f89.y;
    float f96 = f89.z;
    vec3 f97 = ((((((f43.xyz * (f43.w * 120.0)) * 1.0) + (((f78 - (f73 * f77)) * CB0[15].xyz) * f66)) + ((f78 - (f86 * f77)) * (((((((CB0[40].xyz * f91) + (CB0[42].xyz * f92)) + (CB0[44].xyz * f93)) + (CB0[41].xyz * f94)) + (CB0[43].xyz * f95)) + (CB0[45].xyz * f96)) + (((((((CB0[34].xyz * f91) + (CB0[36].xyz * f92)) + (CB0[38].xyz * f93)) + (CB0[35].xyz * f94)) + (CB0[37].xyz * f95)) + (CB0[39].xyz * f96)) * f45)))) + ((CB0[32].xyz + (CB0[33].xyz * (f45 * (2.0 - CB0[14].w)))) * 1.0)) * f30.xyz) + ((((f73 * (((f74 + (f74 * f74)) / max(((f75 * f75) * ((f69 * 3.0) + 0.5)) * ((f68 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f66)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f82, textureLod(PrefilteredEnvTexture, f80, f79).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f34.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f45)) * f86) * f31));
    vec4 f98 = vec4(0.0);
    f98.x = f97.x;
    vec4 f99 = f98;
    f99.y = f97.y;
    vec4 f100 = f99;
    f100.z = f97.z;
    vec4 f101 = f100;
    f101.w = VARYING2.w;
    float f102 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f103 = textureLod(PrefilteredEnvTexture, vec4(f33, 0.0).xyz, max(CB0[18].y, f102) * 5.0).xyz;
    bvec3 f104 = bvec3(!(CB0[18].w == 0.0));
    vec3 f105 = mix(vec3(f104.x ? CB0[19].xyz.x : f103.x, f104.y ? CB0[19].xyz.y : f103.y, f104.z ? CB0[19].xyz.z : f103.z), f101.xyz, vec3(f102));
    vec4 f106 = f101;
    f106.x = f105.x;
    vec4 f107 = f106;
    f107.y = f105.y;
    vec4 f108 = f107;
    f108.z = f105.z;
    vec3 f109 = sqrt(clamp(f108.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f110 = f108;
    f110.x = f109.x;
    vec4 f111 = f110;
    f111.y = f109.y;
    vec4 f112 = f111;
    f112.z = f109.z;
    vec4 f113 = f112;
    f113.w = VARYING2.w;
    _entryPointOutput = f113;
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
