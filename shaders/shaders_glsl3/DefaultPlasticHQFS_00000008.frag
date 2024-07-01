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

in vec2 VARYING0;
in vec3 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING1.z) * 0.25;
    vec4 f1 = texture(NormalMapTexture, f0);
    vec2 f2 = f1.wy * 2.0;
    vec2 f3 = f2 - vec2(1.0);
    float f4 = sqrt(clamp(1.0 + dot(vec2(1.0) - f2, f3), 0.0, 1.0));
    vec3 f5 = vec3(f3, f4);
    vec2 f6 = f5.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f7 = f5;
    f7.x = f6.x;
    vec3 f8 = f7;
    f8.y = f6.y;
    vec2 f9 = f8.xy * (clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y * CB2[3].w);
    vec4 f10 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f0).x * 2.0), VARYING2.w);
    float f11 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f12 = VARYING6.xyz * f11;
    vec3 f13 = VARYING5.xyz * f11;
    vec3 f14 = normalize(((f12 * f9.x) + (cross(f13, f12) * f9.y)) + (f13 * f4));
    vec3 f15 = -CB0[16].xyz;
    float f16 = dot(f14, f15);
    vec3 f17 = f10.xyz;
    vec3 f18 = f17 * f17;
    vec4 f19 = f10;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = length(VARYING4.xyz);
    vec3 f23 = VARYING4.xyz / vec3(f22);
    float f24 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f25 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f26 = -f23;
    vec3 f27 = reflect(f26, f14);
    vec3 f28 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f29 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f30 = VARYING3.yzx - (VARYING3.yzx * f29);
    vec4 f31 = texture(LightMapTexture, f30);
    vec4 f32 = texture(LightGridSkylightTexture, f30);
    vec4 f33 = vec4(clamp(f29, 0.0, 1.0));
    vec4 f34 = mix(f31, vec4(0.0), f33);
    vec4 f35 = mix(f32, vec4(1.0), f33);
    vec3 f36 = f34.xyz * (f34.w * 120.0);
    float f37 = f35.x;
    float f38 = f35.y;
    vec3 f39 = f28 - CB0[46].xyz;
    vec3 f40 = f28 - CB0[47].xyz;
    vec3 f41 = f28 - CB0[48].xyz;
    vec4 f42 = vec4(f28, 1.0) * mat4(CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f43 = textureLod(ShadowAtlasTexture, f42.xy, 0.0);
    vec2 f44 = vec2(0.0);
    f44.x = CB0[52].z;
    vec2 f45 = f44;
    f45.y = CB0[52].w;
    float f46 = (2.0 * f42.z) - 1.0;
    float f47 = exp(CB0[52].z * f46);
    float f48 = -exp((-CB0[52].w) * f46);
    vec2 f49 = (f45 * CB0[53].y) * vec2(f47, f48);
    vec2 f50 = f49 * f49;
    float f51 = f43.x;
    float f52 = max(f43.y - (f51 * f51), f50.x);
    float f53 = f47 - f51;
    float f54 = f43.z;
    float f55 = max(f43.w - (f54 * f54), f50.y);
    float f56 = f48 - f54;
    float f57 = (f16 * CB0[14].w) * (((f16 * CB0[53].x) > 0.0) ? mix(min((f47 <= f51) ? 1.0 : clamp(((f52 / (f52 + (f53 * f53))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f48 <= f54) ? 1.0 : clamp(((f55 / (f55 + (f56 * f56))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f38, clamp((length(f28 - CB0[11].xyz) * CB0[52].y) - (CB0[52].x * CB0[52].y), 0.0, 1.0)) : f38);
    vec3 f58;
    vec3 f59;
    if (f57 > 0.0)
    {
        vec3 f60 = normalize(f23 + f15);
        float f61 = clamp(f57, 0.0, 1.0);
        float f62 = f25 * f25;
        float f63 = max(0.001000000047497451305389404296875, dot(f14, f60));
        float f64 = dot(f15, f60);
        float f65 = 1.0 - f64;
        float f66 = f65 * f65;
        float f67 = (f66 * f66) * f65;
        vec3 f68 = vec3(f67) + (vec3(0.039999999105930328369140625) * (1.0 - f67));
        float f69 = f62 * f62;
        float f70 = (((f63 * f69) - f63) * f63) + 1.0;
        f59 = f36 + (((vec3(1.0) - (f68 * f24)) * CB0[15].xyz) * f61);
        f58 = ((f68 * (((f69 + (f69 * f69)) / (((f70 * f70) * ((f64 * 3.0) + 0.5)) * ((f63 * 0.75) + 0.25))) * f61)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f59 = f36;
        f58 = vec3(0.0);
    }
    float f71 = f25 * 5.0;
    vec3 f72 = vec4(f27, f71).xyz;
    vec3 f73 = textureLod(PrefilteredEnvIndoorTexture, f72, f71).xyz;
    vec3 f74;
    if (CB0[32].w == 0.0)
    {
        f74 = f73;
    }
    else
    {
        f74 = mix(f73, textureLod(PrefilteredEnvBlendTargetTexture, f72, f71).xyz, vec3(CB0[32].w));
    }
    vec4 f75 = texture(PrecomputedBRDFTexture, vec2(f25, max(9.9999997473787516355514526367188e-05, dot(f14, f23))));
    float f76 = f75.x;
    float f77 = f75.y;
    vec3 f78 = ((vec3(0.039999999105930328369140625) * f76) + vec3(f77)) / vec3(f76 + f77);
    vec3 f79 = f14 * f14;
    bvec3 f80 = lessThan(f14, vec3(0.0));
    vec3 f81 = vec3(f80.x ? f79.x : vec3(0.0).x, f80.y ? f79.y : vec3(0.0).y, f80.z ? f79.z : vec3(0.0).z);
    vec3 f82 = f79 - f81;
    float f83 = f82.x;
    float f84 = f82.y;
    float f85 = f82.z;
    float f86 = f81.x;
    float f87 = f81.y;
    float f88 = f81.z;
    vec3 f89 = (((f59 + (((vec3(1.0) - (f78 * f24)) * (((((((CB0[40].xyz * f83) + (CB0[42].xyz * f84)) + (CB0[44].xyz * f85)) + (CB0[41].xyz * f86)) + (CB0[43].xyz * f87)) + (CB0[45].xyz * f88)) + (((((((CB0[34].xyz * f83) + (CB0[36].xyz * f84)) + (CB0[38].xyz * f85)) + (CB0[35].xyz * f86)) + (CB0[37].xyz * f87)) + (CB0[39].xyz * f88)) * f37))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f37 * (2.0 - CB0[14].w)))) * 1.0)) * f21.xyz) + (f58 + ((mix(f74, textureLod(PrefilteredEnvTexture, f72, f71).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f27.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f37)) * f78) * f24));
    vec4 f90 = vec4(0.0);
    f90.x = f89.x;
    vec4 f91 = f90;
    f91.y = f89.y;
    vec4 f92 = f91;
    f92.z = f89.z;
    vec4 f93 = f92;
    f93.w = VARYING2.w;
    float f94 = clamp(exp2((CB0[18].z * f22) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f95 = textureLod(PrefilteredEnvTexture, vec4(f26, 0.0).xyz, max(CB0[18].y, f94) * 5.0).xyz;
    bvec3 f96 = bvec3(!(CB0[18].w == 0.0));
    vec3 f97 = mix(vec3(f96.x ? CB0[19].xyz.x : f95.x, f96.y ? CB0[19].xyz.y : f95.y, f96.z ? CB0[19].xyz.z : f95.z), f93.xyz, vec3(f94));
    vec4 f98 = f93;
    f98.x = f97.x;
    vec4 f99 = f98;
    f99.y = f97.y;
    vec4 f100 = f99;
    f100.z = f97.z;
    vec3 f101 = sqrt(clamp(f100.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f102 = f100;
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    vec4 f105 = f104;
    f105.w = VARYING2.w;
    _entryPointOutput = f105;
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
