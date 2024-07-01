#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
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
    vec2 f0 = VARYING0 * CB2[0].x;
    vec4 f1 = texture(DiffuseMapTexture, f0);
    vec4 f2 = texture(NormalMapTexture, f0);
    vec2 f3 = f2.wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    float f5 = sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0));
    vec3 f6 = vec3(f4, f5);
    vec2 f7 = f6.xy + (vec3((texture(NormalDetailMapTexture, f0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f8 = f6;
    f8.x = f7.x;
    vec3 f9 = f8;
    f9.y = f7.y;
    vec2 f10 = f9.xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    float f11 = f10.x;
    vec4 f12 = texture(SpecularMapTexture, f0);
    vec4 f13 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f1.w, CB2[3].w))) * f1.xyz) * (1.0 + (f11 * 0.20000000298023223876953125)), VARYING2.w);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f11) + (cross(f16, f15) * f10.y)) + (f16 * f5));
    vec3 f18 = -CB0[16].xyz;
    float f19 = dot(f17, f18);
    vec3 f20 = f13.xyz;
    vec3 f21 = f20 * f20;
    vec4 f22 = f13;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    float f25 = length(VARYING4.xyz);
    vec3 f26 = VARYING4.xyz / vec3(f25);
    float f27 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f28 = 0.08900000154972076416015625 + (f12.y * 0.9110000133514404296875);
    vec3 f29 = -f26;
    vec3 f30 = reflect(f29, f17);
    float f31 = f12.x * f27;
    vec3 f32 = mix(vec3(0.039999999105930328369140625), f24.xyz, vec3(f31));
    vec3 f33 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f34 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f35 = VARYING3.yzx - (VARYING3.yzx * f34);
    vec4 f36 = texture(LightMapTexture, f35);
    vec4 f37 = texture(LightGridSkylightTexture, f35);
    vec4 f38 = vec4(clamp(f34, 0.0, 1.0));
    vec4 f39 = mix(f36, vec4(0.0), f38);
    vec4 f40 = mix(f37, vec4(1.0), f38);
    vec3 f41 = f39.xyz * (f39.w * 120.0);
    float f42 = f40.x;
    float f43 = f40.y;
    vec3 f44 = f33 - CB0[46].xyz;
    vec3 f45 = f33 - CB0[47].xyz;
    vec3 f46 = f33 - CB0[48].xyz;
    vec4 f47 = vec4(f33, 1.0) * mat4(CB8[((dot(f44, f44) < CB0[46].w) ? 0 : ((dot(f45, f45) < CB0[47].w) ? 1 : ((dot(f46, f46) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f44, f44) < CB0[46].w) ? 0 : ((dot(f45, f45) < CB0[47].w) ? 1 : ((dot(f46, f46) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f44, f44) < CB0[46].w) ? 0 : ((dot(f45, f45) < CB0[47].w) ? 1 : ((dot(f46, f46) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f44, f44) < CB0[46].w) ? 0 : ((dot(f45, f45) < CB0[47].w) ? 1 : ((dot(f46, f46) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f48 = textureLod(ShadowAtlasTexture, f47.xy, 0.0);
    vec2 f49 = vec2(0.0);
    f49.x = CB0[52].z;
    vec2 f50 = f49;
    f50.y = CB0[52].w;
    float f51 = (2.0 * f47.z) - 1.0;
    float f52 = exp(CB0[52].z * f51);
    float f53 = -exp((-CB0[52].w) * f51);
    vec2 f54 = (f50 * CB0[53].y) * vec2(f52, f53);
    vec2 f55 = f54 * f54;
    float f56 = f48.x;
    float f57 = max(f48.y - (f56 * f56), f55.x);
    float f58 = f52 - f56;
    float f59 = f48.z;
    float f60 = max(f48.w - (f59 * f59), f55.y);
    float f61 = f53 - f59;
    float f62 = (f19 * CB0[14].w) * (((f19 * CB0[53].x) > 0.0) ? mix(min((f52 <= f56) ? 1.0 : clamp(((f57 / (f57 + (f58 * f58))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f53 <= f59) ? 1.0 : clamp(((f60 / (f60 + (f61 * f61))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f43, clamp((length(f33 - CB0[11].xyz) * CB0[52].y) - (CB0[52].x * CB0[52].y), 0.0, 1.0)) : f43);
    vec3 f63;
    vec3 f64;
    if (f62 > 0.0)
    {
        vec3 f65 = normalize(f26 + f18);
        float f66 = clamp(f62, 0.0, 1.0);
        float f67 = f28 * f28;
        float f68 = max(0.001000000047497451305389404296875, dot(f17, f65));
        float f69 = dot(f18, f65);
        float f70 = 1.0 - f69;
        float f71 = f70 * f70;
        float f72 = (f71 * f71) * f70;
        vec3 f73 = vec3(f72) + (f32 * (1.0 - f72));
        float f74 = f67 * f67;
        float f75 = (((f68 * f74) - f68) * f68) + 1.0;
        float f76 = 1.0 - f31;
        f64 = f41 + (((vec3(f76) - (f73 * (f27 * f76))) * CB0[15].xyz) * f66);
        f63 = ((f73 * (((f74 + (f74 * f74)) / (((f75 * f75) * ((f69 * 3.0) + 0.5)) * ((f68 * 0.75) + 0.25))) * f66)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f64 = f41;
        f63 = vec3(0.0);
    }
    float f77 = f28 * 5.0;
    vec3 f78 = vec4(f30, f77).xyz;
    vec3 f79 = textureLod(PrefilteredEnvIndoorTexture, f78, f77).xyz;
    vec3 f80;
    if (CB0[32].w == 0.0)
    {
        f80 = f79;
    }
    else
    {
        f80 = mix(f79, textureLod(PrefilteredEnvBlendTargetTexture, f78, f77).xyz, vec3(CB0[32].w));
    }
    vec4 f81 = texture(PrecomputedBRDFTexture, vec2(f28, max(9.9999997473787516355514526367188e-05, dot(f17, f26))));
    float f82 = f81.x;
    float f83 = f81.y;
    vec3 f84 = ((f32 * f82) + vec3(f83)) / vec3(f82 + f83);
    float f85 = 1.0 - f31;
    vec3 f86 = f17 * f17;
    bvec3 f87 = lessThan(f17, vec3(0.0));
    vec3 f88 = vec3(f87.x ? f86.x : vec3(0.0).x, f87.y ? f86.y : vec3(0.0).y, f87.z ? f86.z : vec3(0.0).z);
    vec3 f89 = f86 - f88;
    float f90 = f89.x;
    float f91 = f89.y;
    float f92 = f89.z;
    float f93 = f88.x;
    float f94 = f88.y;
    float f95 = f88.z;
    vec3 f96 = (((f64 + (((vec3(f85) - (f84 * (f27 * f85))) * (((((((CB0[40].xyz * f90) + (CB0[42].xyz * f91)) + (CB0[44].xyz * f92)) + (CB0[41].xyz * f93)) + (CB0[43].xyz * f94)) + (CB0[45].xyz * f95)) + (((((((CB0[34].xyz * f90) + (CB0[36].xyz * f91)) + (CB0[38].xyz * f92)) + (CB0[35].xyz * f93)) + (CB0[37].xyz * f94)) + (CB0[39].xyz * f95)) * f42))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f42 * (2.0 - CB0[14].w)))) * 1.0)) * f24.xyz) + (f63 + ((mix(f80, textureLod(PrefilteredEnvTexture, f78, f77).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f42)) * f84) * f27));
    vec4 f97 = vec4(0.0);
    f97.x = f96.x;
    vec4 f98 = f97;
    f98.y = f96.y;
    vec4 f99 = f98;
    f99.z = f96.z;
    vec4 f100 = f99;
    f100.w = VARYING2.w;
    float f101 = clamp(exp2((CB0[18].z * f25) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f102 = textureLod(PrefilteredEnvTexture, vec4(f29, 0.0).xyz, max(CB0[18].y, f101) * 5.0).xyz;
    bvec3 f103 = bvec3(!(CB0[18].w == 0.0));
    vec3 f104 = mix(vec3(f103.x ? CB0[19].xyz.x : f102.x, f103.y ? CB0[19].xyz.y : f102.y, f103.z ? CB0[19].xyz.z : f102.z), f100.xyz, vec3(f101));
    vec4 f105 = f100;
    f105.x = f104.x;
    vec4 f106 = f105;
    f106.y = f104.y;
    vec4 f107 = f106;
    f107.z = f104.z;
    vec3 f108 = sqrt(clamp(f107.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f109 = f107;
    f109.x = f108.x;
    vec4 f110 = f109;
    f110.y = f108.y;
    vec4 f111 = f110;
    f111.z = f108.z;
    vec4 f112 = f111;
    f112.w = VARYING2.w;
    _entryPointOutput = f112;
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
