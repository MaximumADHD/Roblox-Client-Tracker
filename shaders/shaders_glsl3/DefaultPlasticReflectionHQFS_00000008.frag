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

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec2 f2 = VARYING1;
    f2.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f3 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec4 f4 = texture(NormalMapTexture, f2);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * (f3 * CB2[3].w);
    vec4 f13 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f12.x) + (cross(f16, f15) * f12.y)) + (f16 * f7));
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
    float f25 = CB0[31].w * f3;
    float f26 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f27 = reflect(-f1, f17);
    float f28 = (!(VARYING7.w == 0.0)) ? 0.0 : (f26 * 5.0);
    vec3 f29 = vec4(f27, f28).xyz;
    vec3 f30 = textureLod(PrefilteredEnvTexture, f29, f28).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f27.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f31 = textureLod(PrefilteredEnvIndoorTexture, f29, f28).xyz;
    vec3 f32;
    if (CB0[32].w == 0.0)
    {
        f32 = f31;
    }
    else
    {
        f32 = mix(f31, textureLod(PrefilteredEnvBlendTargetTexture, f29, f28).xyz, vec3(CB0[32].w));
    }
    vec4 f33 = texture(PrecomputedBRDFTexture, vec2(f26, max(9.9999997473787516355514526367188e-05, dot(f17, f1))));
    vec3 f34 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f35 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f36 = VARYING3.yzx - (VARYING3.yzx * f35);
    vec4 f37 = vec4(clamp(f35, 0.0, 1.0));
    vec4 f38 = mix(texture(LightMapTexture, f36), vec4(0.0), f37);
    vec4 f39 = mix(texture(LightGridSkylightTexture, f36), vec4(1.0), f37);
    float f40 = f39.x;
    float f41 = f39.y;
    vec3 f42 = f34 - CB0[46].xyz;
    vec3 f43 = f34 - CB0[47].xyz;
    vec3 f44 = f34 - CB0[48].xyz;
    vec4 f45 = vec4(f34, 1.0) * mat4(CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f46 = textureLod(ShadowAtlasTexture, f45.xy, 0.0);
    vec2 f47 = vec2(0.0);
    f47.x = CB0[51].z;
    vec2 f48 = f47;
    f48.y = CB0[51].w;
    float f49 = (2.0 * f45.z) - 1.0;
    float f50 = exp(CB0[51].z * f49);
    float f51 = -exp((-CB0[51].w) * f49);
    vec2 f52 = (f48 * CB0[52].y) * vec2(f50, f51);
    vec2 f53 = f52 * f52;
    float f54 = f46.x;
    float f55 = max(f46.y - (f54 * f54), f53.x);
    float f56 = f50 - f54;
    float f57 = f46.z;
    float f58 = max(f46.w - (f57 * f57), f53.y);
    float f59 = f51 - f57;
    vec3 f60 = normalize(f1 - CB0[16].xyz);
    float f61 = clamp((f19 * CB0[14].w) * (((f19 * CB0[52].x) > 0.0) ? mix(min((f50 <= f54) ? 1.0 : clamp(((f55 / (f55 + (f56 * f56))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f51 <= f57) ? 1.0 : clamp(((f58 / (f58 + (f59 * f59))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f41, clamp((length(f34 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f41), 0.0, 1.0);
    float f62 = f26 * f26;
    float f63 = max(0.001000000047497451305389404296875, dot(f17, f60));
    float f64 = dot(f18, f60);
    float f65 = 1.0 - f64;
    float f66 = f65 * f65;
    float f67 = (f66 * f66) * f65;
    vec3 f68 = vec3(f67) + (vec3(0.039999999105930328369140625) * (1.0 - f67));
    float f69 = f62 * f62;
    float f70 = (((f63 * f69) - f63) * f63) + 1.0;
    float f71 = f33.x;
    float f72 = f33.y;
    vec3 f73 = ((vec3(0.039999999105930328369140625) * f71) + vec3(f72)) / vec3(f71 + f72);
    vec3 f74 = f17 * f17;
    bvec3 f75 = lessThan(f17, vec3(0.0));
    vec3 f76 = vec3(f75.x ? f74.x : vec3(0.0).x, f75.y ? f74.y : vec3(0.0).y, f75.z ? f74.z : vec3(0.0).z);
    vec3 f77 = f74 - f76;
    float f78 = f77.x;
    float f79 = f77.y;
    float f80 = f77.z;
    float f81 = f76.x;
    float f82 = f76.y;
    float f83 = f76.z;
    vec3 f84 = ((((((f38.xyz * (f38.w * 120.0)) * 1.0) + (((vec3(1.0) - (f68 * f25)) * CB0[15].xyz) * f61)) + ((vec3(1.0) - (f73 * f25)) * (((((((CB0[40].xyz * f78) + (CB0[42].xyz * f79)) + (CB0[44].xyz * f80)) + (CB0[41].xyz * f81)) + (CB0[43].xyz * f82)) + (CB0[45].xyz * f83)) + (((((((CB0[34].xyz * f78) + (CB0[36].xyz * f79)) + (CB0[38].xyz * f80)) + (CB0[35].xyz * f81)) + (CB0[37].xyz * f82)) + (CB0[39].xyz * f83)) * f40)))) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f40))) * mix(f24.xyz, f30, vec3(VARYING7.w))) + ((((f68 * (min((f69 + (f69 * f69)) / (((f70 * f70) * ((f64 * 3.0) + 0.5)) * ((f63 * 0.75) + 0.25)), 65504.0) * f61)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f32, f30, vec3(f40)) * f73) * f25));
    vec4 f85 = vec4(0.0);
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec4 f88 = f87;
    f88.w = VARYING2.w;
    float f89 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f90 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f89) * 5.0).xyz;
    bvec3 f91 = bvec3(!(CB0[18].w == 0.0));
    vec3 f92 = mix(vec3(f91.x ? CB0[19].xyz.x : f90.x, f91.y ? CB0[19].xyz.y : f90.y, f91.z ? CB0[19].xyz.z : f90.z), f88.xyz, vec3(f89));
    vec4 f93 = f88;
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    vec3 f96 = sqrt(clamp(f95.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f97 = f95;
    f97.x = f96.x;
    vec4 f98 = f97;
    f98.y = f96.y;
    vec4 f99 = f98;
    f99.z = f96.z;
    vec4 f100 = f99;
    f100.w = VARYING2.w;
    _entryPointOutput = f100;
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
