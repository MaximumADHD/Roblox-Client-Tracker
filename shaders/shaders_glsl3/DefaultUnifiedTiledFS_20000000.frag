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
    vec3 f43 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f28;
    bvec3 f44 = bvec3(!(CB0[58].x == 2.0));
    vec3 f45 = vec4(f28, f42).xyz;
    vec3 f46 = textureLod(PrefilteredEnvIndoorTexture, f45, f42).xyz;
    vec3 f47;
    if (CB0[32].w == 0.0)
    {
        f47 = f46;
    }
    else
    {
        f47 = mix(f46, textureLod(PrefilteredEnvBlendTargetTexture, f45, f42).xyz, vec3(CB0[32].w));
    }
    vec4 f48 = texture(PrecomputedBRDFTexture, vec2(f26, max(9.9999997473787516355514526367188e-05, dot(f17, f24))));
    float f49 = f48.x;
    float f50 = f48.y;
    vec3 f51 = ((f30 * f49) + vec3(f50)) / vec3(f49 + f50);
    float f52 = 1.0 - f29;
    float f53 = f25 * f52;
    vec3 f54 = vec3(f52);
    vec3 f55 = f17 * f17;
    bvec3 f56 = lessThan(f17, vec3(0.0));
    vec3 f57 = vec3(f56.x ? f55.x : vec3(0.0).x, f56.y ? f55.y : vec3(0.0).y, f56.z ? f55.z : vec3(0.0).z);
    vec3 f58 = f55 - f57;
    float f59 = f58.x;
    float f60 = f58.y;
    float f61 = f58.z;
    float f62 = f57.x;
    float f63 = f57.y;
    float f64 = f57.z;
    vec3 f65 = -CB0[16].xyz;
    float f66 = dot(f17, f65) * ((1.0 - ((step(f40.x, f41) * clamp(CB0[29].z + (CB0[29].w * abs(f41 - 0.5)), 0.0, 1.0)) * f40.y)) * f38.y);
    vec3 f67 = normalize(f24 + f65);
    float f68 = clamp(f66, 0.0, 1.0);
    float f69 = f26 * f26;
    float f70 = max(0.001000000047497451305389404296875, dot(f17, f67));
    float f71 = dot(f65, f67);
    float f72 = 1.0 - f71;
    float f73 = f72 * f72;
    float f74 = (f73 * f73) * f72;
    vec3 f75 = vec3(f74) + (f30 * (1.0 - f74));
    float f76 = f69 * f69;
    float f77 = (((f70 * f76) - f70) * f70) + 1.0;
    vec3 f78 = (((((((f54 - (f51 * f53)) * (((((((CB0[40].xyz * f59) + (CB0[42].xyz * f60)) + (CB0[44].xyz * f61)) + (CB0[41].xyz * f62)) + (CB0[43].xyz * f63)) + (CB0[45].xyz * f64)) + (((((((CB0[34].xyz * f59) + (CB0[36].xyz * f60)) + (CB0[38].xyz * f61)) + (CB0[35].xyz * f62)) + (CB0[37].xyz * f63)) + (CB0[39].xyz * f64)) * f39))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f39)) * 1.0)) + ((((f54 - (f75 * f53)) * CB0[15].xyz) * f68) + (CB0[17].xyz * (f52 * clamp(-f66, 0.0, 1.0))))) + (f37.xyz * (f37.w * 120.0))) * f22.xyz) + (((mix(f47, textureLod(PrefilteredEnvTexture, vec4(vec3(f44.x ? f43.x : f28.x, f44.y ? f43.y : f28.y, f44.z ? f43.z : f28.z), f42).xyz, f42).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f28.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f39)) * f51) * f25) + (((f75 * (((f76 + (f76 * f76)) / (((f77 * f77) * ((f71 * 3.0) + 0.5)) * ((f70 * 0.75) + 0.25))) * f68)) * CB0[15].xyz) * 1.0));
    vec4 f79 = vec4(0.0);
    f79.x = f78.x;
    vec4 f80 = f79;
    f80.y = f78.y;
    vec4 f81 = f80;
    f81.z = f78.z;
    vec4 f82 = f81;
    f82.w = VARYING2.w;
    float f83 = clamp(exp2((CB0[18].z * f23) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f84 = textureLod(PrefilteredEnvTexture, vec4(f27, 0.0).xyz, max(CB0[18].y, f83) * 5.0).xyz;
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
