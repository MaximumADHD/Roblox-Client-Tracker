#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialParams.h>
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
    vec2 f0 = VARYING0 * CB2[0].x;
    vec2 f1 = f0 * 4.0;
    vec4 f2 = texture(WangTileMapTexture, f1 * vec2(0.0078125));
    vec2 f3 = f1 * 0.25;
    vec2 f4 = dFdx(f3);
    vec2 f5 = dFdy(f3);
    vec4 f6 = vec4(f4, f5);
    vec2 f7 = (f2.xy * 0.99609375) + (fract(f1) * 0.25);
    vec2 f8 = f6.xy;
    vec2 f9 = f6.zw;
    vec4 f10 = textureGrad(DiffuseMapTexture, f7, f8, f9);
    vec2 f11 = textureGrad(NormalMapTexture, f7, f8, f9).wy * 2.0;
    vec2 f12 = f11 - vec2(1.0);
    float f13 = sqrt(clamp(1.0 + dot(vec2(1.0) - f11, f12), 0.0, 1.0));
    vec3 f14 = vec3(f12, f13);
    vec2 f15 = f14.xy + (vec3((texture(NormalDetailMapTexture, f0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f16 = f14;
    f16.x = f15.x;
    vec3 f17 = f16;
    f17.y = f15.y;
    vec2 f18 = f17.xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    float f19 = f18.x;
    vec4 f20 = textureGrad(SpecularMapTexture, f7, f8, f9);
    vec4 f21 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f10.w, CB2[3].w))) * f10.xyz) * (1.0 + (f19 * 0.20000000298023223876953125)), VARYING2.w);
    float f22 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f23 = VARYING6.xyz * f22;
    vec3 f24 = VARYING5.xyz * f22;
    vec3 f25 = normalize(((f23 * f19) + (cross(f24, f23) * f18.y)) + (f24 * f13));
    vec3 f26 = f21.xyz;
    vec3 f27 = f26 * f26;
    vec4 f28 = f21;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    float f31 = length(VARYING4.xyz);
    vec3 f32 = VARYING4.xyz / vec3(f31);
    float f33 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f34 = 0.08900000154972076416015625 + (f20.y * 0.9110000133514404296875);
    vec3 f35 = -f32;
    vec3 f36 = reflect(f35, f25);
    float f37 = f20.x * f33;
    vec3 f38 = mix(vec3(0.039999999105930328369140625), f30.xyz, vec3(f37));
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
    float f50 = f34 * 5.0;
    vec3 f51 = vec4(f36, f50).xyz;
    vec3 f52 = textureLod(PrefilteredEnvIndoorTexture, f51, f50).xyz;
    vec3 f53;
    if (CB0[32].w == 0.0)
    {
        f53 = f52;
    }
    else
    {
        f53 = mix(f52, textureLod(PrefilteredEnvBlendTargetTexture, f51, f50).xyz, vec3(CB0[32].w));
    }
    vec4 f54 = texture(PrecomputedBRDFTexture, vec2(f34, max(9.9999997473787516355514526367188e-05, dot(f25, f32))));
    float f55 = f54.x;
    float f56 = f54.y;
    vec3 f57 = ((f38 * f55) + vec3(f56)) / vec3(f55 + f56);
    float f58 = 1.0 - f37;
    float f59 = f33 * f58;
    vec3 f60 = vec3(f58);
    vec3 f61 = f25 * f25;
    bvec3 f62 = lessThan(f25, vec3(0.0));
    vec3 f63 = vec3(f62.x ? f61.x : vec3(0.0).x, f62.y ? f61.y : vec3(0.0).y, f62.z ? f61.z : vec3(0.0).z);
    vec3 f64 = f61 - f63;
    float f65 = f64.x;
    float f66 = f64.y;
    float f67 = f64.z;
    float f68 = f63.x;
    float f69 = f63.y;
    float f70 = f63.z;
    vec3 f71 = -CB0[16].xyz;
    float f72 = dot(f25, f71) * ((1.0 - ((step(f48.x, f49) * clamp(CB0[29].z + (CB0[29].w * abs(f49 - 0.5)), 0.0, 1.0)) * f48.y)) * f46.y);
    vec3 f73 = normalize(f32 + f71);
    float f74 = clamp(f72, 0.0, 1.0);
    float f75 = f34 * f34;
    float f76 = max(0.001000000047497451305389404296875, dot(f25, f73));
    float f77 = dot(f71, f73);
    float f78 = 1.0 - f77;
    float f79 = f78 * f78;
    float f80 = (f79 * f79) * f78;
    vec3 f81 = vec3(f80) + (f38 * (1.0 - f80));
    float f82 = f75 * f75;
    float f83 = (((f76 * f82) - f76) * f76) + 1.0;
    vec3 f84 = (((((((f60 - (f57 * f59)) * (((((((CB0[40].xyz * f65) + (CB0[42].xyz * f66)) + (CB0[44].xyz * f67)) + (CB0[41].xyz * f68)) + (CB0[43].xyz * f69)) + (CB0[45].xyz * f70)) + (((((((CB0[34].xyz * f65) + (CB0[36].xyz * f66)) + (CB0[38].xyz * f67)) + (CB0[35].xyz * f68)) + (CB0[37].xyz * f69)) + (CB0[39].xyz * f70)) * f47))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f47)) * 1.0)) + ((((f60 - (f81 * f59)) * CB0[15].xyz) * f74) + (CB0[17].xyz * (f58 * clamp(-f72, 0.0, 1.0))))) + (f45.xyz * (f45.w * 120.0))) * f30.xyz) + (((mix(f53, textureLod(PrefilteredEnvTexture, f51, f50).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f36.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f47)) * f57) * f33) + (((f81 * (((f82 + (f82 * f82)) / (((f83 * f83) * ((f77 * 3.0) + 0.5)) * ((f76 * 0.75) + 0.25))) * f74)) * CB0[15].xyz) * 1.0));
    vec4 f85 = vec4(0.0);
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec4 f88 = f87;
    f88.w = VARYING2.w;
    float f89 = clamp(exp2((CB0[18].z * f31) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f90 = textureLod(PrefilteredEnvTexture, vec4(f35, 0.0).xyz, max(CB0[18].y, f89) * 5.0).xyz;
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
