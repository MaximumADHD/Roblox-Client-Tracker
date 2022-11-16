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
    vec2 f2 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f3 = VARYING0 * CB2[0].x;
    float f4 = f2.y;
    vec4 f5 = mix(texture(DiffuseMapTexture, f3 * CB2[1].y), texture(DiffuseMapTexture, f3), vec4(clamp((f2.x * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec4 f6 = texture(NormalMapTexture, f3);
    vec2 f7 = f6.wy * 2.0;
    vec2 f8 = f7 - vec2(1.0);
    float f9 = sqrt(clamp(1.0 + dot(vec2(1.0) - f7, f8), 0.0, 1.0));
    vec3 f10 = vec3(f8, f9);
    vec2 f11 = f10.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f12 = f10;
    f12.x = f11.x;
    vec3 f13 = f12;
    f13.y = f11.y;
    vec2 f14 = f13.xy * f4;
    float f15 = f14.x;
    vec4 f16 = texture(SpecularMapTexture, f3);
    vec4 f17 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f5.w, CB2[3].w))) * f5.xyz) * (1.0 + (f15 * 0.20000000298023223876953125)), VARYING2.w);
    float f18 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f19 = VARYING6.xyz * f18;
    vec3 f20 = VARYING5.xyz * f18;
    vec3 f21 = normalize(((f19 * f15) + (cross(f20, f19) * f14.y)) + (f20 * f9));
    vec3 f22 = f17.xyz;
    vec3 f23 = f22 * f22;
    vec4 f24 = f17;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    float f27 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f28 = 0.08900000154972076416015625 + (f16.y * 0.9110000133514404296875);
    vec3 f29 = -f1;
    vec3 f30 = reflect(f29, f21);
    float f31 = f16.x * f27;
    vec3 f32 = mix(vec3(0.039999999105930328369140625), f26.xyz, vec3(f31));
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
    vec3 f44 = -CB0[16].xyz;
    float f45 = dot(f21, f44) * ((1.0 - ((step(f42.x, f43) * clamp(CB0[29].z + (CB0[29].w * abs(f43 - 0.5)), 0.0, 1.0)) * f42.y)) * f40.y);
    vec3 f46 = normalize(f1 + f44);
    float f47 = clamp(f45, 0.0, 1.0);
    float f48 = f28 * f28;
    float f49 = max(0.001000000047497451305389404296875, dot(f21, f46));
    float f50 = dot(f44, f46);
    float f51 = 1.0 - f50;
    float f52 = f51 * f51;
    float f53 = (f52 * f52) * f51;
    vec3 f54 = vec3(f53) + (f32 * (1.0 - f53));
    float f55 = f48 * f48;
    float f56 = (((f49 * f55) - f49) * f49) + 1.0;
    float f57 = 1.0 - f31;
    float f58 = f27 * f57;
    vec3 f59 = vec3(f57);
    float f60 = f28 * 5.0;
    vec3 f61 = vec4(f30, f60).xyz;
    vec3 f62 = textureLod(PrefilteredEnvIndoorTexture, f61, f60).xyz;
    vec3 f63;
    if (CB0[32].w == 0.0)
    {
        f63 = f62;
    }
    else
    {
        f63 = mix(f62, textureLod(PrefilteredEnvBlendTargetTexture, f61, f60).xyz, vec3(CB0[32].w));
    }
    vec4 f64 = texture(PrecomputedBRDFTexture, vec2(f28, max(9.9999997473787516355514526367188e-05, dot(f21, f1))));
    float f65 = f64.x;
    float f66 = f64.y;
    vec3 f67 = ((f32 * f65) + vec3(f66)) / vec3(f65 + f66);
    vec3 f68 = f21 * f21;
    bvec3 f69 = lessThan(f21, vec3(0.0));
    vec3 f70 = vec3(f69.x ? f68.x : vec3(0.0).x, f69.y ? f68.y : vec3(0.0).y, f69.z ? f68.z : vec3(0.0).z);
    vec3 f71 = f68 - f70;
    float f72 = f71.x;
    float f73 = f71.y;
    float f74 = f71.z;
    float f75 = f70.x;
    float f76 = f70.y;
    float f77 = f70.z;
    vec3 f78 = ((((((f39.xyz * (f39.w * 120.0)) + ((((f59 - (f54 * f58)) * CB0[15].xyz) * f47) + (CB0[17].xyz * (f57 * clamp(-f45, 0.0, 1.0))))) + (((f59 - (f67 * f58)) * (((((((CB0[40].xyz * f72) + (CB0[42].xyz * f73)) + (CB0[44].xyz * f74)) + (CB0[41].xyz * f75)) + (CB0[43].xyz * f76)) + (CB0[45].xyz * f77)) + (((((((CB0[34].xyz * f72) + (CB0[36].xyz * f73)) + (CB0[38].xyz * f74)) + (CB0[35].xyz * f75)) + (CB0[37].xyz * f76)) + (CB0[39].xyz * f77)) * f41))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f41)) * 1.0)) + vec3(((1.0 - f16.w) * 2.0) * f4)) * f26.xyz) + ((((f54 * (((f55 + (f55 * f55)) / max(((f56 * f56) * ((f50 * 3.0) + 0.5)) * ((f49 * 0.75) + 0.25), 7.0000001869630068540573120117188e-05)) * f47)) * CB0[15].xyz) * 1.0) + ((mix(f63, textureLod(PrefilteredEnvTexture, f61, f60).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f41)) * f67) * f27));
    vec4 f79 = vec4(0.0);
    f79.x = f78.x;
    vec4 f80 = f79;
    f80.y = f78.y;
    vec4 f81 = f80;
    f81.z = f78.z;
    vec4 f82 = f81;
    f82.w = VARYING2.w;
    float f83 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f84 = textureLod(PrefilteredEnvTexture, vec4(f29, 0.0).xyz, max(CB0[18].y, f83) * 5.0).xyz;
    bvec3 f85 = bvec3(!(CB0[18].w == 0.0));
    vec3 f86 = mix(vec3(f85.x ? CB0[19].xyz.x : f84.x, f85.y ? CB0[19].xyz.y : f84.y, f85.z ? CB0[19].xyz.z : f84.z), f82.xyz, vec3(f83));
    vec4 f87 = f82;
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec4 f89 = f88;
    f89.z = f86.z;
    vec3 f90 = sqrt(clamp(f89.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f91 = f89;
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec4 f94 = f93;
    f94.w = VARYING2.w;
    _entryPointOutput = f94;
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
