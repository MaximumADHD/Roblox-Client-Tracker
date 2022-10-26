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
    vec3 f24 = f19.xyz;
    vec3 f25 = f24 * f24;
    vec4 f26 = f19;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    float f29 = CB0[31].w * f2;
    float f30 = 0.08900000154972076416015625 + (f18.y * 0.9110000133514404296875);
    vec3 f31 = -f1;
    vec3 f32 = reflect(f31, f23);
    float f33 = f18.x * f29;
    vec3 f34 = mix(vec3(0.039999999105930328369140625), f28.xyz, vec3(f33));
    vec3 f35 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f36 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f37 = VARYING3.yzx - (VARYING3.yzx * f36);
    vec4 f38 = texture(LightMapTexture, f37);
    vec4 f39 = texture(LightGridSkylightTexture, f37);
    vec4 f40 = vec4(clamp(f36, 0.0, 1.0));
    vec4 f41 = mix(f38, vec4(0.0), f40);
    vec4 f42 = mix(f39, vec4(1.0), f40);
    float f43 = f42.x;
    vec4 f44 = texture(ShadowMapTexture, f35.xy);
    float f45 = f35.z;
    vec3 f46 = -CB0[16].xyz;
    float f47 = dot(f23, f46) * ((1.0 - ((step(f44.x, f45) * clamp(CB0[29].z + (CB0[29].w * abs(f45 - 0.5)), 0.0, 1.0)) * f44.y)) * f42.y);
    vec3 f48 = normalize(f1 - CB0[16].xyz);
    float f49 = clamp(f47, 0.0, 1.0);
    float f50 = f30 * f30;
    float f51 = max(0.001000000047497451305389404296875, dot(f23, f48));
    float f52 = dot(f46, f48);
    float f53 = 1.0 - f52;
    float f54 = f53 * f53;
    float f55 = (f54 * f54) * f53;
    vec3 f56 = vec3(f55) + (f34 * (1.0 - f55));
    float f57 = f50 * f50;
    float f58 = (((f51 * f57) - f51) * f51) + 1.0;
    float f59 = 1.0 - f33;
    float f60 = f29 * f59;
    vec3 f61 = vec3(f59);
    float f62 = f30 * 5.0;
    vec3 f63 = vec4(f32, f62).xyz;
    vec3 f64 = textureLod(PrefilteredEnvIndoorTexture, f63, f62).xyz;
    vec3 f65;
    if (CB0[32].w == 0.0)
    {
        f65 = f64;
    }
    else
    {
        f65 = mix(f64, textureLod(PrefilteredEnvBlendTargetTexture, f63, f62).xyz, vec3(CB0[32].w));
    }
    vec4 f66 = texture(PrecomputedBRDFTexture, vec2(f30, max(9.9999997473787516355514526367188e-05, dot(f23, f1))));
    float f67 = f66.x;
    float f68 = f66.y;
    vec3 f69 = ((f34 * f67) + vec3(f68)) / vec3(f67 + f68);
    vec3 f70 = f23 * f23;
    bvec3 f71 = lessThan(f23, vec3(0.0));
    vec3 f72 = vec3(f71.x ? f70.x : vec3(0.0).x, f71.y ? f70.y : vec3(0.0).y, f71.z ? f70.z : vec3(0.0).z);
    vec3 f73 = f70 - f72;
    float f74 = f73.x;
    float f75 = f73.y;
    float f76 = f73.z;
    float f77 = f72.x;
    float f78 = f72.y;
    float f79 = f72.z;
    vec3 f80 = ((((((f41.xyz * (f41.w * 120.0)) * 1.0) + ((((f61 - (f56 * f60)) * CB0[15].xyz) * f49) + (CB0[17].xyz * (f59 * clamp(-f47, 0.0, 1.0))))) + ((f61 - (f69 * f60)) * (((((((CB0[40].xyz * f74) + (CB0[42].xyz * f75)) + (CB0[44].xyz * f76)) + (CB0[41].xyz * f77)) + (CB0[43].xyz * f78)) + (CB0[45].xyz * f79)) + (((((((CB0[34].xyz * f74) + (CB0[36].xyz * f75)) + (CB0[38].xyz * f76)) + (CB0[35].xyz * f77)) + (CB0[37].xyz * f78)) + (CB0[39].xyz * f79)) * f43)))) + ((CB0[32].xyz + (CB0[33].xyz * f43)) * 1.0)) * f28.xyz) + ((((f56 * (((f57 + (f57 * f57)) / max(((f58 * f58) * ((f52 * 3.0) + 0.5)) * ((f51 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f49)) * CB0[15].xyz) * 1.0) + ((mix(f65, textureLod(PrefilteredEnvTexture, f63, f62).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f32.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f43)) * f69) * f29));
    vec4 f81 = vec4(0.0);
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    vec4 f84 = f83;
    f84.w = VARYING2.w;
    float f85 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f86 = textureLod(PrefilteredEnvTexture, vec4(f31, 0.0).xyz, max(CB0[18].y, f85) * 5.0).xyz;
    bvec3 f87 = bvec3(!(CB0[18].w == 0.0));
    vec3 f88 = mix(vec3(f87.x ? CB0[19].xyz.x : f86.x, f87.y ? CB0[19].xyz.y : f86.y, f87.z ? CB0[19].xyz.z : f86.z), f84.xyz, vec3(f85));
    vec4 f89 = f84;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    vec3 f92 = sqrt(clamp(f91.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f93 = f91;
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    vec4 f96 = f95;
    f96.w = VARYING2.w;
    _entryPointOutput = f96;
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
