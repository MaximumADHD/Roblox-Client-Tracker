#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[57];
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
    vec3 f83 = f81.xyz * (f81.w * 120.0);
    float f84 = f82.x;
    float f85 = f82.y;
    vec3 f86 = f75 - CB0[46].xyz;
    vec3 f87 = f75 - CB0[47].xyz;
    vec3 f88 = f75 - CB0[48].xyz;
    vec4 f89 = vec4(f75, 1.0) * mat4(CB8[((dot(f86, f86) < CB0[46].w) ? 0 : ((dot(f87, f87) < CB0[47].w) ? 1 : ((dot(f88, f88) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f86, f86) < CB0[46].w) ? 0 : ((dot(f87, f87) < CB0[47].w) ? 1 : ((dot(f88, f88) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f86, f86) < CB0[46].w) ? 0 : ((dot(f87, f87) < CB0[47].w) ? 1 : ((dot(f88, f88) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f86, f86) < CB0[46].w) ? 0 : ((dot(f87, f87) < CB0[47].w) ? 1 : ((dot(f88, f88) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f90 = textureLod(ShadowAtlasTexture, f89.xy, 0.0);
    vec2 f91 = vec2(0.0);
    f91.x = CB0[51].z;
    vec2 f92 = f91;
    f92.y = CB0[51].w;
    float f93 = (2.0 * f89.z) - 1.0;
    float f94 = exp(CB0[51].z * f93);
    float f95 = -exp((-CB0[51].w) * f93);
    vec2 f96 = (f92 * CB0[52].y) * vec2(f94, f95);
    vec2 f97 = f96 * f96;
    float f98 = f90.x;
    float f99 = max(f90.y - (f98 * f98), f97.x);
    float f100 = f94 - f98;
    float f101 = f90.z;
    float f102 = max(f90.w - (f101 * f101), f97.y);
    float f103 = f95 - f101;
    float f104 = (f68 * CB0[14].w) * (((f68 * CB0[52].x) > 0.0) ? mix(min((f94 <= f98) ? 1.0 : clamp(((f99 / (f99 + (f100 * f100))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f95 <= f101) ? 1.0 : clamp(((f102 / (f102 + (f103 * f103))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f85, clamp((length(f75 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f85);
    vec3 f105;
    vec3 f106;
    if (f104 > 0.0)
    {
        vec3 f107 = normalize(f69 + f67);
        float f108 = clamp(f104, 0.0, 1.0);
        float f109 = f70 * f70;
        float f110 = max(0.001000000047497451305389404296875, dot(f66, f107));
        float f111 = dot(f67, f107);
        float f112 = 1.0 - f111;
        float f113 = f112 * f112;
        float f114 = (f113 * f113) * f112;
        vec3 f115 = vec3(f114) + (f72 * (1.0 - f114));
        float f116 = f109 * f109;
        float f117 = (((f110 * f116) - f110) * f110) + 1.0;
        float f118 = 1.0 - f71;
        f106 = f83 + (((vec3(f118) - (f115 * (f73 * f118))) * CB0[15].xyz) * f108);
        f105 = ((f115 * (((f116 + (f116 * f116)) / max(((f117 * f117) * ((f111 * 3.0) + 0.5)) * ((f110 * 0.75) + 0.25), 7.0000001869630068540573120117188e-05)) * f108)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f106 = f83;
        f105 = vec3(0.0);
    }
    float f119 = f70 * 5.0;
    vec3 f120 = vec4(f74, f119).xyz;
    vec3 f121 = textureLod(PrefilteredEnvIndoorTexture, f120, f119).xyz;
    vec3 f122;
    if (CB0[32].w == 0.0)
    {
        f122 = f121;
    }
    else
    {
        f122 = mix(f121, textureLod(PrefilteredEnvBlendTargetTexture, f120, f119).xyz, vec3(CB0[32].w));
    }
    vec4 f123 = texture(PrecomputedBRDFTexture, vec2(f70, max(9.9999997473787516355514526367188e-05, dot(f66, f69))));
    float f124 = f123.x;
    float f125 = f123.y;
    vec3 f126 = ((f72 * f124) + vec3(f125)) / vec3(f124 + f125);
    float f127 = 1.0 - f71;
    vec3 f128 = f66 * f66;
    bvec3 f129 = lessThan(f66, vec3(0.0));
    vec3 f130 = vec3(f129.x ? f128.x : vec3(0.0).x, f129.y ? f128.y : vec3(0.0).y, f129.z ? f128.z : vec3(0.0).z);
    vec3 f131 = f128 - f130;
    float f132 = f131.x;
    float f133 = f131.y;
    float f134 = f131.z;
    float f135 = f130.x;
    float f136 = f130.y;
    float f137 = f130.z;
    vec3 f138 = ((((f106 + (((vec3(f127) - (f126 * (f73 * f127))) * (((((((CB0[40].xyz * f132) + (CB0[42].xyz * f133)) + (CB0[44].xyz * f134)) + (CB0[41].xyz * f135)) + (CB0[43].xyz * f136)) + (CB0[45].xyz * f137)) + (((((((CB0[34].xyz * f132) + (CB0[36].xyz * f133)) + (CB0[38].xyz * f134)) + (CB0[35].xyz * f135)) + (CB0[37].xyz * f136)) + (CB0[39].xyz * f137)) * f84))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f84 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f25.z * 2.0) * f58)) * f56) + ((f105 * (f58 * VARYING0.w)) + ((mix(f122, textureLod(PrefilteredEnvTexture, f120, f119).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f74.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f84)) * f126) * f73));
    vec4 f139 = vec4(0.0);
    f139.x = f138.x;
    vec4 f140 = f139;
    f140.y = f138.y;
    vec4 f141 = f140;
    f141.z = f138.z;
    vec4 f142 = f141;
    f142.w = 1.0;
    float f143 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f144 = textureLod(PrefilteredEnvTexture, vec4(-f57, 0.0).xyz, max(CB0[18].y, f143) * 5.0).xyz;
    bvec3 f145 = bvec3(!(CB0[18].w == 0.0));
    vec3 f146 = mix(vec3(f145.x ? CB0[19].xyz.x : f144.x, f145.y ? CB0[19].xyz.y : f144.y, f145.z ? CB0[19].xyz.z : f144.z), f142.xyz, vec3(f143));
    vec4 f147 = f142;
    f147.x = f146.x;
    vec4 f148 = f147;
    f148.y = f146.y;
    vec4 f149 = f148;
    f149.z = f146.z;
    vec3 f150 = sqrt(clamp(f149.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
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
