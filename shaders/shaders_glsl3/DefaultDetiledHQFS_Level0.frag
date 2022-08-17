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
    vec2 f3 = VARYING0 * CB2[0].x;
    vec4 f4 = texture(NoiseMapTexture, f3 * CB2[2].w);
    float f5 = f4.x * 8.0;
    float f6 = fract(f5);
    float f7 = floor(f5);
    vec2 f8 = dFdx(f3);
    vec2 f9 = dFdy(f3);
    vec2 f10 = sin(vec2(3.0, 7.0) * f7) + f3;
    vec2 f11 = sin(vec2(3.0, 7.0) * (f7 + 1.0)) + f3;
    vec4 f12 = vec4(f6);
    vec4 f13 = mix(textureGrad(DiffuseMapTexture, f10, f8, f9), textureGrad(DiffuseMapTexture, f11, f8, f9), f12);
    vec2 f14 = textureGrad(NormalMapTexture, f10, f8, f9).wy * 2.0;
    vec2 f15 = f14 - vec2(1.0);
    vec4 f16 = vec4(0.0);
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f14, f15), 0.0, 1.0));
    vec2 f19 = textureGrad(NormalMapTexture, f11, f8, f9).wy * 2.0;
    vec2 f20 = f19 - vec2(1.0);
    vec4 f21 = vec4(0.0);
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f19, f20), 0.0, 1.0));
    vec3 f24 = mix(f18.xyz, f23.xyz, vec3(f6));
    vec2 f25 = f24.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f26 = f24;
    f26.x = f25.x;
    vec3 f27 = f26;
    f27.y = f25.y;
    vec2 f28 = f27.xy * f2;
    float f29 = f28.x;
    vec4 f30 = mix(textureGrad(SpecularMapTexture, f10, f8, f9), textureGrad(SpecularMapTexture, f11, f8, f9), f12);
    vec4 f31 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f13.w, CB2[3].w))) * f13.xyz) * (1.0 + (f29 * 0.20000000298023223876953125)), VARYING2.w);
    float f32 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f33 = VARYING6.xyz * f32;
    vec3 f34 = VARYING5.xyz * f32;
    vec3 f35 = normalize(((f33 * f29) + (cross(f34, f33) * f28.y)) + (f34 * f24.z));
    vec3 f36 = f31.xyz;
    vec3 f37 = f36 * f36;
    vec4 f38 = f31;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    vec3 f41 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f42 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f43 = VARYING3.yzx - (VARYING3.yzx * f42);
    vec4 f44 = texture(LightMapTexture, f43);
    vec4 f45 = texture(LightGridSkylightTexture, f43);
    vec4 f46 = vec4(clamp(f42, 0.0, 1.0));
    vec4 f47 = mix(f44, vec4(0.0), f46);
    vec4 f48 = mix(f45, vec4(1.0), f46);
    float f49 = f48.x;
    vec4 f50 = texture(ShadowMapTexture, f41.xy);
    float f51 = f41.z;
    float f52 = CB0[26].w * f2;
    float f53 = 0.08900000154972076416015625 + (f30.y * 0.9110000133514404296875);
    vec3 f54 = reflect(-f1, f35);
    float f55 = f53 * 5.0;
    vec3 f56 = vec4(f54, f55).xyz;
    vec3 f57 = textureLod(PrefilteredEnvIndoorTexture, f56, f55).xyz;
    vec3 f58;
    if (CB0[27].w == 0.0)
    {
        f58 = f57;
    }
    else
    {
        f58 = mix(f57, textureLod(PrefilteredEnvBlendTargetTexture, f56, f55).xyz, vec3(CB0[27].w));
    }
    vec4 f59 = texture(PrecomputedBRDFTexture, vec2(f53, max(9.9999997473787516355514526367188e-05, dot(f35, f1))));
    float f60 = f30.x * f52;
    vec3 f61 = mix(vec3(0.039999999105930328369140625), f40.xyz, vec3(f60));
    vec3 f62 = -CB0[11].xyz;
    float f63 = (dot(f35, f62) * CB0[9].w) * ((1.0 - ((step(f50.x, f51) * clamp(CB0[24].z + (CB0[24].w * abs(f51 - 0.5)), 0.0, 1.0)) * f50.y)) * f48.y);
    vec3 f64 = normalize(f1 - CB0[11].xyz);
    float f65 = clamp(f63, 0.0, 1.0);
    float f66 = f53 * f53;
    float f67 = max(0.001000000047497451305389404296875, dot(f35, f64));
    float f68 = dot(f62, f64);
    float f69 = 1.0 - f68;
    float f70 = f69 * f69;
    float f71 = (f70 * f70) * f69;
    vec3 f72 = vec3(f71) + (f61 * (1.0 - f71));
    float f73 = f66 * f66;
    float f74 = (((f67 * f73) - f67) * f67) + 1.0;
    float f75 = 1.0 - f60;
    float f76 = f52 * f75;
    vec3 f77 = vec3(f75);
    float f78 = f59.x;
    float f79 = f59.y;
    vec3 f80 = ((f61 * f78) + vec3(f79)) / vec3(f78 + f79);
    vec3 f81 = f35 * f35;
    bvec3 f82 = lessThan(f35, vec3(0.0));
    vec3 f83 = vec3(f82.x ? f81.x : vec3(0.0).x, f82.y ? f81.y : vec3(0.0).y, f82.z ? f81.z : vec3(0.0).z);
    vec3 f84 = f81 - f83;
    float f85 = f84.x;
    float f86 = f84.y;
    float f87 = f84.z;
    float f88 = f83.x;
    float f89 = f83.y;
    float f90 = f83.z;
    vec3 f91 = ((((((((f77 - (f72 * f76)) * CB0[10].xyz) * f65) + (CB0[12].xyz * (f75 * clamp(-f63, 0.0, 1.0)))) + ((f47.xyz * (f47.w * 120.0)) * 1.0)) + ((f77 - (f80 * f76)) * (((((((CB0[35].xyz * f85) + (CB0[37].xyz * f86)) + (CB0[39].xyz * f87)) + (CB0[36].xyz * f88)) + (CB0[38].xyz * f89)) + (CB0[40].xyz * f90)) + (((((((CB0[29].xyz * f85) + (CB0[31].xyz * f86)) + (CB0[33].xyz * f87)) + (CB0[30].xyz * f88)) + (CB0[32].xyz * f89)) + (CB0[34].xyz * f90)) * f49)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f49))) * f40.xyz) + ((((f72 * (((f73 + (f73 * f73)) / (((f74 * f74) * ((f68 * 3.0) + 0.5)) * ((f67 * 0.75) + 0.25))) * f65)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f58, textureLod(PrefilteredEnvTexture, f56, f55).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f54.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f49)) * f80) * f52));
    vec4 f92 = vec4(0.0);
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    vec4 f95 = f94;
    f95.w = VARYING2.w;
    float f96 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f97 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f96) * 5.0).xyz;
    bvec3 f98 = bvec3(!(CB0[13].w == 0.0));
    vec3 f99 = mix(vec3(f98.x ? CB0[14].xyz.x : f97.x, f98.y ? CB0[14].xyz.y : f97.y, f98.z ? CB0[14].xyz.z : f97.z), f95.xyz, vec3(f96));
    vec4 f100 = f95;
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec4 f102 = f101;
    f102.z = f99.z;
    vec3 f103 = sqrt(clamp(f102.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f104 = f102;
    f104.x = f103.x;
    vec4 f105 = f104;
    f105.y = f103.y;
    vec4 f106 = f105;
    f106.z = f103.z;
    vec4 f107 = f106;
    f107.w = VARYING2.w;
    _entryPointOutput = f107;
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
