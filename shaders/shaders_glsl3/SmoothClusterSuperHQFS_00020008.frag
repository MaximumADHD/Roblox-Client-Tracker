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
    int f29 = int(VARYING9.x + 0.5);
    int f30 = int(VARYING9.y + 0.5);
    int f31 = int(VARYING9.z + 0.5);
    vec3 f32;
    if (!(CB4[f29 * 1 + 0].w == 0.0))
    {
        f32 = (mix(vec3(1.0), CB4[f29 * 1 + 0].xyz, vec3(f26.w)) * f26.xyz) * f5.x;
    }
    else
    {
        vec2 f33 = f26.xz - vec2(0.5);
        float f34 = f33.x;
        float f35 = f33.y;
        float f36 = CB4[f29 * 1 + 0].x * f26.y;
        float f37 = (CB4[f29 * 1 + 0].y * f34) - (CB4[f29 * 1 + 0].z * f35);
        float f38 = (CB4[f29 * 1 + 0].z * f34) + (CB4[f29 * 1 + 0].y * f35);
        float f39 = f36 - f38;
        f32 = (vec3(f39, f36, f39) + (vec3(f37, f38, f37) * vec3(1.0, 1.0, -1.0))) * f5.x;
    }
    vec3 f40;
    if (!(CB4[f30 * 1 + 0].w == 0.0))
    {
        f40 = f32 + ((mix(vec3(1.0), CB4[f30 * 1 + 0].xyz, vec3(f27.w)) * f27.xyz) * f5.y);
    }
    else
    {
        vec2 f41 = f27.xz - vec2(0.5);
        float f42 = f41.x;
        float f43 = f41.y;
        float f44 = CB4[f30 * 1 + 0].x * f27.y;
        float f45 = (CB4[f30 * 1 + 0].y * f42) - (CB4[f30 * 1 + 0].z * f43);
        float f46 = (CB4[f30 * 1 + 0].z * f42) + (CB4[f30 * 1 + 0].y * f43);
        float f47 = f44 - f46;
        f40 = f32 + ((vec3(f47, f44, f47) + (vec3(f45, f46, f45) * vec3(1.0, 1.0, -1.0))) * f5.y);
    }
    vec3 f48;
    if (!(CB4[f31 * 1 + 0].w == 0.0))
    {
        f48 = f40 + ((mix(vec3(1.0), CB4[f31 * 1 + 0].xyz, vec3(f28.w)) * f28.xyz) * f5.z);
    }
    else
    {
        vec2 f49 = f28.xz - vec2(0.5);
        float f50 = f49.x;
        float f51 = f49.y;
        float f52 = CB4[f31 * 1 + 0].x * f28.y;
        float f53 = (CB4[f31 * 1 + 0].y * f50) - (CB4[f31 * 1 + 0].z * f51);
        float f54 = (CB4[f31 * 1 + 0].z * f50) + (CB4[f31 * 1 + 0].y * f51);
        float f55 = f52 - f54;
        f48 = f40 + ((vec3(f55, f52, f55) + (vec3(f53, f54, f53) * vec3(1.0, 1.0, -1.0))) * f5.z);
    }
    vec3 f56 = f48 * f48;
    vec3 f57 = CB0[11].xyz - VARYING5.xyz;
    float f58 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec4 f59 = texture(NormalMapTexture, f0);
    vec4 f60 = texture(NormalMapTexture, f2);
    vec4 f61 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f62 = (((f59 * f5.x) + (f60 * f5.y)) + (f61 * f5.z)).wy * 2.0;
    vec2 f63 = f62 - vec2(1.0);
    vec3 f64 = normalize(((vec3(f63, sqrt(clamp(1.0 + dot(vec2(1.0) - f62, f63), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f65 = vec3(dot(VARYING7, f5));
    vec3 f66 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f65) * f64.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f65) * f64.y)) + (VARYING6 * f64.z)), 0.0).xyz;
    vec3 f67 = -CB0[16].xyz;
    float f68 = dot(f66, f67);
    vec3 f69 = normalize(f57);
    float f70 = 0.08900000154972076416015625 + (f25.y * 0.9110000133514404296875);
    float f71 = f25.x;
    vec3 f72 = mix(vec3(0.039999999105930328369140625), f56, vec3(f71));
    float f73 = CB0[31].w * f58;
    vec3 f74 = reflect(-f69, f66);
    vec3 f75 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f76 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f77 = VARYING4.yzx - (VARYING4.yzx * f76);
    vec4 f78 = texture(LightMapTexture, f77);
    vec4 f79 = texture(LightGridSkylightTexture, f77);
    vec4 f80 = vec4(clamp(f76, 0.0, 1.0));
    vec4 f81 = mix(f78, vec4(0.0), f80);
    vec4 f82 = mix(f79, vec4(1.0), f80);
    float f83 = f82.x;
    float f84 = f82.y;
    vec3 f85 = f75 - CB0[46].xyz;
    vec3 f86 = f75 - CB0[47].xyz;
    vec3 f87 = f75 - CB0[48].xyz;
    vec4 f88 = vec4(f75, 1.0) * mat4(CB8[((dot(f85, f85) < CB0[46].w) ? 0 : ((dot(f86, f86) < CB0[47].w) ? 1 : ((dot(f87, f87) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f85, f85) < CB0[46].w) ? 0 : ((dot(f86, f86) < CB0[47].w) ? 1 : ((dot(f87, f87) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f85, f85) < CB0[46].w) ? 0 : ((dot(f86, f86) < CB0[47].w) ? 1 : ((dot(f87, f87) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f85, f85) < CB0[46].w) ? 0 : ((dot(f86, f86) < CB0[47].w) ? 1 : ((dot(f87, f87) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f89 = textureLod(ShadowAtlasTexture, f88.xy, 0.0);
    vec2 f90 = vec2(0.0);
    f90.x = CB0[51].z;
    vec2 f91 = f90;
    f91.y = CB0[51].w;
    float f92 = (2.0 * f88.z) - 1.0;
    float f93 = exp(CB0[51].z * f92);
    float f94 = -exp((-CB0[51].w) * f92);
    vec2 f95 = (f91 * CB0[52].y) * vec2(f93, f94);
    vec2 f96 = f95 * f95;
    float f97 = f89.x;
    float f98 = max(f89.y - (f97 * f97), f96.x);
    float f99 = f93 - f97;
    float f100 = f89.z;
    float f101 = max(f89.w - (f100 * f100), f96.y);
    float f102 = f94 - f100;
    vec3 f103 = normalize(f69 - CB0[16].xyz);
    float f104 = clamp((f68 * CB0[14].w) * (((f68 * CB0[52].x) > 0.0) ? mix(min((f93 <= f97) ? 1.0 : clamp(((f98 / (f98 + (f99 * f99))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f94 <= f100) ? 1.0 : clamp(((f101 / (f101 + (f102 * f102))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f84, clamp((length(f75 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f84), 0.0, 1.0);
    float f105 = f70 * f70;
    float f106 = max(0.001000000047497451305389404296875, dot(f66, f103));
    float f107 = dot(f67, f103);
    float f108 = 1.0 - f107;
    float f109 = f108 * f108;
    float f110 = (f109 * f109) * f108;
    vec3 f111 = vec3(f110) + (f72 * (1.0 - f110));
    float f112 = f105 * f105;
    float f113 = (((f106 * f112) - f106) * f106) + 1.0;
    float f114 = 1.0 - f71;
    float f115 = f73 * f114;
    vec3 f116 = vec3(f114);
    float f117 = f70 * 5.0;
    vec3 f118 = vec4(f74, f117).xyz;
    vec3 f119 = textureLod(PrefilteredEnvIndoorTexture, f118, f117).xyz;
    vec3 f120;
    if (CB0[32].w == 0.0)
    {
        f120 = f119;
    }
    else
    {
        f120 = mix(f119, textureLod(PrefilteredEnvBlendTargetTexture, f118, f117).xyz, vec3(CB0[32].w));
    }
    vec4 f121 = texture(PrecomputedBRDFTexture, vec2(f70, max(9.9999997473787516355514526367188e-05, dot(f66, f69))));
    float f122 = f121.x;
    float f123 = f121.y;
    vec3 f124 = ((f72 * f122) + vec3(f123)) / vec3(f122 + f123);
    vec3 f125 = f66 * f66;
    bvec3 f126 = lessThan(f66, vec3(0.0));
    vec3 f127 = vec3(f126.x ? f125.x : vec3(0.0).x, f126.y ? f125.y : vec3(0.0).y, f126.z ? f125.z : vec3(0.0).z);
    vec3 f128 = f125 - f127;
    float f129 = f128.x;
    float f130 = f128.y;
    float f131 = f128.z;
    float f132 = f127.x;
    float f133 = f127.y;
    float f134 = f127.z;
    vec3 f135 = (((((((f81.xyz * (f81.w * 120.0)) * 1.0) + (((f116 - (f111 * f115)) * CB0[15].xyz) * f104)) + ((f116 - (f124 * f115)) * (((((((CB0[40].xyz * f129) + (CB0[42].xyz * f130)) + (CB0[44].xyz * f131)) + (CB0[41].xyz * f132)) + (CB0[43].xyz * f133)) + (CB0[45].xyz * f134)) + (((((((CB0[34].xyz * f129) + (CB0[36].xyz * f130)) + (CB0[38].xyz * f131)) + (CB0[35].xyz * f132)) + (CB0[37].xyz * f133)) + (CB0[39].xyz * f134)) * f83)))) + ((CB0[32].xyz + (CB0[33].xyz * (f83 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f25.z * 2.0) * f58)) * f56) + (((((f111 * (((f112 + (f112 * f112)) / max(((f113 * f113) * ((f107 * 3.0) + 0.5)) * ((f106 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f104)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f58 * VARYING0.w)) + ((mix(f120, textureLod(PrefilteredEnvTexture, f118, f117).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f74.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f83)) * f124) * f73));
    vec4 f136 = vec4(0.0);
    f136.x = f135.x;
    vec4 f137 = f136;
    f137.y = f135.y;
    vec4 f138 = f137;
    f138.z = f135.z;
    vec4 f139 = f138;
    f139.w = 1.0;
    float f140 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f141 = textureLod(PrefilteredEnvTexture, vec4(-f57, 0.0).xyz, max(CB0[18].y, f140) * 5.0).xyz;
    bvec3 f142 = bvec3(!(CB0[18].w == 0.0));
    vec3 f143 = mix(vec3(f142.x ? CB0[19].xyz.x : f141.x, f142.y ? CB0[19].xyz.y : f141.y, f142.z ? CB0[19].xyz.z : f141.z), f139.xyz, vec3(f140));
    vec4 f144 = f139;
    f144.x = f143.x;
    vec4 f145 = f144;
    f145.y = f143.y;
    vec4 f146 = f145;
    f146.z = f143.z;
    vec3 f147 = sqrt(clamp(f146.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f148 = f146;
    f148.x = f147.x;
    vec4 f149 = f148;
    f149.y = f147.y;
    vec4 f150 = f149;
    f150.z = f147.z;
    _entryPointOutput = f150;
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
