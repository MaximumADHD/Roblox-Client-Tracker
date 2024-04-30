#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
#include <SCLayerData.h>
uniform vec4 CB0[57];
uniform vec4 CB4[24];
uniform vec4 CB5[189];
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
        float f10 = dot(VARYING0.xyz, vec3(CB5[f7 * 3 + 1].z, CB5[f8 * 3 + 1].z, CB5[f9 * 3 + 1].z));
        vec3 f11 = vec3(0.0);
        f11.x = clamp((f1.w * CB5[f7 * 3 + 1].x) + CB5[f7 * 3 + 1].y, 0.0, 1.0);
        vec3 f12 = f11;
        f12.y = clamp((f3.w * CB5[f8 * 3 + 1].x) + CB5[f8 * 3 + 1].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.z = clamp((f4.w * CB5[f9 * 3 + 1].x) + CB5[f9 * 3 + 1].y, 0.0, 1.0);
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
    vec3 f58 = f56.xyz * (f56.w * 120.0);
    float f59 = f57.x;
    float f60 = f57.y;
    vec3 f61 = f50 - CB0[46].xyz;
    vec3 f62 = f50 - CB0[47].xyz;
    vec3 f63 = f50 - CB0[48].xyz;
    vec4 f64 = vec4(f50, 1.0) * mat4(CB4[((dot(f61, f61) < CB0[46].w) ? 0 : ((dot(f62, f62) < CB0[47].w) ? 1 : ((dot(f63, f63) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB4[((dot(f61, f61) < CB0[46].w) ? 0 : ((dot(f62, f62) < CB0[47].w) ? 1 : ((dot(f63, f63) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB4[((dot(f61, f61) < CB0[46].w) ? 0 : ((dot(f62, f62) < CB0[47].w) ? 1 : ((dot(f63, f63) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB4[((dot(f61, f61) < CB0[46].w) ? 0 : ((dot(f62, f62) < CB0[47].w) ? 1 : ((dot(f63, f63) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f65 = textureLod(ShadowAtlasTexture, f64.xy, 0.0);
    vec2 f66 = vec2(0.0);
    f66.x = CB0[51].z;
    vec2 f67 = f66;
    f67.y = CB0[51].w;
    float f68 = (2.0 * f64.z) - 1.0;
    float f69 = exp(CB0[51].z * f68);
    float f70 = -exp((-CB0[51].w) * f68);
    vec2 f71 = (f67 * CB0[52].y) * vec2(f69, f70);
    vec2 f72 = f71 * f71;
    float f73 = f65.x;
    float f74 = max(f65.y - (f73 * f73), f72.x);
    float f75 = f69 - f73;
    float f76 = f65.z;
    float f77 = max(f65.w - (f76 * f76), f72.y);
    float f78 = f70 - f76;
    float f79 = (f45 * CB0[14].w) * (((f45 * CB0[52].x) > 0.0) ? mix(min((f69 <= f73) ? 1.0 : clamp(((f74 / (f74 + (f75 * f75))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f70 <= f76) ? 1.0 : clamp(((f77 / (f77 + (f78 * f78))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f60, clamp((length(f50 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f60);
    vec3 f80;
    vec3 f81;
    if (f79 > 0.0)
    {
        vec3 f82 = normalize(f46 + f44);
        float f83 = clamp(f79, 0.0, 1.0);
        float f84 = f47 * f47;
        float f85 = max(0.001000000047497451305389404296875, dot(f43, f82));
        float f86 = dot(f44, f82);
        float f87 = 1.0 - f86;
        float f88 = f87 * f87;
        float f89 = (f88 * f88) * f87;
        vec3 f90 = vec3(f89) + (vec3(0.039999999105930328369140625) * (1.0 - f89));
        float f91 = f84 * f84;
        float f92 = (((f85 * f91) - f85) * f85) + 1.0;
        f81 = f58 + (((vec3(1.0) - (f90 * f48)) * CB0[15].xyz) * f83);
        f80 = ((f90 * (((f91 + (f91 * f91)) / (((f92 * f92) * ((f86 * 3.0) + 0.5)) * ((f85 * 0.75) + 0.25))) * f83)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f81 = f58;
        f80 = vec3(0.0);
    }
    float f93 = f47 * 5.0;
    vec3 f94 = vec4(f49, f93).xyz;
    vec3 f95 = textureLod(PrefilteredEnvIndoorTexture, f94, f93).xyz;
    vec3 f96;
    if (CB0[32].w == 0.0)
    {
        f96 = f95;
    }
    else
    {
        f96 = mix(f95, textureLod(PrefilteredEnvBlendTargetTexture, f94, f93).xyz, vec3(CB0[32].w));
    }
    vec4 f97 = texture(PrecomputedBRDFTexture, vec2(f47, max(9.9999997473787516355514526367188e-05, dot(f43, f46))));
    float f98 = f97.x;
    float f99 = f97.y;
    vec3 f100 = ((vec3(0.039999999105930328369140625) * f98) + vec3(f99)) / vec3(f98 + f99);
    vec3 f101 = f43 * f43;
    bvec3 f102 = lessThan(f43, vec3(0.0));
    vec3 f103 = vec3(f102.x ? f101.x : vec3(0.0).x, f102.y ? f101.y : vec3(0.0).y, f102.z ? f101.z : vec3(0.0).z);
    vec3 f104 = f101 - f103;
    float f105 = f104.x;
    float f106 = f104.y;
    float f107 = f104.z;
    float f108 = f103.x;
    float f109 = f103.y;
    float f110 = f103.z;
    vec3 f111 = ((((f81 + (((vec3(1.0) - (f100 * f48)) * ((((((((CB0[40].xyz * f105) + (CB0[42].xyz * f106)) + (CB0[44].xyz * f107)) + (CB0[41].xyz * f108)) + (CB0[43].xyz * f109)) + (CB0[45].xyz * f110)) * CB0[30].w) + ((((((((CB0[34].xyz * f105) + (CB0[36].xyz * f106)) + (CB0[38].xyz * f107)) + (CB0[35].xyz * f108)) + (CB0[37].xyz * f109)) + (CB0[39].xyz * f110)) * CB0[30].w) * f59))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f59 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f25.z * 2.0) * f35)) * (f33 * f33)) + ((f80 * (f35 * VARYING0.w)) + ((mix(f96, textureLod(PrefilteredEnvTexture, f94, f93).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f49.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f59)) * f100) * f48));
    vec4 f112 = vec4(0.0);
    f112.x = f111.x;
    vec4 f113 = f112;
    f113.y = f111.y;
    vec4 f114 = f113;
    f114.z = f111.z;
    vec4 f115 = f114;
    f115.w = 1.0;
    float f116 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f117 = textureLod(PrefilteredEnvTexture, vec4(-f34, 0.0).xyz, max(CB0[18].y, f116) * 5.0).xyz;
    bvec3 f118 = bvec3(!(CB0[18].w == 0.0));
    vec3 f119 = mix(vec3(f118.x ? CB0[19].xyz.x : f117.x, f118.y ? CB0[19].xyz.y : f117.y, f118.z ? CB0[19].xyz.z : f117.z), f115.xyz, vec3(f116));
    vec4 f120 = f115;
    f120.x = f119.x;
    vec4 f121 = f120;
    f121.y = f119.y;
    vec4 f122 = f121;
    f122.z = f119.z;
    vec3 f123 = sqrt(clamp(f122.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f124 = f122;
    f124.x = f123.x;
    vec4 f125 = f124;
    f125.y = f123.y;
    vec4 f126 = f125;
    f126.z = f123.z;
    _entryPointOutput = f126;
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
