#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D NoiseMapTexture;
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
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f3 = texture(NoiseMapTexture, VARYING0 * CB2[2].w);
    float f4 = f3.x * 8.0;
    float f5 = fract(f4);
    float f6 = floor(f4);
    vec2 f7 = dFdx(VARYING0);
    vec2 f8 = dFdy(VARYING0);
    vec2 f9 = sin(vec2(3.0, 7.0) * f6) + VARYING0;
    vec2 f10 = sin(vec2(3.0, 7.0) * (f6 + 1.0)) + VARYING0;
    vec4 f11 = vec4(f5);
    vec4 f12 = mix(textureGrad(DiffuseMapTexture, f9, f7, f8), textureGrad(DiffuseMapTexture, f10, f7, f8), f11);
    vec2 f13 = textureGrad(NormalMapTexture, f9, f7, f8).wy * 2.0;
    vec2 f14 = f13 - vec2(1.0);
    vec4 f15 = vec4(0.0);
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f13, f14), 0.0, 1.0));
    vec2 f18 = textureGrad(NormalMapTexture, f10, f7, f8).wy * 2.0;
    vec2 f19 = f18 - vec2(1.0);
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f18, f19), 0.0, 1.0));
    vec3 f23 = mix(f17.xyz, f22.xyz, vec3(f5));
    vec2 f24 = f23.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f25 = f23;
    f25.x = f24.x;
    vec3 f26 = f25;
    f26.y = f24.y;
    vec2 f27 = f26.xy * f2;
    float f28 = f27.x;
    vec4 f29 = mix(textureGrad(SpecularMapTexture, f9, f7, f8), textureGrad(SpecularMapTexture, f10, f7, f8), f11);
    vec4 f30 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f12.w, CB2[3].w))) * f12.xyz) * (1.0 + (f28 * CB2[0].z)), VARYING2.w);
    float f31 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f32 = VARYING6.xyz * f31;
    vec3 f33 = VARYING5.xyz * f31;
    vec3 f34 = normalize(((f32 * f28) + (cross(f33, f32) * f27.y)) + (f33 * f23.z));
    vec3 f35 = f30.xyz;
    vec3 f36 = f35 * f35;
    vec4 f37 = f30;
    f37.x = f36.x;
    vec4 f38 = f37;
    f38.y = f36.y;
    vec4 f39 = f38;
    f39.z = f36.z;
    vec3 f40 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f41 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f42 = VARYING3.yzx - (VARYING3.yzx * f41);
    vec4 f43 = texture(LightMapTexture, f42);
    vec4 f44 = texture(LightGridSkylightTexture, f42);
    vec4 f45 = vec4(clamp(f41, 0.0, 1.0));
    vec4 f46 = mix(f43, vec4(0.0), f45);
    vec4 f47 = mix(f44, vec4(1.0), f45);
    float f48 = f47.x;
    vec4 f49 = texture(ShadowMapTexture, f40.xy);
    float f50 = f40.z;
    float f51 = CB0[26].w * f2;
    float f52 = max(f29.y, 0.04500000178813934326171875);
    vec3 f53 = reflect(-f1, f34);
    float f54 = f52 * 5.0;
    vec3 f55 = vec4(f53, f54).xyz;
    vec3 f56 = textureLod(PrefilteredEnvIndoorTexture, f55, f54).xyz;
    vec3 f57;
    if (CB0[27].w == 0.0)
    {
        f57 = f56;
    }
    else
    {
        f57 = mix(f56, textureLod(PrefilteredEnvBlendTargetTexture, f55, f54).xyz, vec3(CB0[27].w));
    }
    vec4 f58 = texture(PrecomputedBRDFTexture, vec2(f52, max(9.9999997473787516355514526367188e-05, dot(f34, f1))));
    float f59 = f29.x * f51;
    vec3 f60 = mix(vec3(0.039999999105930328369140625), f39.xyz, vec3(f59));
    vec3 f61 = -CB0[11].xyz;
    float f62 = (dot(f34, f61) * CB0[9].w) * ((1.0 - ((step(f49.x, f50) * clamp(CB0[24].z + (CB0[24].w * abs(f50 - 0.5)), 0.0, 1.0)) * f49.y)) * f47.y);
    vec3 f63 = normalize(f1 - CB0[11].xyz);
    float f64 = clamp(f62, 0.0, 1.0);
    float f65 = f52 * f52;
    float f66 = max(0.001000000047497451305389404296875, dot(f34, f63));
    float f67 = dot(f61, f63);
    float f68 = 1.0 - f67;
    float f69 = f68 * f68;
    float f70 = (f69 * f69) * f68;
    vec3 f71 = vec3(f70) + (f60 * (1.0 - f70));
    float f72 = f65 * f65;
    float f73 = (((f66 * f72) - f66) * f66) + 1.0;
    float f74 = 1.0 - f59;
    float f75 = f51 * f74;
    vec3 f76 = vec3(f74);
    float f77 = f58.x;
    float f78 = f58.y;
    vec3 f79 = ((f60 * f77) + vec3(f78)) / vec3(f77 + f78);
    vec3 f80 = f34 * f34;
    bvec3 f81 = lessThan(f34, vec3(0.0));
    vec3 f82 = vec3(f81.x ? f80.x : vec3(0.0).x, f81.y ? f80.y : vec3(0.0).y, f81.z ? f80.z : vec3(0.0).z);
    vec3 f83 = f80 - f82;
    float f84 = f83.x;
    float f85 = f83.y;
    float f86 = f83.z;
    float f87 = f82.x;
    float f88 = f82.y;
    float f89 = f82.z;
    vec3 f90 = ((((((((f76 - (f71 * f75)) * CB0[10].xyz) * f64) + (CB0[12].xyz * (f74 * clamp(-f62, 0.0, 1.0)))) + ((f46.xyz * (f46.w * 120.0)) * 1.0)) + ((f76 - (f79 * f75)) * (((((((CB0[35].xyz * f84) + (CB0[37].xyz * f85)) + (CB0[39].xyz * f86)) + (CB0[36].xyz * f87)) + (CB0[38].xyz * f88)) + (CB0[40].xyz * f89)) + (((((((CB0[29].xyz * f84) + (CB0[31].xyz * f85)) + (CB0[33].xyz * f86)) + (CB0[30].xyz * f87)) + (CB0[32].xyz * f88)) + (CB0[34].xyz * f89)) * f48)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f48))) * f39.xyz) + ((((f71 * (((f72 + (f72 * f72)) / (((f73 * f73) * ((f67 * 3.0) + 0.5)) * ((f66 * 0.75) + 0.25))) * f64)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f57, textureLod(PrefilteredEnvTexture, f55, f54).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f53.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f48)) * f79) * f51));
    vec4 f91 = vec4(0.0);
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec4 f94 = f93;
    f94.w = VARYING2.w;
    float f95 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f96 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f95) * 5.0).xyz;
    bvec3 f97 = bvec3(!(CB0[13].w == 0.0));
    vec3 f98 = mix(vec3(f97.x ? CB0[14].xyz.x : f96.x, f97.y ? CB0[14].xyz.y : f96.y, f97.z ? CB0[14].xyz.z : f96.z), f94.xyz, vec3(f95));
    vec4 f99 = f94;
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    vec3 f102 = sqrt(clamp(f101.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f103 = f101;
    f103.x = f102.x;
    vec4 f104 = f103;
    f104.y = f102.y;
    vec4 f105 = f104;
    f105.z = f102.z;
    vec4 f106 = f105;
    f106.w = VARYING2.w;
    _entryPointOutput = f106;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$NoiseMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
