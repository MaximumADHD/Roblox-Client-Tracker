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
    vec4 f5 = texture(NormalMapTexture, f3);
    vec2 f6 = f5.wy * 2.0;
    vec2 f7 = f6 - vec2(1.0);
    float f8 = sqrt(clamp(1.0 + dot(vec2(1.0) - f6, f7), 0.0, 1.0));
    vec3 f9 = vec3(f7, f8);
    vec2 f10 = f9.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f11 = f9;
    f11.x = f10.x;
    vec3 f12 = f11;
    f12.y = f10.y;
    vec2 f13 = f12.xy * f2;
    float f14 = f13.x;
    vec4 f15 = texture(SpecularMapTexture, f3);
    vec4 f16 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f4.w, CB2[3].w))) * f4.xyz) * (1.0 + (f14 * 0.20000000298023223876953125)), VARYING2.w);
    float f17 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f18 = VARYING6.xyz * f17;
    vec3 f19 = VARYING5.xyz * f17;
    vec3 f20 = normalize(((f18 * f14) + (cross(f19, f18) * f13.y)) + (f19 * f8));
    vec3 f21 = -CB0[16].xyz;
    float f22 = dot(f20, f21);
    vec3 f23 = f16.xyz;
    vec3 f24 = f23 * f23;
    vec4 f25 = f16;
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    float f28 = CB0[31].w * f2;
    float f29 = 0.08900000154972076416015625 + (f15.y * 0.9110000133514404296875);
    vec3 f30 = reflect(-f1, f20);
    float f31 = f15.x * f28;
    vec3 f32 = mix(vec3(0.039999999105930328369140625), f27.xyz, vec3(f31));
    vec3 f33 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f34 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f35 = VARYING3.yzx - (VARYING3.yzx * f34);
    vec4 f36 = texture(LightMapTexture, f35);
    vec4 f37 = texture(LightGridSkylightTexture, f35);
    vec4 f38 = vec4(clamp(f34, 0.0, 1.0));
    vec4 f39 = mix(f36, vec4(0.0), f38);
    vec4 f40 = mix(f37, vec4(1.0), f38);
    float f41 = f40.x;
    float f42 = f40.y;
    vec3 f43 = f33 - CB0[46].xyz;
    vec3 f44 = f33 - CB0[47].xyz;
    vec3 f45 = f33 - CB0[48].xyz;
    vec4 f46 = vec4(f33, 1.0) * mat4(CB8[((dot(f43, f43) < CB0[46].w) ? 0 : ((dot(f44, f44) < CB0[47].w) ? 1 : ((dot(f45, f45) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f43, f43) < CB0[46].w) ? 0 : ((dot(f44, f44) < CB0[47].w) ? 1 : ((dot(f45, f45) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f43, f43) < CB0[46].w) ? 0 : ((dot(f44, f44) < CB0[47].w) ? 1 : ((dot(f45, f45) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f43, f43) < CB0[46].w) ? 0 : ((dot(f44, f44) < CB0[47].w) ? 1 : ((dot(f45, f45) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f47 = textureLod(ShadowAtlasTexture, f46.xy, 0.0);
    vec2 f48 = vec2(0.0);
    f48.x = CB0[51].z;
    vec2 f49 = f48;
    f49.y = CB0[51].w;
    float f50 = (2.0 * f46.z) - 1.0;
    float f51 = exp(CB0[51].z * f50);
    float f52 = -exp((-CB0[51].w) * f50);
    vec2 f53 = (f49 * CB0[52].y) * vec2(f51, f52);
    vec2 f54 = f53 * f53;
    float f55 = f47.x;
    float f56 = max(f47.y - (f55 * f55), f54.x);
    float f57 = f51 - f55;
    float f58 = f47.z;
    float f59 = max(f47.w - (f58 * f58), f54.y);
    float f60 = f52 - f58;
    vec3 f61 = normalize(f1 - CB0[16].xyz);
    float f62 = clamp((f22 * CB0[14].w) * (((f22 * CB0[52].x) > 0.0) ? mix(min((f51 <= f55) ? 1.0 : clamp(((f56 / (f56 + (f57 * f57))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f52 <= f58) ? 1.0 : clamp(((f59 / (f59 + (f60 * f60))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f42, clamp((length(f33 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f42), 0.0, 1.0);
    float f63 = f29 * f29;
    float f64 = max(0.001000000047497451305389404296875, dot(f20, f61));
    float f65 = dot(f21, f61);
    float f66 = 1.0 - f65;
    float f67 = f66 * f66;
    float f68 = (f67 * f67) * f66;
    vec3 f69 = vec3(f68) + (f32 * (1.0 - f68));
    float f70 = f63 * f63;
    float f71 = (((f64 * f70) - f64) * f64) + 1.0;
    float f72 = 1.0 - f31;
    float f73 = f28 * f72;
    vec3 f74 = vec3(f72);
    float f75 = f29 * 5.0;
    vec3 f76 = vec4(f30, f75).xyz;
    vec3 f77 = textureLod(PrefilteredEnvIndoorTexture, f76, f75).xyz;
    vec3 f78;
    if (CB0[32].w == 0.0)
    {
        f78 = f77;
    }
    else
    {
        f78 = mix(f77, textureLod(PrefilteredEnvBlendTargetTexture, f76, f75).xyz, vec3(CB0[32].w));
    }
    vec4 f79 = texture(PrecomputedBRDFTexture, vec2(f29, max(9.9999997473787516355514526367188e-05, dot(f20, f1))));
    float f80 = f79.x;
    float f81 = f79.y;
    vec3 f82 = ((f32 * f80) + vec3(f81)) / vec3(f80 + f81);
    vec3 f83 = f20 * f20;
    bvec3 f84 = lessThan(f20, vec3(0.0));
    vec3 f85 = vec3(f84.x ? f83.x : vec3(0.0).x, f84.y ? f83.y : vec3(0.0).y, f84.z ? f83.z : vec3(0.0).z);
    vec3 f86 = f83 - f85;
    float f87 = f86.x;
    float f88 = f86.y;
    float f89 = f86.z;
    float f90 = f85.x;
    float f91 = f85.y;
    float f92 = f85.z;
    vec3 f93 = ((((((f39.xyz * (f39.w * 120.0)) * 1.0) + (((f74 - (f69 * f73)) * CB0[15].xyz) * f62)) + ((f74 - (f82 * f73)) * (((((((CB0[40].xyz * f87) + (CB0[42].xyz * f88)) + (CB0[44].xyz * f89)) + (CB0[41].xyz * f90)) + (CB0[43].xyz * f91)) + (CB0[45].xyz * f92)) + (((((((CB0[34].xyz * f87) + (CB0[36].xyz * f88)) + (CB0[38].xyz * f89)) + (CB0[35].xyz * f90)) + (CB0[37].xyz * f91)) + (CB0[39].xyz * f92)) * f41)))) + ((CB0[32].xyz + (CB0[33].xyz * (f41 * (2.0 - CB0[14].w)))) * 1.0)) * f27.xyz) + ((((f69 * (min((f70 + (f70 * f70)) / (((f71 * f71) * ((f65 * 3.0) + 0.5)) * ((f64 * 0.75) + 0.25)), 65504.0) * f62)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f78, textureLod(PrefilteredEnvTexture, f76, f75).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f41)) * f82) * f28));
    vec4 f94 = vec4(0.0);
    f94.x = f93.x;
    vec4 f95 = f94;
    f95.y = f93.y;
    vec4 f96 = f95;
    f96.z = f93.z;
    vec4 f97 = f96;
    f97.w = VARYING2.w;
    float f98 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f99 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f98) * 5.0).xyz;
    bvec3 f100 = bvec3(!(CB0[18].w == 0.0));
    vec3 f101 = mix(vec3(f100.x ? CB0[19].xyz.x : f99.x, f100.y ? CB0[19].xyz.y : f99.y, f100.z ? CB0[19].xyz.z : f99.z), f97.xyz, vec3(f98));
    vec4 f102 = f97;
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    vec3 f105 = sqrt(clamp(f104.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f106 = f104;
    f106.x = f105.x;
    vec4 f107 = f106;
    f107.y = f105.y;
    vec4 f108 = f107;
    f108.z = f105.z;
    vec4 f109 = f108;
    f109.w = VARYING2.w;
    _entryPointOutput = f109;
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
