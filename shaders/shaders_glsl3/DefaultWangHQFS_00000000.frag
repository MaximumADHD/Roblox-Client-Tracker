#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D WangTileMapTexture;
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
    vec2 f4 = f3 * 4.0;
    vec4 f5 = texture(WangTileMapTexture, f4 * vec2(0.0078125));
    vec2 f6 = f4 * 0.25;
    vec2 f7 = dFdx(f6);
    vec2 f8 = dFdy(f6);
    vec4 f9 = vec4(f7, f8);
    vec2 f10 = (f5.xy * 0.99609375) + (fract(f4) * 0.25);
    vec2 f11 = f9.xy;
    vec2 f12 = f9.zw;
    vec4 f13 = textureGrad(DiffuseMapTexture, f10, f11, f12);
    vec2 f14 = textureGrad(NormalMapTexture, f10, f11, f12).wy * 2.0;
    vec2 f15 = f14 - vec2(1.0);
    float f16 = sqrt(clamp(1.0 + dot(vec2(1.0) - f14, f15), 0.0, 1.0));
    vec3 f17 = vec3(f15, f16);
    vec2 f18 = f17.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f19 = f17;
    f19.x = f18.x;
    vec3 f20 = f19;
    f20.y = f18.y;
    vec2 f21 = f20.xy * f2;
    float f22 = f21.x;
    vec4 f23 = textureGrad(SpecularMapTexture, f10, f11, f12);
    vec4 f24 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f13.w, CB2[3].w))) * f13.xyz) * (1.0 + (f22 * 0.20000000298023223876953125)), VARYING2.w);
    float f25 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f26 = VARYING6.xyz * f25;
    vec3 f27 = VARYING5.xyz * f25;
    vec3 f28 = normalize(((f26 * f22) + (cross(f27, f26) * f21.y)) + (f27 * f16));
    vec3 f29 = f24.xyz;
    vec3 f30 = f29 * f29;
    vec4 f31 = f24;
    f31.x = f30.x;
    vec4 f32 = f31;
    f32.y = f30.y;
    vec4 f33 = f32;
    f33.z = f30.z;
    float f34 = CB0[31].w * f2;
    float f35 = 0.08900000154972076416015625 + (f23.y * 0.9110000133514404296875);
    vec3 f36 = reflect(-f1, f28);
    float f37 = f23.x * f34;
    vec3 f38 = mix(vec3(0.039999999105930328369140625), f33.xyz, vec3(f37));
    vec3 f39 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f40 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f41 = VARYING3.yzx - (VARYING3.yzx * f40);
    vec4 f42 = texture(LightMapTexture, f41);
    vec4 f43 = texture(LightGridSkylightTexture, f41);
    vec4 f44 = vec4(clamp(f40, 0.0, 1.0));
    vec4 f45 = mix(f42, vec4(0.0), f44);
    vec4 f46 = mix(f43, vec4(1.0), f44);
    float f47 = f46.x;
    vec4 f48 = texture(ShadowMapTexture, f39.xy);
    float f49 = f39.z;
    vec3 f50 = -CB0[16].xyz;
    float f51 = dot(f28, f50) * ((1.0 - ((step(f48.x, f49) * clamp(CB0[29].z + (CB0[29].w * abs(f49 - 0.5)), 0.0, 1.0)) * f48.y)) * f46.y);
    vec3 f52 = normalize(f1 - CB0[16].xyz);
    float f53 = clamp(f51, 0.0, 1.0);
    float f54 = f35 * f35;
    float f55 = max(0.001000000047497451305389404296875, dot(f28, f52));
    float f56 = dot(f50, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (f38 * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    float f63 = 1.0 - f37;
    float f64 = f34 * f63;
    vec3 f65 = vec3(f63);
    float f66 = f35 * 5.0;
    vec3 f67 = vec4(f36, f66).xyz;
    vec3 f68 = textureLod(PrefilteredEnvIndoorTexture, f67, f66).xyz;
    vec3 f69;
    if (CB0[32].w == 0.0)
    {
        f69 = f68;
    }
    else
    {
        f69 = mix(f68, textureLod(PrefilteredEnvBlendTargetTexture, f67, f66).xyz, vec3(CB0[32].w));
    }
    vec4 f70 = texture(PrecomputedBRDFTexture, vec2(f35, max(9.9999997473787516355514526367188e-05, dot(f28, f1))));
    float f71 = f70.x;
    float f72 = f70.y;
    vec3 f73 = ((f38 * f71) + vec3(f72)) / vec3(f71 + f72);
    vec3 f74 = f28 * f28;
    bvec3 f75 = lessThan(f28, vec3(0.0));
    vec3 f76 = vec3(f75.x ? f74.x : vec3(0.0).x, f75.y ? f74.y : vec3(0.0).y, f75.z ? f74.z : vec3(0.0).z);
    vec3 f77 = f74 - f76;
    float f78 = f77.x;
    float f79 = f77.y;
    float f80 = f77.z;
    float f81 = f76.x;
    float f82 = f76.y;
    float f83 = f76.z;
    vec3 f84 = ((((((f45.xyz * (f45.w * 120.0)) * 1.0) + ((((f65 - (f60 * f64)) * CB0[15].xyz) * f53) + (CB0[17].xyz * (f63 * clamp(-f51, 0.0, 1.0))))) + ((f65 - (f73 * f64)) * (((((((CB0[40].xyz * f78) + (CB0[42].xyz * f79)) + (CB0[44].xyz * f80)) + (CB0[41].xyz * f81)) + (CB0[43].xyz * f82)) + (CB0[45].xyz * f83)) + (((((((CB0[34].xyz * f78) + (CB0[36].xyz * f79)) + (CB0[38].xyz * f80)) + (CB0[35].xyz * f81)) + (CB0[37].xyz * f82)) + (CB0[39].xyz * f83)) * f47)))) + (CB0[32].xyz + ((CB0[33].xyz * 1.0) * f47))) * f33.xyz) + ((((f60 * (min((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25)), 65504.0) * f53)) * CB0[15].xyz) * 1.0) + ((mix(f69, textureLod(PrefilteredEnvTexture, f67, f66).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f36.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f47)) * f73) * f34));
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

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
