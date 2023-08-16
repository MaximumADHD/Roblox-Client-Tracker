#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 CB5[63];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray NormalMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec3 VARYING7;
in vec4 VARYING8;
in vec3 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec3 f5;
    if (VARYING8.w < 1.0)
    {
        ivec3 f6 = ivec3(VARYING8.xyz + vec3(0.5));
        int f7 = f6.x;
        int f8 = f6.y;
        int f9 = f6.z;
        float f10 = dot(VARYING0.xyz, vec3(CB5[f7 * 1 + 0].z, CB5[f8 * 1 + 0].z, CB5[f9 * 1 + 0].z));
        vec3 f11 = vec3(0.0);
        f11.x = clamp((f1.w * CB5[f7 * 1 + 0].x) + CB5[f7 * 1 + 0].y, 0.0, 1.0);
        vec3 f12 = f11;
        f12.y = clamp((f3.w * CB5[f8 * 1 + 0].x) + CB5[f8 * 1 + 0].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.z = clamp((f4.w * CB5[f9 * 1 + 0].x) + CB5[f9 * 1 + 0].y, 0.0, 1.0);
        vec3 f14 = VARYING0.xyz * f13;
        float f15 = 1.0 / f10;
        float f16 = 0.5 * f10;
        float f17 = f14.x;
        float f18 = f14.y;
        float f19 = f14.z;
        float f20 = clamp(((f17 - max(f18, f19)) + f16) * f15, 0.0, 1.0);
        float f21 = clamp(((f18 - max(f17, f19)) + f16) * f15, 0.0, 1.0);
        float f22 = clamp(((f19 - max(f17, f18)) + f16) * f15, 0.0, 1.0);
        vec2 f23 = dFdx(VARYING1.xy);
        vec2 f24 = dFdy(VARYING1.xy);
        f5 = mix(vec3(f20, f21, f22) / vec3((f20 + f21) + f22), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f23, f23), dot(f24, f24))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f5 = VARYING0.xyz;
    }
    vec4 f25 = ((f1 * f5.x) + (f3 * f5.y)) + (f4 * f5.z);
    vec4 f26 = texture(AlbedoMapTexture, f0);
    vec4 f27 = texture(AlbedoMapTexture, f2);
    vec4 f28 = texture(AlbedoMapTexture, VARYING3.xyz);
    vec4 f29 = ((f26.yxzw * f5.x) + (f27.yxzw * f5.y)) + (f28.yxzw * f5.z);
    vec2 f30 = f29.yz - vec2(0.5);
    float f31 = f29.x;
    float f32 = f31 - f30.y;
    vec3 f33 = vec4(vec3(f32, f31, f32) + (vec3(f30.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f34 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec4 f35 = texture(NormalMapTexture, f0);
    vec4 f36 = texture(NormalMapTexture, f2);
    vec4 f37 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f38 = (((f35 * f5.x) + (f36 * f5.y)) + (f37 * f5.z)).wy * 2.0;
    vec2 f39 = f38 - vec2(1.0);
    vec3 f40 = normalize(((vec3(f39, sqrt(clamp(1.0 + dot(vec2(1.0) - f38, f39), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f41 = vec3(dot(VARYING7, f5));
    vec3 f42 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f41) * f40.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f41) * f40.y)) + (VARYING6 * f40.z)), 0.0).xyz;
    vec3 f43 = normalize(VARYING9);
    float f44 = 0.08900000154972076416015625 + (f25.y * 0.9110000133514404296875);
    float f45 = CB0[31].w * f34;
    vec3 f46 = reflect(-f43, f42);
    vec3 f47 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f48 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f49 = VARYING4.yzx - (VARYING4.yzx * f48);
    vec4 f50 = texture(LightMapTexture, f49);
    vec4 f51 = texture(LightGridSkylightTexture, f49);
    vec4 f52 = vec4(clamp(f48, 0.0, 1.0));
    vec4 f53 = mix(f50, vec4(0.0), f52);
    vec4 f54 = mix(f51, vec4(1.0), f52);
    float f55 = f54.x;
    vec4 f56 = texture(ShadowMapTexture, f47.xy);
    float f57 = f47.z;
    vec3 f58 = -CB0[16].xyz;
    float f59 = dot(f42, f58) * ((1.0 - ((step(f56.x, f57) * clamp(CB0[29].z + (CB0[29].w * abs(f57 - 0.5)), 0.0, 1.0)) * f56.y)) * f54.y);
    vec3 f60 = normalize(f43 + f58);
    float f61 = clamp(f59, 0.0, 1.0);
    float f62 = f44 * f44;
    float f63 = max(0.001000000047497451305389404296875, dot(f42, f60));
    float f64 = dot(f58, f60);
    float f65 = 1.0 - f64;
    float f66 = f65 * f65;
    float f67 = (f66 * f66) * f65;
    vec3 f68 = vec3(f67) + (vec3(0.039999999105930328369140625) * (1.0 - f67));
    float f69 = f62 * f62;
    float f70 = (((f63 * f69) - f63) * f63) + 1.0;
    float f71 = f44 * 5.0;
    vec3 f72 = vec4(f46, f71).xyz;
    vec3 f73 = textureLod(PrefilteredEnvIndoorTexture, f72, f71).xyz;
    vec3 f74;
    if (CB0[32].w == 0.0)
    {
        f74 = f73;
    }
    else
    {
        f74 = mix(f73, textureLod(PrefilteredEnvBlendTargetTexture, f72, f71).xyz, vec3(CB0[32].w));
    }
    vec4 f75 = texture(PrecomputedBRDFTexture, vec2(f44, max(9.9999997473787516355514526367188e-05, dot(f42, f43))));
    float f76 = f75.x;
    float f77 = f75.y;
    vec3 f78 = ((vec3(0.039999999105930328369140625) * f76) + vec3(f77)) / vec3(f76 + f77);
    vec3 f79 = f42 * f42;
    bvec3 f80 = lessThan(f42, vec3(0.0));
    vec3 f81 = vec3(f80.x ? f79.x : vec3(0.0).x, f80.y ? f79.y : vec3(0.0).y, f80.z ? f79.z : vec3(0.0).z);
    vec3 f82 = f79 - f81;
    float f83 = f82.x;
    float f84 = f82.y;
    float f85 = f82.z;
    float f86 = f81.x;
    float f87 = f81.y;
    float f88 = f81.z;
    vec3 f89 = ((((((f53.xyz * (f53.w * 120.0)) + ((((vec3(1.0) - (f68 * f45)) * CB0[15].xyz) * f61) + (CB0[17].xyz * clamp(-f59, 0.0, 1.0)))) + (((vec3(1.0) - (f78 * f45)) * (((((((CB0[40].xyz * f83) + (CB0[42].xyz * f84)) + (CB0[44].xyz * f85)) + (CB0[41].xyz * f86)) + (CB0[43].xyz * f87)) + (CB0[45].xyz * f88)) + (((((((CB0[34].xyz * f83) + (CB0[36].xyz * f84)) + (CB0[38].xyz * f85)) + (CB0[35].xyz * f86)) + (CB0[37].xyz * f87)) + (CB0[39].xyz * f88)) * f55))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f55)) * 1.0)) + vec3((f25.z * 2.0) * f34)) * (f33 * f33)) + (((((f68 * (((f69 + (f69 * f69)) / (((f70 * f70) * ((f64 * 3.0) + 0.5)) * ((f63 * 0.75) + 0.25))) * f61)) * CB0[15].xyz) * 1.0) * (f34 * VARYING0.w)) + ((mix(f74, textureLod(PrefilteredEnvTexture, f72, f71).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f46.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f55)) * f78) * f45));
    vec4 f90 = vec4(0.0);
    f90.x = f89.x;
    vec4 f91 = f90;
    f91.y = f89.y;
    vec4 f92 = f91;
    f92.z = f89.z;
    vec4 f93 = f92;
    f93.w = 1.0;
    float f94 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f95 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[18].y, f94) * 5.0).xyz;
    bvec3 f96 = bvec3(!(CB0[18].w == 0.0));
    vec3 f97 = mix(vec3(f96.x ? CB0[19].xyz.x : f95.x, f96.y ? CB0[19].xyz.y : f95.y, f96.z ? CB0[19].xyz.z : f95.z), f93.xyz, vec3(f94));
    vec4 f98 = f93;
    f98.x = f97.x;
    vec4 f99 = f98;
    f99.y = f97.y;
    vec4 f100 = f99;
    f100.z = f97.z;
    vec3 f101 = sqrt(clamp(f100.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f102 = f100;
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    _entryPointOutput = f104;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
