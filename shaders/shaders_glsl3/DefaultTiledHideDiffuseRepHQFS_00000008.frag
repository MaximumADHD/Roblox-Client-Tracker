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
    vec3 f30 = -f1;
    vec3 f31 = reflect(f30, f20);
    float f32 = f15.x * f28;
    vec3 f33 = mix(vec3(0.039999999105930328369140625), f27.xyz, vec3(f32));
    vec3 f34 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f35 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f36 = VARYING3.yzx - (VARYING3.yzx * f35);
    vec4 f37 = texture(LightMapTexture, f36);
    vec4 f38 = texture(LightGridSkylightTexture, f36);
    vec4 f39 = vec4(clamp(f35, 0.0, 1.0));
    vec4 f40 = mix(f37, vec4(0.0), f39);
    vec4 f41 = mix(f38, vec4(1.0), f39);
    float f42 = f41.x;
    float f43 = f41.y;
    vec3 f44 = f34 - CB0[46].xyz;
    vec3 f45 = f34 - CB0[47].xyz;
    vec3 f46 = f34 - CB0[48].xyz;
    vec4 f47 = vec4(f34, 1.0) * mat4(CB8[((dot(f44, f44) < CB0[46].w) ? 0 : ((dot(f45, f45) < CB0[47].w) ? 1 : ((dot(f46, f46) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f44, f44) < CB0[46].w) ? 0 : ((dot(f45, f45) < CB0[47].w) ? 1 : ((dot(f46, f46) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f44, f44) < CB0[46].w) ? 0 : ((dot(f45, f45) < CB0[47].w) ? 1 : ((dot(f46, f46) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f44, f44) < CB0[46].w) ? 0 : ((dot(f45, f45) < CB0[47].w) ? 1 : ((dot(f46, f46) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f48 = textureLod(ShadowAtlasTexture, f47.xy, 0.0);
    vec2 f49 = vec2(0.0);
    f49.x = CB0[51].z;
    vec2 f50 = f49;
    f50.y = CB0[51].w;
    float f51 = (2.0 * f47.z) - 1.0;
    float f52 = exp(CB0[51].z * f51);
    float f53 = -exp((-CB0[51].w) * f51);
    vec2 f54 = (f50 * CB0[52].y) * vec2(f52, f53);
    vec2 f55 = f54 * f54;
    float f56 = f48.x;
    float f57 = max(f48.y - (f56 * f56), f55.x);
    float f58 = f52 - f56;
    float f59 = f48.z;
    float f60 = max(f48.w - (f59 * f59), f55.y);
    float f61 = f53 - f59;
    vec3 f62 = normalize(f1 - CB0[16].xyz);
    float f63 = clamp((f22 * CB0[14].w) * (((f22 * CB0[52].x) > 0.0) ? mix(min((f52 <= f56) ? 1.0 : clamp(((f57 / (f57 + (f58 * f58))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f53 <= f59) ? 1.0 : clamp(((f60 / (f60 + (f61 * f61))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f43, clamp((length(f34 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f43), 0.0, 1.0);
    float f64 = f29 * f29;
    float f65 = max(0.001000000047497451305389404296875, dot(f20, f62));
    float f66 = dot(f21, f62);
    float f67 = 1.0 - f66;
    float f68 = f67 * f67;
    float f69 = (f68 * f68) * f67;
    vec3 f70 = vec3(f69) + (f33 * (1.0 - f69));
    float f71 = f64 * f64;
    float f72 = (((f65 * f71) - f65) * f65) + 1.0;
    float f73 = 1.0 - f32;
    float f74 = f28 * f73;
    vec3 f75 = vec3(f73);
    float f76 = f29 * 5.0;
    vec3 f77 = vec4(f31, f76).xyz;
    vec3 f78 = textureLod(PrefilteredEnvIndoorTexture, f77, f76).xyz;
    vec3 f79;
    if (CB0[32].w == 0.0)
    {
        f79 = f78;
    }
    else
    {
        f79 = mix(f78, textureLod(PrefilteredEnvBlendTargetTexture, f77, f76).xyz, vec3(CB0[32].w));
    }
    vec4 f80 = texture(PrecomputedBRDFTexture, vec2(f29, max(9.9999997473787516355514526367188e-05, dot(f20, f1))));
    float f81 = f80.x;
    float f82 = f80.y;
    vec3 f83 = ((f33 * f81) + vec3(f82)) / vec3(f81 + f82);
    vec3 f84 = f20 * f20;
    bvec3 f85 = lessThan(f20, vec3(0.0));
    vec3 f86 = vec3(f85.x ? f84.x : vec3(0.0).x, f85.y ? f84.y : vec3(0.0).y, f85.z ? f84.z : vec3(0.0).z);
    vec3 f87 = f84 - f86;
    float f88 = f87.x;
    float f89 = f87.y;
    float f90 = f87.z;
    float f91 = f86.x;
    float f92 = f86.y;
    float f93 = f86.z;
    vec3 f94 = ((((((f40.xyz * (f40.w * 120.0)) * 1.0) + (((f75 - (f70 * f74)) * CB0[15].xyz) * f63)) + ((f75 - (f83 * f74)) * (((((((CB0[40].xyz * f88) + (CB0[42].xyz * f89)) + (CB0[44].xyz * f90)) + (CB0[41].xyz * f91)) + (CB0[43].xyz * f92)) + (CB0[45].xyz * f93)) + (((((((CB0[34].xyz * f88) + (CB0[36].xyz * f89)) + (CB0[38].xyz * f90)) + (CB0[35].xyz * f91)) + (CB0[37].xyz * f92)) + (CB0[39].xyz * f93)) * f42)))) + ((CB0[32].xyz + (CB0[33].xyz * (f42 * (2.0 - CB0[14].w)))) * 1.0)) * f27.xyz) + ((((f70 * (((f71 + (f71 * f71)) / max(((f72 * f72) * ((f66 * 3.0) + 0.5)) * ((f65 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f63)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f79, textureLod(PrefilteredEnvTexture, f77, f76).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f31.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f42)) * f83) * f28));
    vec4 f95 = vec4(0.0);
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    vec4 f98 = f97;
    f98.w = VARYING2.w;
    float f99 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f100 = textureLod(PrefilteredEnvTexture, vec4(f30, 0.0).xyz, max(CB0[18].y, f99) * 5.0).xyz;
    bvec3 f101 = bvec3(!(CB0[18].w == 0.0));
    vec3 f102 = mix(vec3(f101.x ? CB0[19].xyz.x : f100.x, f101.y ? CB0[19].xyz.y : f100.y, f101.z ? CB0[19].xyz.z : f100.z), f98.xyz, vec3(f99));
    vec4 f103 = f98;
    f103.x = f102.x;
    vec4 f104 = f103;
    f104.y = f102.y;
    vec4 f105 = f104;
    f105.z = f102.z;
    vec3 f106 = sqrt(clamp(f105.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f107 = f105;
    f107.x = f106.x;
    vec4 f108 = f107;
    f108.y = f106.y;
    vec4 f109 = f108;
    f109.z = f106.z;
    vec4 f110 = f109;
    f110.w = VARYING2.w;
    _entryPointOutput = f110;
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
