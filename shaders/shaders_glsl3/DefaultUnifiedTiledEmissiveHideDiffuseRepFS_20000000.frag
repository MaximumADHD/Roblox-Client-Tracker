#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialParams.h>
uniform vec4 CB0[61];
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
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    float f2 = f0.y;
    vec4 f3 = texture(DiffuseMapTexture, f1);
    vec4 f4 = texture(NormalMapTexture, f1);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * f2;
    float f13 = f12.x;
    vec4 f14 = texture(SpecularMapTexture, f1);
    vec4 f15 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f3.w, CB2[3].w))) * f3.xyz) * (1.0 + (f13 * 0.20000000298023223876953125)), VARYING2.w);
    float f16 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f17 = VARYING6.xyz * f16;
    vec3 f18 = VARYING5.xyz * f16;
    vec3 f19 = normalize(((f17 * f13) + (cross(f18, f17) * f12.y)) + (f18 * f7));
    vec3 f20 = f15.xyz;
    vec3 f21 = f20 * f20;
    vec4 f22 = f15;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    float f25 = length(VARYING4.xyz);
    vec3 f26 = VARYING4.xyz / vec3(f25);
    float f27 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f28 = 0.08900000154972076416015625 + (f14.y * 0.9110000133514404296875);
    vec3 f29 = -f26;
    vec3 f30 = reflect(f29, f19);
    float f31 = f14.x * f27;
    vec3 f32 = mix(vec3(0.039999999105930328369140625), f24.xyz, vec3(f31));
    vec3 f33 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f34 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f35 = VARYING3.yzx - (VARYING3.yzx * f34);
    vec4 f36 = texture(LightMapTexture, f35);
    vec4 f37 = texture(LightGridSkylightTexture, f35);
    vec4 f38 = vec4(clamp(f34, 0.0, 1.0));
    vec4 f39 = mix(f36, vec4(0.0), f38);
    vec4 f40 = mix(f37, vec4(1.0), f38);
    float f41 = f40.x;
    vec4 f42 = texture(ShadowMapTexture, f33.xy);
    float f43 = f33.z;
    float f44 = f28 * 5.0;
    vec3 f45 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f30;
    bvec3 f46 = bvec3(!(CB0[58].x == 2.0));
    vec3 f47 = vec4(f30, f44).xyz;
    vec3 f48 = textureLod(PrefilteredEnvIndoorTexture, f47, f44).xyz;
    vec3 f49;
    if (CB0[32].w == 0.0)
    {
        f49 = f48;
    }
    else
    {
        f49 = mix(f48, textureLod(PrefilteredEnvBlendTargetTexture, f47, f44).xyz, vec3(CB0[32].w));
    }
    vec4 f50 = texture(PrecomputedBRDFTexture, vec2(f28, max(9.9999997473787516355514526367188e-05, dot(f19, f26))));
    float f51 = f50.x;
    float f52 = f50.y;
    vec3 f53 = ((f32 * f51) + vec3(f52)) / vec3(f51 + f52);
    float f54 = 1.0 - f31;
    float f55 = f27 * f54;
    vec3 f56 = vec3(f54);
    vec3 f57 = f19 * f19;
    bvec3 f58 = lessThan(f19, vec3(0.0));
    vec3 f59 = vec3(f58.x ? f57.x : vec3(0.0).x, f58.y ? f57.y : vec3(0.0).y, f58.z ? f57.z : vec3(0.0).z);
    vec3 f60 = f57 - f59;
    float f61 = f60.x;
    float f62 = f60.y;
    float f63 = f60.z;
    float f64 = f59.x;
    float f65 = f59.y;
    float f66 = f59.z;
    vec3 f67 = -CB0[16].xyz;
    float f68 = dot(f19, f67) * ((1.0 - ((step(f42.x, f43) * clamp(CB0[29].z + (CB0[29].w * abs(f43 - 0.5)), 0.0, 1.0)) * f42.y)) * f40.y);
    vec3 f69 = normalize(f26 + f67);
    float f70 = clamp(f68, 0.0, 1.0);
    float f71 = f28 * f28;
    float f72 = max(0.001000000047497451305389404296875, dot(f19, f69));
    float f73 = dot(f67, f69);
    float f74 = 1.0 - f73;
    float f75 = f74 * f74;
    float f76 = (f75 * f75) * f74;
    vec3 f77 = vec3(f76) + (f32 * (1.0 - f76));
    float f78 = f71 * f71;
    float f79 = (((f72 * f78) - f72) * f72) + 1.0;
    vec3 f80 = (((((vec3((f14.z * 2.0) * f2) + (((f56 - (f53 * f55)) * (((((((CB0[40].xyz * f61) + (CB0[42].xyz * f62)) + (CB0[44].xyz * f63)) + (CB0[41].xyz * f64)) + (CB0[43].xyz * f65)) + (CB0[45].xyz * f66)) + (((((((CB0[34].xyz * f61) + (CB0[36].xyz * f62)) + (CB0[38].xyz * f63)) + (CB0[35].xyz * f64)) + (CB0[37].xyz * f65)) + (CB0[39].xyz * f66)) * f41))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f41)) * 1.0)) + ((((f56 - (f77 * f55)) * CB0[15].xyz) * f70) + (CB0[17].xyz * (f54 * clamp(-f68, 0.0, 1.0))))) + (f39.xyz * (f39.w * 120.0))) * f24.xyz) + (((mix(f49, textureLod(PrefilteredEnvTexture, vec4(vec3(f46.x ? f45.x : f30.x, f46.y ? f45.y : f30.y, f46.z ? f45.z : f30.z), f44).xyz, f44).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f41)) * f53) * f27) + (((f77 * (((f78 + (f78 * f78)) / (((f79 * f79) * ((f73 * 3.0) + 0.5)) * ((f72 * 0.75) + 0.25))) * f70)) * CB0[15].xyz) * 1.0));
    vec4 f81 = vec4(0.0);
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    vec4 f84 = f83;
    f84.w = VARYING2.w;
    float f85 = clamp(exp2((CB0[18].z * f25) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f86 = textureLod(PrefilteredEnvTexture, vec4(f29, 0.0).xyz, max(CB0[18].y, f85) * 5.0).xyz;
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
