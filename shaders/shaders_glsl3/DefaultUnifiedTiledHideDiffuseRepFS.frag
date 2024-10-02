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
    vec4 f2 = mix(texture(DiffuseMapTexture, f1 * CB2[1].y), texture(DiffuseMapTexture, f1), vec4(clamp((f0.x * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec4 f3 = texture(NormalMapTexture, f1);
    vec2 f4 = f3.wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec3 f7 = vec3(f5, f6);
    vec2 f8 = f7.xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f9 = f7;
    f9.x = f8.x;
    vec3 f10 = f9;
    f10.y = f8.y;
    vec2 f11 = f10.xy * f0.y;
    float f12 = f11.x;
    vec4 f13 = texture(SpecularMapTexture, f1);
    vec4 f14 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f2.w, CB2[3].w))) * f2.xyz) * (1.0 + (f12 * 0.20000000298023223876953125)), VARYING2.w);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f12) + (cross(f17, f16) * f11.y)) + (f17 * f6));
    vec3 f19 = f14.xyz;
    vec3 f20 = f19 * f19;
    vec4 f21 = f14;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    float f24 = length(VARYING4.xyz);
    vec3 f25 = VARYING4.xyz / vec3(f24);
    float f26 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f27 = 0.08900000154972076416015625 + (f13.y * 0.9110000133514404296875);
    vec3 f28 = -f25;
    vec3 f29 = reflect(f28, f18);
    float f30 = f13.x * f26;
    vec3 f31 = mix(vec3(0.039999999105930328369140625), f23.xyz, vec3(f30));
    vec3 f32 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f33 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f34 = VARYING3.yzx - (VARYING3.yzx * f33);
    vec4 f35 = texture(LightMapTexture, f34);
    vec4 f36 = texture(LightGridSkylightTexture, f34);
    vec4 f37 = vec4(clamp(f33, 0.0, 1.0));
    vec4 f38 = mix(f35, vec4(0.0), f37);
    vec4 f39 = mix(f36, vec4(1.0), f37);
    float f40 = f39.x;
    vec4 f41 = texture(ShadowMapTexture, f32.xy);
    float f42 = f32.z;
    float f43 = f27 * 5.0;
    vec3 f44 = vec4(f29, f43).xyz;
    vec3 f45 = textureLod(PrefilteredEnvIndoorTexture, f44, f43).xyz;
    vec3 f46;
    if (CB0[32].w == 0.0)
    {
        f46 = f45;
    }
    else
    {
        f46 = mix(f45, textureLod(PrefilteredEnvBlendTargetTexture, f44, f43).xyz, vec3(CB0[32].w));
    }
    vec4 f47 = texture(PrecomputedBRDFTexture, vec2(f27, max(9.9999997473787516355514526367188e-05, dot(f18, f25))));
    float f48 = f47.x;
    float f49 = f47.y;
    vec3 f50 = ((f31 * f48) + vec3(f49)) / vec3(f48 + f49);
    float f51 = 1.0 - f30;
    float f52 = f26 * f51;
    vec3 f53 = vec3(f51);
    vec3 f54 = f18 * f18;
    bvec3 f55 = lessThan(f18, vec3(0.0));
    vec3 f56 = vec3(f55.x ? f54.x : vec3(0.0).x, f55.y ? f54.y : vec3(0.0).y, f55.z ? f54.z : vec3(0.0).z);
    vec3 f57 = f54 - f56;
    float f58 = f57.x;
    float f59 = f57.y;
    float f60 = f57.z;
    float f61 = f56.x;
    float f62 = f56.y;
    float f63 = f56.z;
    vec3 f64 = -CB0[16].xyz;
    float f65 = dot(f18, f64) * ((1.0 - ((step(f41.x, f42) * clamp(CB0[29].z + (CB0[29].w * abs(f42 - 0.5)), 0.0, 1.0)) * f41.y)) * f39.y);
    vec3 f66 = normalize(f25 + f64);
    float f67 = clamp(f65, 0.0, 1.0);
    float f68 = f27 * f27;
    float f69 = max(0.001000000047497451305389404296875, dot(f18, f66));
    float f70 = dot(f64, f66);
    float f71 = 1.0 - f70;
    float f72 = f71 * f71;
    float f73 = (f72 * f72) * f71;
    vec3 f74 = vec3(f73) + (f31 * (1.0 - f73));
    float f75 = f68 * f68;
    float f76 = (((f69 * f75) - f69) * f69) + 1.0;
    vec3 f77 = (((((((f53 - (f50 * f52)) * (((((((CB0[40].xyz * f58) + (CB0[42].xyz * f59)) + (CB0[44].xyz * f60)) + (CB0[41].xyz * f61)) + (CB0[43].xyz * f62)) + (CB0[45].xyz * f63)) + (((((((CB0[34].xyz * f58) + (CB0[36].xyz * f59)) + (CB0[38].xyz * f60)) + (CB0[35].xyz * f61)) + (CB0[37].xyz * f62)) + (CB0[39].xyz * f63)) * f40))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f40)) * 1.0)) + ((((f53 - (f74 * f52)) * CB0[15].xyz) * f67) + (CB0[17].xyz * (f51 * clamp(-f65, 0.0, 1.0))))) + (f38.xyz * (f38.w * 120.0))) * f23.xyz) + (((mix(f46, textureLod(PrefilteredEnvTexture, f44, f43).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f29.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f40)) * f50) * f26) + (((f74 * (((f75 + (f75 * f75)) / (((f76 * f76) * ((f70 * 3.0) + 0.5)) * ((f69 * 0.75) + 0.25))) * f67)) * CB0[15].xyz) * 1.0));
    vec4 f78 = vec4(0.0);
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec4 f81 = f80;
    f81.w = VARYING2.w;
    float f82 = clamp(exp2((CB0[18].z * f24) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f83 = textureLod(PrefilteredEnvTexture, vec4(f28, 0.0).xyz, max(CB0[18].y, f82) * 5.0).xyz;
    bvec3 f84 = bvec3(!(CB0[18].w == 0.0));
    vec3 f85 = mix(vec3(f84.x ? CB0[19].xyz.x : f83.x, f84.y ? CB0[19].xyz.y : f83.y, f84.z ? CB0[19].xyz.z : f83.z), f81.xyz, vec3(f82));
    vec4 f86 = f81;
    f86.x = f85.x;
    vec4 f87 = f86;
    f87.y = f85.y;
    vec4 f88 = f87;
    f88.z = f85.z;
    vec3 f89 = sqrt(clamp(f88.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f90 = f88;
    f90.x = f89.x;
    vec4 f91 = f90;
    f91.y = f89.y;
    vec4 f92 = f91;
    f92.z = f89.z;
    vec4 f93 = f92;
    f93.w = VARYING2.w;
    _entryPointOutput = f93;
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
