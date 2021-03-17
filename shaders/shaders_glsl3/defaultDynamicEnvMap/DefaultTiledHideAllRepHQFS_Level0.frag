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
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

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
    float f3 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f4 = VARYING0 * CB2[0].x;
    vec4 f5 = texture(DiffuseMapTexture, f4 * CB2[1].y);
    vec4 f6 = texture(DiffuseMapTexture, f4);
    vec4 f7 = mix(f5, f6, vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec4 f8 = texture(NormalMapTexture, f4 * CB2[1].z);
    vec4 f9 = texture(NormalMapTexture, f4);
    vec2 f10 = mix(f8, f9, vec4(clamp((f3 * CB2[3].y) - (CB2[2].y * CB2[3].y), 0.0, 1.0))).wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0));
    vec4 f13 = texture(NormalDetailMapTexture, f4 * CB2[0].w);
    vec2 f14 = (vec3(f11, f12).xy + (vec3((f13.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f3;
    float f15 = f14.x;
    vec4 f16 = texture(StudsMapTexture, f2);
    vec4 f17 = texture(SpecularMapTexture, f4 * CB2[1].w);
    vec4 f18 = texture(SpecularMapTexture, f4);
    vec4 f19 = mix(f17, f18, vec4(clamp((f3 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f20 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f21 = VARYING6.xyz * f20;
    vec3 f22 = VARYING5.xyz * f20;
    vec3 f23 = normalize(((f21 * f15) + (cross(f22, f21) * f14.y)) + (f22 * f12));
    vec3 f24 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f7.w + CB2[2].w, 0.0, 1.0))) * f7.xyz) * (1.0 + (f15 * CB2[0].z))) * (f16.x * 2.0), VARYING2.w).xyz;
    vec3 f25 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f26 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f27 = VARYING3.yzx - (VARYING3.yzx * f26);
    vec4 f28 = texture(LightMapTexture, f27);
    vec4 f29 = texture(LightGridSkylightTexture, f27);
    vec4 f30 = vec4(clamp(f26, 0.0, 1.0));
    vec4 f31 = mix(f28, vec4(0.0), f30);
    vec4 f32 = mix(f29, vec4(1.0), f30);
    float f33 = f32.x;
    vec4 f34 = texture(ShadowMapTexture, f25.xy);
    float f35 = f25.z;
    vec3 f36 = (f24 * f24).xyz;
    float f37 = CB0[26].w * f3;
    float f38 = max(f19.y, 0.04500000178813934326171875);
    vec3 f39 = reflect(-f1, f23);
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
    vec4 f44 = texture(PrecomputedBRDFTexture, vec2(f38, max(9.9999997473787516355514526367188e-05, dot(f23, f1))));
    float f45 = f19.x * f37;
    vec3 f46 = mix(vec3(0.039999999105930328369140625), f36, vec3(f45));
    vec3 f47 = -CB0[11].xyz;
    float f48 = dot(f23, f47) * ((1.0 - ((step(f34.x, f35) * clamp(CB0[24].z + (CB0[24].w * abs(f35 - 0.5)), 0.0, 1.0)) * f34.y)) * f32.y);
    vec3 f49 = normalize(f47 + f1);
    float f50 = clamp(f48, 0.0, 1.0);
    float f51 = f38 * f38;
    float f52 = max(0.001000000047497451305389404296875, dot(f23, f49));
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
    vec3 f66 = f23 * f23;
    bvec3 f67 = lessThan(f23, vec3(0.0));
    vec3 f68 = vec3(f67.x ? f66.x : vec3(0.0).x, f67.y ? f66.y : vec3(0.0).y, f67.z ? f66.z : vec3(0.0).z);
    vec3 f69 = f66 - f68;
    float f70 = f69.x;
    float f71 = f69.y;
    float f72 = f69.z;
    float f73 = f68.x;
    float f74 = f68.y;
    float f75 = f68.z;
    vec3 f76 = ((((((((f62 - (f57 * f61)) * CB0[10].xyz) * f50) + (CB0[12].xyz * (f60 * clamp(-f48, 0.0, 1.0)))) + ((f31.xyz * (f31.w * 120.0)).xyz * 1.0)) + ((f62 - (f65 * f61)) * (((((((CB0[35].xyz * f70) + (CB0[37].xyz * f71)) + (CB0[39].xyz * f72)) + (CB0[36].xyz * f73)) + (CB0[38].xyz * f74)) + (CB0[40].xyz * f75)) + (((((((CB0[29].xyz * f70) + (CB0[31].xyz * f71)) + (CB0[33].xyz * f72)) + (CB0[30].xyz * f73)) + (CB0[32].xyz * f74)) + (CB0[34].xyz * f75)) * f33)))) + ((CB0[27].xyz + (CB0[28].xyz * f33)) * 1.0)) * f36) + (((f57 * (((f58 + (f58 * f58)) / (((f59 * f59) * ((f53 * 3.0) + 0.5)) * ((f52 * 0.75) + 0.25))) * f50)) * CB0[10].xyz) + ((mix(f43, textureLod(PrefilteredEnvTexture, f41, f40).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f39.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f33)) * f65) * f37));
    vec4 f77 = vec4(f76.x, f76.y, f76.z, vec4(0.0).w);
    f77.w = VARYING2.w;
    float f78 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f79 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f78) * 5.0).xyz;
    bvec3 f80 = bvec3(CB0[13].w != 0.0);
    vec3 f81 = sqrt(clamp(mix(vec3(f80.x ? CB0[14].xyz.x : f79.x, f80.y ? CB0[14].xyz.y : f79.y, f80.z ? CB0[14].xyz.z : f79.z), f77.xyz, vec3(f78)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f82 = vec4(f81.x, f81.y, f81.z, f77.w);
    f82.w = VARYING2.w;
    _entryPointOutput = f82;
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
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
