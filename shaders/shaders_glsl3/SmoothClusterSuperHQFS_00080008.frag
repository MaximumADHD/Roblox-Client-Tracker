#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform vec4 CB4[63];
uniform vec4 CB5[63];
uniform sampler2D ShadowAtlasTexture;
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
    vec3 f29 = (((mix(vec3(1.0), CB4[int(VARYING9.x + 0.5) * 1 + 0].xyz, vec3(f26.w)) * f26.xyz) * f5.x) + ((mix(vec3(1.0), CB4[int(VARYING9.y + 0.5) * 1 + 0].xyz, vec3(f27.w)) * f27.xyz) * f5.y)) + ((mix(vec3(1.0), CB4[int(VARYING9.z + 0.5) * 1 + 0].xyz, vec3(f28.w)) * f28.xyz) * f5.z);
    vec3 f30 = f29 * f29;
    vec3 f31 = CB0[11].xyz - VARYING5.xyz;
    float f32 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec4 f33 = texture(NormalMapTexture, f0);
    vec4 f34 = texture(NormalMapTexture, f2);
    vec4 f35 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f36 = (((f33 * f5.x) + (f34 * f5.y)) + (f35 * f5.z)).wy * 2.0;
    vec2 f37 = f36 - vec2(1.0);
    vec3 f38 = normalize(((vec3(f37, sqrt(clamp(1.0 + dot(vec2(1.0) - f36, f37), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f39 = vec3(dot(VARYING7, f5));
    vec3 f40 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f39) * f38.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f39) * f38.y)) + (VARYING6 * f38.z)), 0.0).xyz;
    vec3 f41 = -CB0[16].xyz;
    float f42 = dot(f40, f41);
    vec3 f43 = normalize(f31);
    float f44 = 0.08900000154972076416015625 + (f25.y * 0.9110000133514404296875);
    float f45 = f25.x;
    vec3 f46 = mix(vec3(0.039999999105930328369140625), f30, vec3(f45));
    float f47 = CB0[31].w * f32;
    vec3 f48 = reflect(-f43, f40);
    vec3 f49 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f50 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f51 = VARYING4.yzx - (VARYING4.yzx * f50);
    vec4 f52 = texture(LightMapTexture, f51);
    vec4 f53 = texture(LightGridSkylightTexture, f51);
    vec4 f54 = vec4(clamp(f50, 0.0, 1.0));
    vec4 f55 = mix(f52, vec4(0.0), f54);
    vec4 f56 = mix(f53, vec4(1.0), f54);
    float f57 = f56.x;
    float f58 = f56.y;
    vec3 f59 = f49 - CB0[46].xyz;
    vec3 f60 = f49 - CB0[47].xyz;
    vec3 f61 = f49 - CB0[48].xyz;
    vec4 f62 = vec4(f49, 1.0) * mat4(CB8[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f63 = textureLod(ShadowAtlasTexture, f62.xy, 0.0);
    vec2 f64 = vec2(0.0);
    f64.x = CB0[51].z;
    vec2 f65 = f64;
    f65.y = CB0[51].w;
    float f66 = (2.0 * f62.z) - 1.0;
    float f67 = exp(CB0[51].z * f66);
    float f68 = -exp((-CB0[51].w) * f66);
    vec2 f69 = (f65 * CB0[52].y) * vec2(f67, f68);
    vec2 f70 = f69 * f69;
    float f71 = f63.x;
    float f72 = max(f63.y - (f71 * f71), f70.x);
    float f73 = f67 - f71;
    float f74 = f63.z;
    float f75 = max(f63.w - (f74 * f74), f70.y);
    float f76 = f68 - f74;
    vec3 f77 = normalize(f43 - CB0[16].xyz);
    float f78 = clamp((f42 * CB0[14].w) * (((f42 * CB0[52].x) > 0.0) ? mix(min((f67 <= f71) ? 1.0 : clamp(((f72 / (f72 + (f73 * f73))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f68 <= f74) ? 1.0 : clamp(((f75 / (f75 + (f76 * f76))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f58, clamp((length(f49 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f58), 0.0, 1.0);
    float f79 = f44 * f44;
    float f80 = max(0.001000000047497451305389404296875, dot(f40, f77));
    float f81 = dot(f41, f77);
    float f82 = 1.0 - f81;
    float f83 = f82 * f82;
    float f84 = (f83 * f83) * f82;
    vec3 f85 = vec3(f84) + (f46 * (1.0 - f84));
    float f86 = f79 * f79;
    float f87 = (((f80 * f86) - f80) * f80) + 1.0;
    float f88 = 1.0 - f45;
    float f89 = f47 * f88;
    vec3 f90 = vec3(f88);
    float f91 = f44 * 5.0;
    vec3 f92 = vec4(f48, f91).xyz;
    vec3 f93 = textureLod(PrefilteredEnvIndoorTexture, f92, f91).xyz;
    vec3 f94;
    if (CB0[32].w == 0.0)
    {
        f94 = f93;
    }
    else
    {
        f94 = mix(f93, textureLod(PrefilteredEnvBlendTargetTexture, f92, f91).xyz, vec3(CB0[32].w));
    }
    vec4 f95 = texture(PrecomputedBRDFTexture, vec2(f44, max(9.9999997473787516355514526367188e-05, dot(f40, f43))));
    float f96 = f95.x;
    float f97 = f95.y;
    vec3 f98 = ((f46 * f96) + vec3(f97)) / vec3(f96 + f97);
    vec3 f99 = f40 * f40;
    bvec3 f100 = lessThan(f40, vec3(0.0));
    vec3 f101 = vec3(f100.x ? f99.x : vec3(0.0).x, f100.y ? f99.y : vec3(0.0).y, f100.z ? f99.z : vec3(0.0).z);
    vec3 f102 = f99 - f101;
    float f103 = f102.x;
    float f104 = f102.y;
    float f105 = f102.z;
    float f106 = f101.x;
    float f107 = f101.y;
    float f108 = f101.z;
    vec3 f109 = (((((((f55.xyz * (f55.w * 120.0)) * 1.0) + (((f90 - (f85 * f89)) * CB0[15].xyz) * f78)) + ((f90 - (f98 * f89)) * (((((((CB0[40].xyz * f103) + (CB0[42].xyz * f104)) + (CB0[44].xyz * f105)) + (CB0[41].xyz * f106)) + (CB0[43].xyz * f107)) + (CB0[45].xyz * f108)) + (((((((CB0[34].xyz * f103) + (CB0[36].xyz * f104)) + (CB0[38].xyz * f105)) + (CB0[35].xyz * f106)) + (CB0[37].xyz * f107)) + (CB0[39].xyz * f108)) * f57)))) + ((CB0[32].xyz + (CB0[33].xyz * (f57 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f25.z * 2.0) * f32)) * f30) + (((((f85 * (min((f86 + (f86 * f86)) / (((f87 * f87) * ((f81 * 3.0) + 0.5)) * ((f80 * 0.75) + 0.25)), 65504.0) * f78)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f32 * VARYING0.w)) + ((mix(f94, textureLod(PrefilteredEnvTexture, f92, f91).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f48.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f57)) * f98) * f47));
    vec4 f110 = vec4(0.0);
    f110.x = f109.x;
    vec4 f111 = f110;
    f111.y = f109.y;
    vec4 f112 = f111;
    f112.z = f109.z;
    vec4 f113 = f112;
    f113.w = 1.0;
    float f114 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f115 = textureLod(PrefilteredEnvTexture, vec4(-f31, 0.0).xyz, max(CB0[18].y, f114) * 5.0).xyz;
    bvec3 f116 = bvec3(!(CB0[18].w == 0.0));
    vec3 f117 = mix(vec3(f116.x ? CB0[19].xyz.x : f115.x, f116.y ? CB0[19].xyz.y : f115.y, f116.z ? CB0[19].xyz.z : f115.z), f113.xyz, vec3(f114));
    vec4 f118 = f113;
    f118.x = f117.x;
    vec4 f119 = f118;
    f119.y = f117.y;
    vec4 f120 = f119;
    f120.z = f117.z;
    vec3 f121 = sqrt(clamp(f120.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f122 = f120;
    f122.x = f121.x;
    vec4 f123 = f122;
    f123.y = f121.y;
    vec4 f124 = f123;
    f124.z = f121.z;
    _entryPointOutput = f124;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
