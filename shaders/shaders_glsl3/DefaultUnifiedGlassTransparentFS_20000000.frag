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
    vec3 f14 = (VARYING2.xyz * f3.xyz) * (1.0 + (f13 * 0.20000000298023223876953125));
    vec4 f15 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f16 = texture(SpecularMapTexture, f1);
    float f17 = VARYING2.w * 2.0;
    float f18 = clamp((f17 - 1.0) + f3.w, 0.0, 1.0);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f13) + (cross(f21, f20) * f12.y)) + (f21 * (f7 * 10.0)));
    vec3 f23 = f14 * f14;
    float f24 = length(VARYING4.xyz);
    vec3 f25 = VARYING4.xyz / vec3(f24);
    float f26 = 0.08900000154972076416015625 + (mix(f15, f16, vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f27 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec3 f28 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f29 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f30 = VARYING3.yzx - (VARYING3.yzx * f29);
    vec4 f31 = texture(LightMapTexture, f30);
    vec4 f32 = texture(LightGridSkylightTexture, f30);
    vec4 f33 = vec4(clamp(f29, 0.0, 1.0));
    vec4 f34 = mix(f31, vec4(0.0), f33);
    vec4 f35 = mix(f32, vec4(1.0), f33);
    vec3 f36 = f34.xyz * (f34.w * 120.0);
    float f37 = f35.x;
    vec4 f38 = texture(ShadowMapTexture, f28.xy);
    float f39 = f28.z;
    float f40 = max(9.9999997473787516355514526367188e-05, dot(f22, f25));
    float f41 = 1.0 - f40;
    vec3 f42 = -f25;
    vec3 f43 = reflect(f42, f22);
    float f44 = f26 * 5.0;
    vec3 f45 = vec4(f43, f44).xyz;
    vec3 f46 = textureLod(PrefilteredEnvTexture, f45, f44).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f43.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f47 = textureLod(PrefilteredEnvIndoorTexture, f45, f44).xyz;
    vec3 f48;
    if (CB0[32].w == 0.0)
    {
        f48 = f47;
    }
    else
    {
        f48 = mix(f47, textureLod(PrefilteredEnvBlendTargetTexture, f45, f44).xyz, vec3(CB0[32].w));
    }
    vec4 f49 = texture(PrecomputedBRDFTexture, vec2(f26, f40));
    float f50 = f49.x;
    float f51 = f49.y;
    vec3 f52 = ((vec3(0.039999999105930328369140625) * f50) + vec3(f51)) / vec3(f50 + f51);
    vec3 f53 = f22 * f22;
    bvec3 f54 = lessThan(f22, vec3(0.0));
    vec3 f55 = vec3(f54.x ? f53.x : vec3(0.0).x, f54.y ? f53.y : vec3(0.0).y, f54.z ? f53.z : vec3(0.0).z);
    vec3 f56 = f53 - f55;
    float f57 = f56.x;
    float f58 = f56.y;
    float f59 = f56.z;
    float f60 = f55.x;
    float f61 = f55.y;
    float f62 = f55.z;
    vec3 f63 = vec3(f37);
    vec3 f64 = -CB0[16].xyz;
    float f65 = dot(f22, f64) * ((1.0 - ((step(f38.x, f39) * clamp(CB0[29].z + (CB0[29].w * abs(f39 - 0.5)), 0.0, 1.0)) * f38.y)) * f35.y);
    vec3 f66 = normalize(f25 + f64);
    float f67 = clamp(f65, 0.0, 1.0);
    float f68 = f26 * f26;
    float f69 = max(0.001000000047497451305389404296875, dot(f22, f66));
    float f70 = dot(f64, f66);
    float f71 = 1.0 - f70;
    float f72 = f71 * f71;
    float f73 = (f72 * f72) * f71;
    vec3 f74 = vec3(f73) + (vec3(0.039999999105930328369140625) * (1.0 - f73));
    float f75 = f68 * f68;
    float f76 = (((f69 * f75) - f69) * f69) + 1.0;
    vec3 f77 = mix(f36, f46, f63) * mix(vec3(1.0), f23, vec3(0.5));
    vec4 f78 = mix(vec4(mix((((((((vec3(1.0) - (f52 * f27)) * (((((((CB0[40].xyz * f57) + (CB0[42].xyz * f58)) + (CB0[44].xyz * f59)) + (CB0[41].xyz * f60)) + (CB0[43].xyz * f61)) + (CB0[45].xyz * f62)) + (((((((CB0[34].xyz * f57) + (CB0[36].xyz * f58)) + (CB0[38].xyz * f59)) + (CB0[35].xyz * f60)) + (CB0[37].xyz * f61)) + (CB0[39].xyz * f62)) * f37))) * f18) + (CB0[32].xyz + (CB0[33].xyz * f37))) + ((((vec3(1.0) - (f74 * f27)) * CB0[15].xyz) * f67) + (CB0[17].xyz * clamp(-f65, 0.0, 1.0)))) + f36) * f23) * f18, f77, vec3(VARYING7.w)) * f18, f18), vec4(f77, 1.0), vec4(((f41 * f41) * 0.800000011920928955078125) * clamp(f17, 0.0, 1.0))) + vec4((((mix(f48, f46, f63) * f52) * f27) * f18) + (((f74 * (((f75 + (f75 * f75)) / (((f76 * f76) * ((f70 * 3.0) + 0.5)) * ((f69 * 0.75) + 0.25))) * f67)) * CB0[15].xyz) * 1.0), 0.0);
    float f79 = clamp(exp2((CB0[18].z * f24) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f80 = textureLod(PrefilteredEnvTexture, vec4(f42, 0.0).xyz, max(CB0[18].y, f79) * 5.0).xyz;
    bvec3 f81 = bvec3(!(CB0[18].w == 0.0));
    vec3 f82 = mix(vec3(f81.x ? CB0[19].xyz.x : f80.x, f81.y ? CB0[19].xyz.y : f80.y, f81.z ? CB0[19].xyz.z : f80.z), f78.xyz, vec3(f79));
    vec4 f83 = f78;
    f83.x = f82.x;
    vec4 f84 = f83;
    f84.y = f82.y;
    vec4 f85 = f84;
    f85.z = f82.z;
    vec4 f86 = f85;
    f86.w = 1.0 - ((1.0 - f78.w) * f79);
    vec3 f87 = sqrt(clamp(f86.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f88 = f86;
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec4 f90 = f89;
    f90.z = f87.z;
    _entryPointOutput = f90;
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
