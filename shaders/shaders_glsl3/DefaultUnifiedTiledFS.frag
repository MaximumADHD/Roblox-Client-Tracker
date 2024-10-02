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
    vec2 f0 = VARYING0 * CB2[0].x;
    vec4 f1 = texture(DiffuseMapTexture, f0);
    vec4 f2 = texture(NormalMapTexture, f0);
    vec2 f3 = f2.wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    float f5 = sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0));
    vec3 f6 = vec3(f4, f5);
    vec2 f7 = f6.xy + (vec3((texture(NormalDetailMapTexture, f0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f8 = f6;
    f8.x = f7.x;
    vec3 f9 = f8;
    f9.y = f7.y;
    vec2 f10 = f9.xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    float f11 = f10.x;
    vec4 f12 = texture(SpecularMapTexture, f0);
    vec4 f13 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f1.w, CB2[3].w))) * f1.xyz) * (1.0 + (f11 * 0.20000000298023223876953125)), VARYING2.w);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f11) + (cross(f16, f15) * f10.y)) + (f16 * f5));
    vec3 f18 = f13.xyz;
    vec3 f19 = f18 * f18;
    vec4 f20 = f13;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    float f23 = length(VARYING4.xyz);
    vec3 f24 = VARYING4.xyz / vec3(f23);
    float f25 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f26 = 0.08900000154972076416015625 + (f12.y * 0.9110000133514404296875);
    vec3 f27 = -f24;
    vec3 f28 = reflect(f27, f17);
    float f29 = f12.x * f25;
    vec3 f30 = mix(vec3(0.039999999105930328369140625), f22.xyz, vec3(f29));
    vec3 f31 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f32 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f33 = VARYING3.yzx - (VARYING3.yzx * f32);
    vec4 f34 = texture(LightMapTexture, f33);
    vec4 f35 = texture(LightGridSkylightTexture, f33);
    vec4 f36 = vec4(clamp(f32, 0.0, 1.0));
    vec4 f37 = mix(f34, vec4(0.0), f36);
    vec4 f38 = mix(f35, vec4(1.0), f36);
    float f39 = f38.x;
    vec4 f40 = texture(ShadowMapTexture, f31.xy);
    float f41 = f31.z;
    float f42 = f26 * 5.0;
    vec3 f43 = vec4(f28, f42).xyz;
    vec3 f44 = textureLod(PrefilteredEnvIndoorTexture, f43, f42).xyz;
    vec3 f45;
    if (CB0[32].w == 0.0)
    {
        f45 = f44;
    }
    else
    {
        f45 = mix(f44, textureLod(PrefilteredEnvBlendTargetTexture, f43, f42).xyz, vec3(CB0[32].w));
    }
    vec4 f46 = texture(PrecomputedBRDFTexture, vec2(f26, max(9.9999997473787516355514526367188e-05, dot(f17, f24))));
    float f47 = f46.x;
    float f48 = f46.y;
    vec3 f49 = ((f30 * f47) + vec3(f48)) / vec3(f47 + f48);
    float f50 = 1.0 - f29;
    float f51 = f25 * f50;
    vec3 f52 = vec3(f50);
    vec3 f53 = f17 * f17;
    bvec3 f54 = lessThan(f17, vec3(0.0));
    vec3 f55 = vec3(f54.x ? f53.x : vec3(0.0).x, f54.y ? f53.y : vec3(0.0).y, f54.z ? f53.z : vec3(0.0).z);
    vec3 f56 = f53 - f55;
    float f57 = f56.x;
    float f58 = f56.y;
    float f59 = f56.z;
    float f60 = f55.x;
    float f61 = f55.y;
    float f62 = f55.z;
    vec3 f63 = -CB0[16].xyz;
    float f64 = dot(f17, f63) * ((1.0 - ((step(f40.x, f41) * clamp(CB0[29].z + (CB0[29].w * abs(f41 - 0.5)), 0.0, 1.0)) * f40.y)) * f38.y);
    vec3 f65 = normalize(f24 + f63);
    float f66 = clamp(f64, 0.0, 1.0);
    float f67 = f26 * f26;
    float f68 = max(0.001000000047497451305389404296875, dot(f17, f65));
    float f69 = dot(f63, f65);
    float f70 = 1.0 - f69;
    float f71 = f70 * f70;
    float f72 = (f71 * f71) * f70;
    vec3 f73 = vec3(f72) + (f30 * (1.0 - f72));
    float f74 = f67 * f67;
    float f75 = (((f68 * f74) - f68) * f68) + 1.0;
    vec3 f76 = (((((((f52 - (f49 * f51)) * (((((((CB0[40].xyz * f57) + (CB0[42].xyz * f58)) + (CB0[44].xyz * f59)) + (CB0[41].xyz * f60)) + (CB0[43].xyz * f61)) + (CB0[45].xyz * f62)) + (((((((CB0[34].xyz * f57) + (CB0[36].xyz * f58)) + (CB0[38].xyz * f59)) + (CB0[35].xyz * f60)) + (CB0[37].xyz * f61)) + (CB0[39].xyz * f62)) * f39))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f39)) * 1.0)) + ((((f52 - (f73 * f51)) * CB0[15].xyz) * f66) + (CB0[17].xyz * (f50 * clamp(-f64, 0.0, 1.0))))) + (f37.xyz * (f37.w * 120.0))) * f22.xyz) + (((mix(f45, textureLod(PrefilteredEnvTexture, f43, f42).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f28.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f39)) * f49) * f25) + (((f73 * (((f74 + (f74 * f74)) / (((f75 * f75) * ((f69 * 3.0) + 0.5)) * ((f68 * 0.75) + 0.25))) * f66)) * CB0[15].xyz) * 1.0));
    vec4 f77 = vec4(0.0);
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec4 f80 = f79;
    f80.w = VARYING2.w;
    float f81 = clamp(exp2((CB0[18].z * f23) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f82 = textureLod(PrefilteredEnvTexture, vec4(f27, 0.0).xyz, max(CB0[18].y, f81) * 5.0).xyz;
    bvec3 f83 = bvec3(!(CB0[18].w == 0.0));
    vec3 f84 = mix(vec3(f83.x ? CB0[19].xyz.x : f82.x, f83.y ? CB0[19].xyz.y : f82.y, f83.z ? CB0[19].xyz.z : f82.z), f80.xyz, vec3(f81));
    vec4 f85 = f80;
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec3 f88 = sqrt(clamp(f87.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
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
