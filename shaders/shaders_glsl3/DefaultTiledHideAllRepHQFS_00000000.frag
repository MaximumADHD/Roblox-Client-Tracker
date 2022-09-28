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
    vec3 f31 = reflect(-f1, f23);
    float f32 = f18.x * f29;
    vec3 f33 = mix(vec3(0.039999999105930328369140625), f28.xyz, vec3(f32));
    vec3 f34 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f35 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f36 = VARYING3.yzx - (VARYING3.yzx * f35);
    vec4 f37 = texture(LightMapTexture, f36);
    vec4 f38 = texture(LightGridSkylightTexture, f36);
    vec4 f39 = vec4(clamp(f35, 0.0, 1.0));
    vec4 f40 = mix(f37, vec4(0.0), f39);
    vec4 f41 = mix(f38, vec4(1.0), f39);
    float f42 = f41.x;
    vec4 f43 = texture(ShadowMapTexture, f34.xy);
    float f44 = f34.z;
    vec3 f45 = -CB0[16].xyz;
    float f46 = dot(f23, f45) * ((1.0 - ((step(f43.x, f44) * clamp(CB0[29].z + (CB0[29].w * abs(f44 - 0.5)), 0.0, 1.0)) * f43.y)) * f41.y);
    vec3 f47 = normalize(f1 - CB0[16].xyz);
    float f48 = clamp(f46, 0.0, 1.0);
    float f49 = f30 * f30;
    float f50 = max(0.001000000047497451305389404296875, dot(f23, f47));
    float f51 = dot(f45, f47);
    float f52 = 1.0 - f51;
    float f53 = f52 * f52;
    float f54 = (f53 * f53) * f52;
    vec3 f55 = vec3(f54) + (f33 * (1.0 - f54));
    float f56 = f49 * f49;
    float f57 = (((f50 * f56) - f50) * f50) + 1.0;
    float f58 = 1.0 - f32;
    float f59 = f29 * f58;
    vec3 f60 = vec3(f58);
    float f61 = f30 * 5.0;
    vec3 f62 = vec4(f31, f61).xyz;
    vec3 f63 = textureLod(PrefilteredEnvIndoorTexture, f62, f61).xyz;
    vec3 f64;
    if (CB0[32].w == 0.0)
    {
        f64 = f63;
    }
    else
    {
        f64 = mix(f63, textureLod(PrefilteredEnvBlendTargetTexture, f62, f61).xyz, vec3(CB0[32].w));
    }
    vec4 f65 = texture(PrecomputedBRDFTexture, vec2(f30, max(9.9999997473787516355514526367188e-05, dot(f23, f1))));
    float f66 = f65.x;
    float f67 = f65.y;
    vec3 f68 = ((f33 * f66) + vec3(f67)) / vec3(f66 + f67);
    vec3 f69 = f23 * f23;
    bvec3 f70 = lessThan(f23, vec3(0.0));
    vec3 f71 = vec3(f70.x ? f69.x : vec3(0.0).x, f70.y ? f69.y : vec3(0.0).y, f70.z ? f69.z : vec3(0.0).z);
    vec3 f72 = f69 - f71;
    float f73 = f72.x;
    float f74 = f72.y;
    float f75 = f72.z;
    float f76 = f71.x;
    float f77 = f71.y;
    float f78 = f71.z;
    vec3 f79 = ((((((f40.xyz * (f40.w * 120.0)) * 1.0) + ((((f60 - (f55 * f59)) * CB0[15].xyz) * f48) + (CB0[17].xyz * (f58 * clamp(-f46, 0.0, 1.0))))) + ((f60 - (f68 * f59)) * (((((((CB0[40].xyz * f73) + (CB0[42].xyz * f74)) + (CB0[44].xyz * f75)) + (CB0[41].xyz * f76)) + (CB0[43].xyz * f77)) + (CB0[45].xyz * f78)) + (((((((CB0[34].xyz * f73) + (CB0[36].xyz * f74)) + (CB0[38].xyz * f75)) + (CB0[35].xyz * f76)) + (CB0[37].xyz * f77)) + (CB0[39].xyz * f78)) * f42)))) + (CB0[32].xyz + ((CB0[33].xyz * 1.0) * f42))) * f28.xyz) + ((((f55 * (min((f56 + (f56 * f56)) / (((f57 * f57) * ((f51 * 3.0) + 0.5)) * ((f50 * 0.75) + 0.25)), 65504.0) * f48)) * CB0[15].xyz) * 1.0) + ((mix(f64, textureLod(PrefilteredEnvTexture, f62, f61).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f31.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f42)) * f68) * f29));
    vec4 f80 = vec4(0.0);
    f80.x = f79.x;
    vec4 f81 = f80;
    f81.y = f79.y;
    vec4 f82 = f81;
    f82.z = f79.z;
    vec4 f83 = f82;
    f83.w = VARYING2.w;
    float f84 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f85 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f84) * 5.0).xyz;
    bvec3 f86 = bvec3(!(CB0[18].w == 0.0));
    vec3 f87 = mix(vec3(f86.x ? CB0[19].xyz.x : f85.x, f86.y ? CB0[19].xyz.y : f85.y, f86.z ? CB0[19].xyz.z : f85.z), f83.xyz, vec3(f84));
    vec4 f88 = f83;
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec4 f90 = f89;
    f90.z = f87.z;
    vec3 f91 = sqrt(clamp(f90.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f92 = f90;
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    vec4 f95 = f94;
    f95.w = VARYING2.w;
    _entryPointOutput = f95;
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
