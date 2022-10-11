#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
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
    float f47 = 0.08900000154972076416015625 + (f25.y * 0.9110000133514404296875);
    float f48 = CB0[31].w * f35;
    vec3 f49 = reflect(-f46, f43);
    vec3 f50 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f51 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f52 = VARYING4.yzx - (VARYING4.yzx * f51);
    vec4 f53 = texture(LightMapTexture, f52);
    vec4 f54 = texture(LightGridSkylightTexture, f52);
    vec4 f55 = vec4(clamp(f51, 0.0, 1.0));
    vec4 f56 = mix(f53, vec4(0.0), f55);
    vec4 f57 = mix(f54, vec4(1.0), f55);
    float f58 = f57.x;
    float f59 = f57.y;
    vec3 f60 = f50 - CB0[46].xyz;
    vec3 f61 = f50 - CB0[47].xyz;
    vec3 f62 = f50 - CB0[48].xyz;
    vec4 f63 = vec4(f50, 1.0) * mat4(CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f64 = textureLod(ShadowAtlasTexture, f63.xy, 0.0);
    vec2 f65 = vec2(0.0);
    f65.x = CB0[51].z;
    vec2 f66 = f65;
    f66.y = CB0[51].w;
    float f67 = (2.0 * f63.z) - 1.0;
    float f68 = exp(CB0[51].z * f67);
    float f69 = -exp((-CB0[51].w) * f67);
    vec2 f70 = (f66 * CB0[52].y) * vec2(f68, f69);
    vec2 f71 = f70 * f70;
    float f72 = f64.x;
    float f73 = max(f64.y - (f72 * f72), f71.x);
    float f74 = f68 - f72;
    float f75 = f64.z;
    float f76 = max(f64.w - (f75 * f75), f71.y);
    float f77 = f69 - f75;
    vec3 f78 = normalize(f46 - CB0[16].xyz);
    float f79 = clamp((f45 * CB0[14].w) * (((f45 * CB0[52].x) > 0.0) ? mix(min((f68 <= f72) ? 1.0 : clamp(((f73 / (f73 + (f74 * f74))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f69 <= f75) ? 1.0 : clamp(((f76 / (f76 + (f77 * f77))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f59, clamp((length(f50 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f59), 0.0, 1.0);
    float f80 = f47 * f47;
    float f81 = max(0.001000000047497451305389404296875, dot(f43, f78));
    float f82 = dot(f44, f78);
    float f83 = 1.0 - f82;
    float f84 = f83 * f83;
    float f85 = (f84 * f84) * f83;
    vec3 f86 = vec3(f85) + (vec3(0.039999999105930328369140625) * (1.0 - f85));
    float f87 = f80 * f80;
    float f88 = (((f81 * f87) - f81) * f81) + 1.0;
    float f89 = f47 * 5.0;
    vec3 f90 = vec4(f49, f89).xyz;
    vec3 f91 = textureLod(PrefilteredEnvIndoorTexture, f90, f89).xyz;
    vec3 f92;
    if (CB0[32].w == 0.0)
    {
        f92 = f91;
    }
    else
    {
        f92 = mix(f91, textureLod(PrefilteredEnvBlendTargetTexture, f90, f89).xyz, vec3(CB0[32].w));
    }
    vec4 f93 = texture(PrecomputedBRDFTexture, vec2(f47, max(9.9999997473787516355514526367188e-05, dot(f43, f46))));
    float f94 = f93.x;
    float f95 = f93.y;
    vec3 f96 = ((vec3(0.039999999105930328369140625) * f94) + vec3(f95)) / vec3(f94 + f95);
    vec3 f97 = f43 * f43;
    bvec3 f98 = lessThan(f43, vec3(0.0));
    vec3 f99 = vec3(f98.x ? f97.x : vec3(0.0).x, f98.y ? f97.y : vec3(0.0).y, f98.z ? f97.z : vec3(0.0).z);
    vec3 f100 = f97 - f99;
    float f101 = f100.x;
    float f102 = f100.y;
    float f103 = f100.z;
    float f104 = f99.x;
    float f105 = f99.y;
    float f106 = f99.z;
    vec3 f107 = (((((((f56.xyz * (f56.w * 120.0)) * 1.0) + (((vec3(1.0) - (f86 * f48)) * CB0[15].xyz) * f79)) + ((vec3(1.0) - (f96 * f48)) * (((((((CB0[40].xyz * f101) + (CB0[42].xyz * f102)) + (CB0[44].xyz * f103)) + (CB0[41].xyz * f104)) + (CB0[43].xyz * f105)) + (CB0[45].xyz * f106)) + (((((((CB0[34].xyz * f101) + (CB0[36].xyz * f102)) + (CB0[38].xyz * f103)) + (CB0[35].xyz * f104)) + (CB0[37].xyz * f105)) + (CB0[39].xyz * f106)) * f58)))) + ((CB0[32].xyz + (CB0[33].xyz * (f58 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f25.z * 2.0) * f35)) * (f33 * f33)) + (((((f86 * (min((f87 + (f87 * f87)) / (((f88 * f88) * ((f82 * 3.0) + 0.5)) * ((f81 * 0.75) + 0.25)), 65504.0) * f79)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f35 * VARYING0.w)) + ((mix(f92, textureLod(PrefilteredEnvTexture, f90, f89).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f49.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f58)) * f96) * f48));
    vec4 f108 = vec4(0.0);
    f108.x = f107.x;
    vec4 f109 = f108;
    f109.y = f107.y;
    vec4 f110 = f109;
    f110.z = f107.z;
    vec4 f111 = f110;
    f111.w = 1.0;
    float f112 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f113 = textureLod(PrefilteredEnvTexture, vec4(-f34, 0.0).xyz, max(CB0[18].y, f112) * 5.0).xyz;
    bvec3 f114 = bvec3(!(CB0[18].w == 0.0));
    vec3 f115 = mix(vec3(f114.x ? CB0[19].xyz.x : f113.x, f114.y ? CB0[19].xyz.y : f113.y, f114.z ? CB0[19].xyz.z : f113.z), f111.xyz, vec3(f112));
    vec4 f116 = f111;
    f116.x = f115.x;
    vec4 f117 = f116;
    f117.y = f115.y;
    vec4 f118 = f117;
    f118.z = f115.z;
    vec3 f119 = sqrt(clamp(f118.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f120 = f118;
    f120.x = f119.x;
    vec4 f121 = f120;
    f121.y = f119.y;
    vec4 f122 = f121;
    f122.z = f119.z;
    _entryPointOutput = f122;
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
