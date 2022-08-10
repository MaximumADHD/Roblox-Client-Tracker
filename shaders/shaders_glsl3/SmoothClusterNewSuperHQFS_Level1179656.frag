#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
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
in vec4 VARYING9;
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
    int f32 = int(VARYING9.x + 0.5);
    int f33 = int(VARYING9.y + 0.5);
    int f34 = int(VARYING9.z + 0.5);
    vec3 f35;
    if (!(CB4[f32 * 1 + 0].w == 0.0))
    {
        f35 = (mix(vec3(1.0), CB4[f32 * 1 + 0].xyz, vec3(f29.w)) * f29.xyz) * f5.x;
    }
    else
    {
        vec2 f36 = f29.xz - vec2(0.5);
        float f37 = f36.x;
        float f38 = f36.y;
        float f39 = CB4[f32 * 1 + 0].x * f29.y;
        float f40 = (CB4[f32 * 1 + 0].y * f37) - (CB4[f32 * 1 + 0].z * f38);
        float f41 = (CB4[f32 * 1 + 0].z * f37) + (CB4[f32 * 1 + 0].y * f38);
        float f42 = f39 - f41;
        f35 = (vec3(f42, f39, f42) + (vec3(f40, f41, f40) * vec3(1.0, 1.0, -1.0))) * f5.x;
    }
    vec3 f43;
    if (!(CB4[f33 * 1 + 0].w == 0.0))
    {
        f43 = f35 + ((mix(vec3(1.0), CB4[f33 * 1 + 0].xyz, vec3(f30.w)) * f30.xyz) * f5.y);
    }
    else
    {
        vec2 f44 = f30.xz - vec2(0.5);
        float f45 = f44.x;
        float f46 = f44.y;
        float f47 = CB4[f33 * 1 + 0].x * f30.y;
        float f48 = (CB4[f33 * 1 + 0].y * f45) - (CB4[f33 * 1 + 0].z * f46);
        float f49 = (CB4[f33 * 1 + 0].z * f45) + (CB4[f33 * 1 + 0].y * f46);
        float f50 = f47 - f49;
        f43 = f35 + ((vec3(f50, f47, f50) + (vec3(f48, f49, f48) * vec3(1.0, 1.0, -1.0))) * f5.y);
    }
    vec3 f51;
    if (!(CB4[f34 * 1 + 0].w == 0.0))
    {
        f51 = f43 + ((mix(vec3(1.0), CB4[f34 * 1 + 0].xyz, vec3(f31.w)) * f31.xyz) * f5.z);
    }
    else
    {
        vec2 f52 = f31.xz - vec2(0.5);
        float f53 = f52.x;
        float f54 = f52.y;
        float f55 = CB4[f34 * 1 + 0].x * f31.y;
        float f56 = (CB4[f34 * 1 + 0].y * f53) - (CB4[f34 * 1 + 0].z * f54);
        float f57 = (CB4[f34 * 1 + 0].z * f53) + (CB4[f34 * 1 + 0].y * f54);
        float f58 = f55 - f57;
        f51 = f43 + ((vec3(f58, f55, f58) + (vec3(f56, f57, f56) * vec3(1.0, 1.0, -1.0))) * f5.z);
    }
    vec3 f59 = f51 * f51;
    vec3 f60 = CB0[7].xyz - VARYING5.xyz;
    float f61 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f62 = texture(NormalMapTexture, f0);
    vec4 f63 = texture(NormalMapTexture, f2);
    vec4 f64 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f65 = (((f62 * f5.x) + (f63 * f5.y)) + (f64 * f5.z)).wy * 2.0;
    vec2 f66 = f65 - vec2(1.0);
    vec3 f67 = normalize(((vec3(f66, sqrt(clamp(1.0 + dot(vec2(1.0) - f65, f66), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f68 = vec3(dot(VARYING7, f5));
    vec3 f69 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f68) * f67.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f68) * f67.y)) + (VARYING6 * f67.z)), 0.0).xyz;
    vec3 f70 = -CB0[11].xyz;
    float f71 = dot(f69, f70);
    vec3 f72 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f73 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f74 = VARYING4.yzx - (VARYING4.yzx * f73);
    vec4 f75 = texture(LightMapTexture, f74);
    vec4 f76 = texture(LightGridSkylightTexture, f74);
    vec4 f77 = vec4(clamp(f73, 0.0, 1.0));
    vec4 f78 = mix(f75, vec4(0.0), f77);
    vec4 f79 = mix(f76, vec4(1.0), f77);
    float f80 = f79.x;
    float f81 = f79.y;
    vec3 f82 = f72 - CB0[41].xyz;
    vec3 f83 = f72 - CB0[42].xyz;
    vec3 f84 = f72 - CB0[43].xyz;
    vec4 f85 = vec4(f72, 1.0) * mat4(CB8[((dot(f82, f82) < CB0[41].w) ? 0 : ((dot(f83, f83) < CB0[42].w) ? 1 : ((dot(f84, f84) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f82, f82) < CB0[41].w) ? 0 : ((dot(f83, f83) < CB0[42].w) ? 1 : ((dot(f84, f84) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f82, f82) < CB0[41].w) ? 0 : ((dot(f83, f83) < CB0[42].w) ? 1 : ((dot(f84, f84) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f82, f82) < CB0[41].w) ? 0 : ((dot(f83, f83) < CB0[42].w) ? 1 : ((dot(f84, f84) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f86 = textureLod(ShadowAtlasTexture, f85.xy, 0.0);
    vec2 f87 = vec2(0.0);
    f87.x = CB0[46].z;
    vec2 f88 = f87;
    f88.y = CB0[46].w;
    float f89 = (2.0 * f85.z) - 1.0;
    float f90 = exp(CB0[46].z * f89);
    float f91 = -exp((-CB0[46].w) * f89);
    vec2 f92 = (f88 * CB0[47].y) * vec2(f90, f91);
    vec2 f93 = f92 * f92;
    float f94 = f86.x;
    float f95 = max(f86.y - (f94 * f94), f93.x);
    float f96 = f90 - f94;
    float f97 = f86.z;
    float f98 = max(f86.w - (f97 * f97), f93.y);
    float f99 = f91 - f97;
    vec3 f100 = normalize(f60);
    float f101 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f102 = f28.x;
    vec3 f103 = mix(vec3(0.039999999105930328369140625), f59, vec3(f102));
    float f104 = CB0[26].w * f61;
    vec3 f105 = reflect(-f100, f69);
    vec3 f106 = normalize(f100 - CB0[11].xyz);
    float f107 = clamp((f71 * CB0[9].w) * (((f71 * CB0[47].x) > 0.0) ? mix(min((f90 <= f94) ? 1.0 : clamp(((f95 / (f95 + (f96 * f96))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f91 <= f97) ? 1.0 : clamp(((f98 / (f98 + (f99 * f99))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f81, clamp((length(f72 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f81), 0.0, 1.0);
    float f108 = f101 * f101;
    float f109 = max(0.001000000047497451305389404296875, dot(f69, f106));
    float f110 = dot(f70, f106);
    float f111 = 1.0 - f110;
    float f112 = f111 * f111;
    float f113 = (f112 * f112) * f111;
    vec3 f114 = vec3(f113) + (f103 * (1.0 - f113));
    float f115 = f108 * f108;
    float f116 = (((f109 * f115) - f109) * f109) + 1.0;
    float f117 = 1.0 - f102;
    float f118 = f104 * f117;
    vec3 f119 = vec3(f117);
    float f120 = f101 * 5.0;
    vec3 f121 = vec4(f105, f120).xyz;
    vec3 f122 = textureLod(PrefilteredEnvIndoorTexture, f121, f120).xyz;
    vec3 f123;
    if (CB0[27].w == 0.0)
    {
        f123 = f122;
    }
    else
    {
        f123 = mix(f122, textureLod(PrefilteredEnvBlendTargetTexture, f121, f120).xyz, vec3(CB0[27].w));
    }
    vec4 f124 = texture(PrecomputedBRDFTexture, vec2(f101, max(9.9999997473787516355514526367188e-05, dot(f69, f100))));
    float f125 = f124.x;
    float f126 = f124.y;
    vec3 f127 = ((f103 * f125) + vec3(f126)) / vec3(f125 + f126);
    vec3 f128 = f69 * f69;
    bvec3 f129 = lessThan(f69, vec3(0.0));
    vec3 f130 = vec3(f129.x ? f128.x : vec3(0.0).x, f129.y ? f128.y : vec3(0.0).y, f129.z ? f128.z : vec3(0.0).z);
    vec3 f131 = f128 - f130;
    float f132 = f131.x;
    float f133 = f131.y;
    float f134 = f131.z;
    float f135 = f130.x;
    float f136 = f130.y;
    float f137 = f130.z;
    vec3 f138 = ((((((((f119 - (f114 * f118)) * CB0[10].xyz) * f107) + ((f78.xyz * (f78.w * 120.0)) * 1.0)) + ((f119 - (f127 * f118)) * (((((((CB0[35].xyz * f132) + (CB0[37].xyz * f133)) + (CB0[39].xyz * f134)) + (CB0[36].xyz * f135)) + (CB0[38].xyz * f136)) + (CB0[40].xyz * f137)) + (((((((CB0[29].xyz * f132) + (CB0[31].xyz * f133)) + (CB0[33].xyz * f134)) + (CB0[30].xyz * f135)) + (CB0[32].xyz * f136)) + (CB0[34].xyz * f137)) * f80)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f80))) + vec3((f28.z * 2.0) * f61)) * f59) + ((((((f114 * (((f115 + (f115 * f115)) / (((f116 * f116) * ((f110 * 3.0) + 0.5)) * ((f109 * 0.75) + 0.25))) * f107)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f61) * VARYING0.w) + ((mix(f123, textureLod(PrefilteredEnvTexture, f121, f120).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f105.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f80)) * f127) * f104));
    vec4 f139 = vec4(0.0);
    f139.x = f138.x;
    vec4 f140 = f139;
    f140.y = f138.y;
    vec4 f141 = f140;
    f141.z = f138.z;
    vec4 f142 = f141;
    f142.w = 1.0;
    float f143 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f144 = textureLod(PrefilteredEnvTexture, vec4(-f60, 0.0).xyz, max(CB0[13].y, f143) * 5.0).xyz;
    bvec3 f145 = bvec3(!(CB0[13].w == 0.0));
    vec3 f146 = mix(vec3(f145.x ? CB0[14].xyz.x : f144.x, f145.y ? CB0[14].xyz.y : f144.y, f145.z ? CB0[14].xyz.z : f144.z), f142.xyz, vec3(f143));
    vec4 f147 = f142;
    f147.x = f146.x;
    vec4 f148 = f147;
    f148.y = f146.y;
    vec4 f149 = f148;
    f149.z = f146.z;
    vec3 f150 = sqrt(clamp(f149.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f151 = f149;
    f151.x = f150.x;
    vec4 f152 = f151;
    f152.y = f150.y;
    vec4 f153 = f152;
    f153.z = f150.z;
    _entryPointOutput = f153;
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
