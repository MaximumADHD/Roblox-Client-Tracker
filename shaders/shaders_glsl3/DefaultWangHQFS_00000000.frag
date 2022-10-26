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
    vec3 f36 = -f1;
    vec3 f37 = reflect(f36, f28);
    float f38 = f23.x * f34;
    vec3 f39 = mix(vec3(0.039999999105930328369140625), f33.xyz, vec3(f38));
    vec3 f40 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f41 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f42 = VARYING3.yzx - (VARYING3.yzx * f41);
    vec4 f43 = texture(LightMapTexture, f42);
    vec4 f44 = texture(LightGridSkylightTexture, f42);
    vec4 f45 = vec4(clamp(f41, 0.0, 1.0));
    vec4 f46 = mix(f43, vec4(0.0), f45);
    vec4 f47 = mix(f44, vec4(1.0), f45);
    float f48 = f47.x;
    vec4 f49 = texture(ShadowMapTexture, f40.xy);
    float f50 = f40.z;
    vec3 f51 = -CB0[16].xyz;
    float f52 = dot(f28, f51) * ((1.0 - ((step(f49.x, f50) * clamp(CB0[29].z + (CB0[29].w * abs(f50 - 0.5)), 0.0, 1.0)) * f49.y)) * f47.y);
    vec3 f53 = normalize(f1 - CB0[16].xyz);
    float f54 = clamp(f52, 0.0, 1.0);
    float f55 = f35 * f35;
    float f56 = max(0.001000000047497451305389404296875, dot(f28, f53));
    float f57 = dot(f51, f53);
    float f58 = 1.0 - f57;
    float f59 = f58 * f58;
    float f60 = (f59 * f59) * f58;
    vec3 f61 = vec3(f60) + (f39 * (1.0 - f60));
    float f62 = f55 * f55;
    float f63 = (((f56 * f62) - f56) * f56) + 1.0;
    float f64 = 1.0 - f38;
    float f65 = f34 * f64;
    vec3 f66 = vec3(f64);
    float f67 = f35 * 5.0;
    vec3 f68 = vec4(f37, f67).xyz;
    vec3 f69 = textureLod(PrefilteredEnvIndoorTexture, f68, f67).xyz;
    vec3 f70;
    if (CB0[32].w == 0.0)
    {
        f70 = f69;
    }
    else
    {
        f70 = mix(f69, textureLod(PrefilteredEnvBlendTargetTexture, f68, f67).xyz, vec3(CB0[32].w));
    }
    vec4 f71 = texture(PrecomputedBRDFTexture, vec2(f35, max(9.9999997473787516355514526367188e-05, dot(f28, f1))));
    float f72 = f71.x;
    float f73 = f71.y;
    vec3 f74 = ((f39 * f72) + vec3(f73)) / vec3(f72 + f73);
    vec3 f75 = f28 * f28;
    bvec3 f76 = lessThan(f28, vec3(0.0));
    vec3 f77 = vec3(f76.x ? f75.x : vec3(0.0).x, f76.y ? f75.y : vec3(0.0).y, f76.z ? f75.z : vec3(0.0).z);
    vec3 f78 = f75 - f77;
    float f79 = f78.x;
    float f80 = f78.y;
    float f81 = f78.z;
    float f82 = f77.x;
    float f83 = f77.y;
    float f84 = f77.z;
    vec3 f85 = ((((((f46.xyz * (f46.w * 120.0)) * 1.0) + ((((f66 - (f61 * f65)) * CB0[15].xyz) * f54) + (CB0[17].xyz * (f64 * clamp(-f52, 0.0, 1.0))))) + ((f66 - (f74 * f65)) * (((((((CB0[40].xyz * f79) + (CB0[42].xyz * f80)) + (CB0[44].xyz * f81)) + (CB0[41].xyz * f82)) + (CB0[43].xyz * f83)) + (CB0[45].xyz * f84)) + (((((((CB0[34].xyz * f79) + (CB0[36].xyz * f80)) + (CB0[38].xyz * f81)) + (CB0[35].xyz * f82)) + (CB0[37].xyz * f83)) + (CB0[39].xyz * f84)) * f48)))) + ((CB0[32].xyz + (CB0[33].xyz * f48)) * 1.0)) * f33.xyz) + ((((f61 * (((f62 + (f62 * f62)) / max(((f63 * f63) * ((f57 * 3.0) + 0.5)) * ((f56 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f54)) * CB0[15].xyz) * 1.0) + ((mix(f70, textureLod(PrefilteredEnvTexture, f68, f67).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f37.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f48)) * f74) * f34));
    vec4 f86 = vec4(0.0);
    f86.x = f85.x;
    vec4 f87 = f86;
    f87.y = f85.y;
    vec4 f88 = f87;
    f88.z = f85.z;
    vec4 f89 = f88;
    f89.w = VARYING2.w;
    float f90 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f91 = textureLod(PrefilteredEnvTexture, vec4(f36, 0.0).xyz, max(CB0[18].y, f90) * 5.0).xyz;
    bvec3 f92 = bvec3(!(CB0[18].w == 0.0));
    vec3 f93 = mix(vec3(f92.x ? CB0[19].xyz.x : f91.x, f92.y ? CB0[19].xyz.y : f91.y, f92.z ? CB0[19].xyz.z : f91.z), f89.xyz, vec3(f90));
    vec4 f94 = f89;
    f94.x = f93.x;
    vec4 f95 = f94;
    f95.y = f93.y;
    vec4 f96 = f95;
    f96.z = f93.z;
    vec3 f97 = sqrt(clamp(f96.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f98 = f96;
    f98.x = f97.x;
    vec4 f99 = f98;
    f99.y = f97.y;
    vec4 f100 = f99;
    f100.z = f97.z;
    vec4 f101 = f100;
    f101.w = VARYING2.w;
    _entryPointOutput = f101;
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
