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
    vec4 f16 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(f4.w)) * f4.xyz) * (1.0 + (f14 * CB2[0].z)), VARYING2.w);
    float f17 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f18 = VARYING6.xyz * f17;
    vec3 f19 = VARYING5.xyz * f17;
    vec3 f20 = normalize(((f18 * f14) + (cross(f19, f18) * f13.y)) + (f19 * f8));
    vec3 f21 = f16.xyz;
    vec3 f22 = f21 * f21;
    vec4 f23 = f16;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    vec3 f26 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f27 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING3.yzx - (VARYING3.yzx * f27);
    vec4 f29 = texture(LightMapTexture, f28);
    vec4 f30 = texture(LightGridSkylightTexture, f28);
    vec4 f31 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f32 = mix(f29, vec4(0.0), f31);
    vec4 f33 = mix(f30, vec4(1.0), f31);
    float f34 = f33.x;
    vec4 f35 = texture(ShadowMapTexture, f26.xy);
    float f36 = f26.z;
    float f37 = CB0[26].w * f2;
    float f38 = max(f15.y, 0.04500000178813934326171875);
    vec3 f39 = reflect(-f1, f20);
    float f40 = f38 * 5.0;
    vec3 f41 = vec4(f39, f40).xyz;
    vec3 f42 = textureLod(PrefilteredEnvIndoorTexture, f41, f40).xyz;
    vec3 f43;
    if (CB0[27].w == 0.0)
    {
        f43 = f42;
    }
    else
    {
        f43 = mix(f42, textureLod(PrefilteredEnvBlendTargetTexture, f41, f40).xyz, vec3(CB0[27].w));
    }
    vec4 f44 = texture(PrecomputedBRDFTexture, vec2(f38, max(9.9999997473787516355514526367188e-05, dot(f20, f1))));
    float f45 = f15.x * f37;
    vec3 f46 = mix(vec3(0.039999999105930328369140625), f25.xyz, vec3(f45));
    vec3 f47 = -CB0[11].xyz;
    float f48 = (dot(f20, f47) * CB0[9].w) * ((1.0 - ((step(f35.x, f36) * clamp(CB0[24].z + (CB0[24].w * abs(f36 - 0.5)), 0.0, 1.0)) * f35.y)) * f33.y);
    vec3 f49 = normalize(f47 + f1);
    float f50 = clamp(f48, 0.0, 1.0);
    float f51 = f38 * f38;
    float f52 = max(0.001000000047497451305389404296875, dot(f20, f49));
    float f53 = dot(f47, f49);
    float f54 = 1.0 - f53;
    float f55 = f54 * f54;
    float f56 = (f55 * f55) * f54;
    vec3 f57 = vec3(f56) + (f46 * (1.0 - f56));
    float f58 = f51 * f51;
    float f59 = (((f52 * f58) - f52) * f52) + 1.0;
    float f60 = 1.0 - f45;
    float f61 = f37 * f60;
    vec3 f62 = vec3(f60);
    float f63 = f44.x;
    float f64 = f44.y;
    vec3 f65 = ((f46 * f63) + vec3(f64)) / vec3(f63 + f64);
    vec3 f66 = f20 * f20;
    bvec3 f67 = lessThan(f20, vec3(0.0));
    vec3 f68 = vec3(f67.x ? f66.x : vec3(0.0).x, f67.y ? f66.y : vec3(0.0).y, f67.z ? f66.z : vec3(0.0).z);
    vec3 f69 = f66 - f68;
    float f70 = f69.x;
    float f71 = f69.y;
    float f72 = f69.z;
    float f73 = f68.x;
    float f74 = f68.y;
    float f75 = f68.z;
    vec3 f76 = ((((((((f62 - (f57 * f61)) * CB0[10].xyz) * f50) + (CB0[12].xyz * (f60 * clamp(-f48, 0.0, 1.0)))) + ((f32.xyz * (f32.w * 120.0)) * 1.0)) + ((f62 - (f65 * f61)) * (((((((CB0[35].xyz * f70) + (CB0[37].xyz * f71)) + (CB0[39].xyz * f72)) + (CB0[36].xyz * f73)) + (CB0[38].xyz * f74)) + (CB0[40].xyz * f75)) + (((((((CB0[29].xyz * f70) + (CB0[31].xyz * f71)) + (CB0[33].xyz * f72)) + (CB0[30].xyz * f73)) + (CB0[32].xyz * f74)) + (CB0[34].xyz * f75)) * f34)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f34))) * f25.xyz) + ((((f57 * (((f58 + (f58 * f58)) / (((f59 * f59) * ((f53 * 3.0) + 0.5)) * ((f52 * 0.75) + 0.25))) * f50)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f43, textureLod(PrefilteredEnvTexture, f41, f40).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f39.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f34)) * f65) * f37));
    vec4 f77 = vec4(0.0);
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec4 f80 = f79;
    f80.w = VARYING2.w;
    float f81 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f82 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f81) * 5.0).xyz;
    bvec3 f83 = bvec3(!(CB0[13].w == 0.0));
    vec3 f84 = mix(vec3(f83.x ? CB0[14].xyz.x : f82.x, f83.y ? CB0[14].xyz.y : f82.y, f83.z ? CB0[14].xyz.z : f82.z), f80.xyz, vec3(f81));
    vec4 f85 = f80;
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec3 f88 = sqrt(clamp(f87.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f89 = f87;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    vec4 f92 = f91;
    f92.w = VARYING2.w;
    _entryPointOutput = f92;
}

//$$ShadowMapTexture=s1
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
