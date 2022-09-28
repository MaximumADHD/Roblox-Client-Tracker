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
    vec3 f33 = reflect(-f1, f23);
    float f34 = f18.x * f31;
    vec3 f35 = mix(vec3(0.039999999105930328369140625), f30.xyz, vec3(f34));
    vec3 f36 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f37 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f38 = VARYING3.yzx - (VARYING3.yzx * f37);
    vec4 f39 = texture(LightMapTexture, f38);
    vec4 f40 = texture(LightGridSkylightTexture, f38);
    vec4 f41 = vec4(clamp(f37, 0.0, 1.0));
    vec4 f42 = mix(f39, vec4(0.0), f41);
    vec4 f43 = mix(f40, vec4(1.0), f41);
    float f44 = f43.x;
    float f45 = f43.y;
    vec3 f46 = f36 - CB0[46].xyz;
    vec3 f47 = f36 - CB0[47].xyz;
    vec3 f48 = f36 - CB0[48].xyz;
    vec4 f49 = vec4(f36, 1.0) * mat4(CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f50 = textureLod(ShadowAtlasTexture, f49.xy, 0.0);
    vec2 f51 = vec2(0.0);
    f51.x = CB0[51].z;
    vec2 f52 = f51;
    f52.y = CB0[51].w;
    float f53 = (2.0 * f49.z) - 1.0;
    float f54 = exp(CB0[51].z * f53);
    float f55 = -exp((-CB0[51].w) * f53);
    vec2 f56 = (f52 * CB0[52].y) * vec2(f54, f55);
    vec2 f57 = f56 * f56;
    float f58 = f50.x;
    float f59 = max(f50.y - (f58 * f58), f57.x);
    float f60 = f54 - f58;
    float f61 = f50.z;
    float f62 = max(f50.w - (f61 * f61), f57.y);
    float f63 = f55 - f61;
    vec3 f64 = normalize(f1 - CB0[16].xyz);
    float f65 = clamp((f25 * CB0[14].w) * (((f25 * CB0[52].x) > 0.0) ? mix(min((f54 <= f58) ? 1.0 : clamp(((f59 / (f59 + (f60 * f60))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f55 <= f61) ? 1.0 : clamp(((f62 / (f62 + (f63 * f63))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f45, clamp((length(f36 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f45), 0.0, 1.0);
    float f66 = f32 * f32;
    float f67 = max(0.001000000047497451305389404296875, dot(f23, f64));
    float f68 = dot(f24, f64);
    float f69 = 1.0 - f68;
    float f70 = f69 * f69;
    float f71 = (f70 * f70) * f69;
    vec3 f72 = vec3(f71) + (f35 * (1.0 - f71));
    float f73 = f66 * f66;
    float f74 = (((f67 * f73) - f67) * f67) + 1.0;
    float f75 = 1.0 - f34;
    float f76 = f31 * f75;
    vec3 f77 = vec3(f75);
    float f78 = f32 * 5.0;
    vec3 f79 = vec4(f33, f78).xyz;
    vec3 f80 = textureLod(PrefilteredEnvIndoorTexture, f79, f78).xyz;
    vec3 f81;
    if (CB0[32].w == 0.0)
    {
        f81 = f80;
    }
    else
    {
        f81 = mix(f80, textureLod(PrefilteredEnvBlendTargetTexture, f79, f78).xyz, vec3(CB0[32].w));
    }
    vec4 f82 = texture(PrecomputedBRDFTexture, vec2(f32, max(9.9999997473787516355514526367188e-05, dot(f23, f1))));
    float f83 = f82.x;
    float f84 = f82.y;
    vec3 f85 = ((f35 * f83) + vec3(f84)) / vec3(f83 + f84);
    vec3 f86 = f23 * f23;
    bvec3 f87 = lessThan(f23, vec3(0.0));
    vec3 f88 = vec3(f87.x ? f86.x : vec3(0.0).x, f87.y ? f86.y : vec3(0.0).y, f87.z ? f86.z : vec3(0.0).z);
    vec3 f89 = f86 - f88;
    float f90 = f89.x;
    float f91 = f89.y;
    float f92 = f89.z;
    float f93 = f88.x;
    float f94 = f88.y;
    float f95 = f88.z;
    vec3 f96 = ((((((f42.xyz * (f42.w * 120.0)) * 1.0) + (((f77 - (f72 * f76)) * CB0[15].xyz) * f65)) + ((f77 - (f85 * f76)) * (((((((CB0[40].xyz * f90) + (CB0[42].xyz * f91)) + (CB0[44].xyz * f92)) + (CB0[41].xyz * f93)) + (CB0[43].xyz * f94)) + (CB0[45].xyz * f95)) + (((((((CB0[34].xyz * f90) + (CB0[36].xyz * f91)) + (CB0[38].xyz * f92)) + (CB0[35].xyz * f93)) + (CB0[37].xyz * f94)) + (CB0[39].xyz * f95)) * f44)))) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f44))) * f30.xyz) + ((((f72 * (min((f73 + (f73 * f73)) / (((f74 * f74) * ((f68 * 3.0) + 0.5)) * ((f67 * 0.75) + 0.25)), 65504.0) * f65)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f81, textureLod(PrefilteredEnvTexture, f79, f78).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f33.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f44)) * f85) * f31));
    vec4 f97 = vec4(0.0);
    f97.x = f96.x;
    vec4 f98 = f97;
    f98.y = f96.y;
    vec4 f99 = f98;
    f99.z = f96.z;
    vec4 f100 = f99;
    f100.w = VARYING2.w;
    float f101 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f102 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f101) * 5.0).xyz;
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
