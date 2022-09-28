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
        float f11 = f1.w;
        float f12 = f3.w;
        float f13 = f4.w;
        vec3 f14 = vec3(f11, f12, f13);
        f14.x = clamp((f11 * CB5[f7 * 1 + 0].x) + CB5[f7 * 1 + 0].y, 0.0, 1.0);
        vec3 f15 = f14;
        f15.y = clamp((f12 * CB5[f8 * 1 + 0].x) + CB5[f8 * 1 + 0].y, 0.0, 1.0);
        vec3 f16 = f15;
        f16.z = clamp((f13 * CB5[f9 * 1 + 0].x) + CB5[f9 * 1 + 0].y, 0.0, 1.0);
        vec3 f17 = VARYING0.xyz * f16;
        float f18 = 1.0 / f10;
        float f19 = 0.5 * f10;
        float f20 = f17.x;
        float f21 = f17.y;
        float f22 = f17.z;
        float f23 = clamp(((f20 - max(f21, f22)) + f19) * f18, 0.0, 1.0);
        float f24 = clamp(((f21 - max(f20, f22)) + f19) * f18, 0.0, 1.0);
        float f25 = clamp(((f22 - max(f20, f21)) + f19) * f18, 0.0, 1.0);
        vec2 f26 = dFdx(VARYING1.xy);
        vec2 f27 = dFdy(VARYING1.xy);
        f5 = mix(vec3(f23, f24, f25) / vec3((f23 + f24) + f25), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f26, f26), dot(f27, f27))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f5 = VARYING0.xyz;
    }
    vec4 f28 = ((f1 * f5.x) + (f3 * f5.y)) + (f4 * f5.z);
    vec4 f29 = texture(AlbedoMapTexture, f0);
    vec4 f30 = texture(AlbedoMapTexture, f2);
    vec4 f31 = texture(AlbedoMapTexture, VARYING3.xyz);
    vec3 f32 = (((mix(vec3(1.0), CB4[int(VARYING9.x + 0.5) * 1 + 0].xyz, vec3(f29.w)) * f29.xyz) * f5.x) + ((mix(vec3(1.0), CB4[int(VARYING9.y + 0.5) * 1 + 0].xyz, vec3(f30.w)) * f30.xyz) * f5.y)) + ((mix(vec3(1.0), CB4[int(VARYING9.z + 0.5) * 1 + 0].xyz, vec3(f31.w)) * f31.xyz) * f5.z);
    vec3 f33 = f32 * f32;
    vec3 f34 = CB0[11].xyz - VARYING5.xyz;
    float f35 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec4 f36 = texture(NormalMapTexture, f0);
    vec4 f37 = texture(NormalMapTexture, f2);
    vec4 f38 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f39 = (((f36 * f5.x) + (f37 * f5.y)) + (f38 * f5.z)).wy * 2.0;
    vec2 f40 = f39 - vec2(1.0);
    vec3 f41 = normalize(((vec3(f40, sqrt(clamp(1.0 + dot(vec2(1.0) - f39, f40), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f42 = vec3(dot(VARYING7, f5));
    vec3 f43 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f42) * f41.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f42) * f41.y)) + (VARYING6 * f41.z)), 0.0).xyz;
    vec3 f44 = -CB0[16].xyz;
    float f45 = dot(f43, f44);
    vec3 f46 = normalize(f34);
    float f47 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f48 = f28.x;
    vec3 f49 = mix(vec3(0.039999999105930328369140625), f33, vec3(f48));
    float f50 = CB0[31].w * f35;
    vec3 f51 = reflect(-f46, f43);
    vec3 f52 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f53 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f54 = VARYING4.yzx - (VARYING4.yzx * f53);
    vec4 f55 = texture(LightMapTexture, f54);
    vec4 f56 = texture(LightGridSkylightTexture, f54);
    vec4 f57 = vec4(clamp(f53, 0.0, 1.0));
    vec4 f58 = mix(f55, vec4(0.0), f57);
    vec4 f59 = mix(f56, vec4(1.0), f57);
    float f60 = f59.x;
    float f61 = f59.y;
    vec3 f62 = f52 - CB0[46].xyz;
    vec3 f63 = f52 - CB0[47].xyz;
    vec3 f64 = f52 - CB0[48].xyz;
    vec4 f65 = vec4(f52, 1.0) * mat4(CB8[((dot(f62, f62) < CB0[46].w) ? 0 : ((dot(f63, f63) < CB0[47].w) ? 1 : ((dot(f64, f64) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f62, f62) < CB0[46].w) ? 0 : ((dot(f63, f63) < CB0[47].w) ? 1 : ((dot(f64, f64) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f62, f62) < CB0[46].w) ? 0 : ((dot(f63, f63) < CB0[47].w) ? 1 : ((dot(f64, f64) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f62, f62) < CB0[46].w) ? 0 : ((dot(f63, f63) < CB0[47].w) ? 1 : ((dot(f64, f64) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f66 = textureLod(ShadowAtlasTexture, f65.xy, 0.0);
    vec2 f67 = vec2(0.0);
    f67.x = CB0[51].z;
    vec2 f68 = f67;
    f68.y = CB0[51].w;
    float f69 = (2.0 * f65.z) - 1.0;
    float f70 = exp(CB0[51].z * f69);
    float f71 = -exp((-CB0[51].w) * f69);
    vec2 f72 = (f68 * CB0[52].y) * vec2(f70, f71);
    vec2 f73 = f72 * f72;
    float f74 = f66.x;
    float f75 = max(f66.y - (f74 * f74), f73.x);
    float f76 = f70 - f74;
    float f77 = f66.z;
    float f78 = max(f66.w - (f77 * f77), f73.y);
    float f79 = f71 - f77;
    vec3 f80 = normalize(f46 - CB0[16].xyz);
    float f81 = clamp((f45 * CB0[14].w) * (((f45 * CB0[52].x) > 0.0) ? mix(min((f70 <= f74) ? 1.0 : clamp(((f75 / (f75 + (f76 * f76))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f71 <= f77) ? 1.0 : clamp(((f78 / (f78 + (f79 * f79))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f61, clamp((length(f52 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f61), 0.0, 1.0);
    float f82 = f47 * f47;
    float f83 = max(0.001000000047497451305389404296875, dot(f43, f80));
    float f84 = dot(f44, f80);
    float f85 = 1.0 - f84;
    float f86 = f85 * f85;
    float f87 = (f86 * f86) * f85;
    vec3 f88 = vec3(f87) + (f49 * (1.0 - f87));
    float f89 = f82 * f82;
    float f90 = (((f83 * f89) - f83) * f83) + 1.0;
    float f91 = 1.0 - f48;
    float f92 = f50 * f91;
    vec3 f93 = vec3(f91);
    float f94 = f47 * 5.0;
    vec3 f95 = vec4(f51, f94).xyz;
    vec3 f96 = textureLod(PrefilteredEnvIndoorTexture, f95, f94).xyz;
    vec3 f97;
    if (CB0[32].w == 0.0)
    {
        f97 = f96;
    }
    else
    {
        f97 = mix(f96, textureLod(PrefilteredEnvBlendTargetTexture, f95, f94).xyz, vec3(CB0[32].w));
    }
    vec4 f98 = texture(PrecomputedBRDFTexture, vec2(f47, max(9.9999997473787516355514526367188e-05, dot(f43, f46))));
    float f99 = f98.x;
    float f100 = f98.y;
    vec3 f101 = ((f49 * f99) + vec3(f100)) / vec3(f99 + f100);
    vec3 f102 = f43 * f43;
    bvec3 f103 = lessThan(f43, vec3(0.0));
    vec3 f104 = vec3(f103.x ? f102.x : vec3(0.0).x, f103.y ? f102.y : vec3(0.0).y, f103.z ? f102.z : vec3(0.0).z);
    vec3 f105 = f102 - f104;
    float f106 = f105.x;
    float f107 = f105.y;
    float f108 = f105.z;
    float f109 = f104.x;
    float f110 = f104.y;
    float f111 = f104.z;
    vec3 f112 = (((((((f58.xyz * (f58.w * 120.0)) * 1.0) + (((f93 - (f88 * f92)) * CB0[15].xyz) * f81)) + ((f93 - (f101 * f92)) * (((((((CB0[40].xyz * f106) + (CB0[42].xyz * f107)) + (CB0[44].xyz * f108)) + (CB0[41].xyz * f109)) + (CB0[43].xyz * f110)) + (CB0[45].xyz * f111)) + (((((((CB0[34].xyz * f106) + (CB0[36].xyz * f107)) + (CB0[38].xyz * f108)) + (CB0[35].xyz * f109)) + (CB0[37].xyz * f110)) + (CB0[39].xyz * f111)) * f60)))) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f60))) + vec3((f28.z * 2.0) * f35)) * f33) + (((((f88 * (min((f89 + (f89 * f89)) / (((f90 * f90) * ((f84 * 3.0) + 0.5)) * ((f83 * 0.75) + 0.25)), 65504.0) * f81)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f35 * VARYING0.w)) + ((mix(f97, textureLod(PrefilteredEnvTexture, f95, f94).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f51.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f60)) * f101) * f50));
    vec4 f113 = vec4(0.0);
    f113.x = f112.x;
    vec4 f114 = f113;
    f114.y = f112.y;
    vec4 f115 = f114;
    f115.z = f112.z;
    vec4 f116 = f115;
    f116.w = 1.0;
    float f117 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f118 = textureLod(PrefilteredEnvTexture, vec4(-f34, 0.0).xyz, max(CB0[18].y, f117) * 5.0).xyz;
    bvec3 f119 = bvec3(!(CB0[18].w == 0.0));
    vec3 f120 = mix(vec3(f119.x ? CB0[19].xyz.x : f118.x, f119.y ? CB0[19].xyz.y : f118.y, f119.z ? CB0[19].xyz.z : f118.z), f116.xyz, vec3(f117));
    vec4 f121 = f116;
    f121.x = f120.x;
    vec4 f122 = f121;
    f122.y = f120.y;
    vec4 f123 = f122;
    f123.z = f120.z;
    vec3 f124 = sqrt(clamp(f123.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f125 = f123;
    f125.x = f124.x;
    vec4 f126 = f125;
    f126.y = f124.y;
    vec4 f127 = f126;
    f127.z = f124.z;
    _entryPointOutput = f127;
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
