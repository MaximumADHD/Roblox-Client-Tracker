#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
uniform vec4 CB0[57];
uniform vec4 CB4[63];
uniform vec4 CB5[63];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray NormalMapTexture;
uniform sampler2DArray AlbedoMapTexture;

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
    vec3 f4 = vec3(VARYING3.xyz);
    vec4 f5 = texture(SpecularMapTexture, f4);
    vec3 f6;
    if (VARYING8.w < 1.0)
    {
        ivec3 f7 = ivec3(VARYING8.xyz + vec3(0.5));
        int f8 = f7.x;
        int f9 = f7.y;
        int f10 = f7.z;
        float f11 = dot(VARYING0.xyz, vec3(CB5[f8 * 1 + 0].z, CB5[f9 * 1 + 0].z, CB5[f10 * 1 + 0].z));
        vec3 f12 = vec3(0.0);
        f12.x = clamp((f1.w * CB5[f8 * 1 + 0].x) + CB5[f8 * 1 + 0].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.y = clamp((f3.w * CB5[f9 * 1 + 0].x) + CB5[f9 * 1 + 0].y, 0.0, 1.0);
        vec3 f14 = f13;
        f14.z = clamp((f5.w * CB5[f10 * 1 + 0].x) + CB5[f10 * 1 + 0].y, 0.0, 1.0);
        vec3 f15 = VARYING0.xyz * f14;
        float f16 = 1.0 / f11;
        float f17 = 0.5 * f11;
        float f18 = f15.x;
        float f19 = f15.y;
        float f20 = f15.z;
        float f21 = clamp(((f18 - max(f19, f20)) + f17) * f16, 0.0, 1.0);
        float f22 = clamp(((f19 - max(f18, f20)) + f17) * f16, 0.0, 1.0);
        float f23 = clamp(((f20 - max(f18, f19)) + f17) * f16, 0.0, 1.0);
        vec2 f24 = dFdx(VARYING1.xy);
        vec2 f25 = dFdy(VARYING1.xy);
        f6 = mix(vec3(f21, f22, f23) / vec3((f21 + f22) + f23), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f24, f24), dot(f25, f25))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f6 = VARYING0.xyz;
    }
    vec4 f26 = ((f1 * f6.x) + (f3 * f6.y)) + (f5 * f6.z);
    vec4 f27 = texture(NormalMapTexture, f0);
    vec4 f28 = texture(NormalMapTexture, f2);
    vec4 f29 = texture(NormalMapTexture, f4);
    vec2 f30 = (((f27 * f6.x) + (f28 * f6.y)) + (f29 * f6.z)).wy * 2.0;
    vec2 f31 = f30 - vec2(1.0);
    vec3 f32 = normalize(((vec3(f31, sqrt(clamp(1.0 + dot(vec2(1.0) - f30, f31), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f6, f6))) + vec3(0.0, 0.0, 1.0));
    vec3 f33 = vec3(dot(VARYING7, f6));
    vec3 f34 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f33) * f32.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f33) * f32.y)) + (VARYING6 * f32.z)), 0.0).xyz;
    vec4 f35 = texture(AlbedoMapTexture, f0);
    vec4 f36 = texture(AlbedoMapTexture, f2);
    vec4 f37 = texture(AlbedoMapTexture, f4);
    int f38 = int(VARYING8.x + 0.5);
    int f39 = int(VARYING8.y + 0.5);
    int f40 = int(VARYING8.z + 0.5);
    vec2 f41 = f35.xz - vec2(0.5);
    float f42 = f41.x;
    vec4 f43 = f35.yxzw;
    f43.y = f42;
    float f44 = f41.y;
    vec4 f45 = f43;
    f45.z = f44;
    vec2 f46 = f36.xz - vec2(0.5);
    float f47 = f46.x;
    vec4 f48 = f36.yxzw;
    f48.y = f47;
    float f49 = f46.y;
    vec4 f50 = f48;
    f50.z = f49;
    vec2 f51 = f37.xz - vec2(0.5);
    float f52 = f51.x;
    vec4 f53 = f37.yxzw;
    f53.y = f52;
    float f54 = f51.y;
    vec4 f55 = f53;
    f55.z = f54;
    vec4 f56 = f45;
    f56.x = CB4[f38 * 1 + 0].x * f35.y;
    vec4 f57 = f56;
    f57.y = (CB4[f38 * 1 + 0].y * f42) - (CB4[f38 * 1 + 0].z * f44);
    vec4 f58 = f57;
    f58.z = (CB4[f38 * 1 + 0].z * f42) + (CB4[f38 * 1 + 0].y * f44);
    vec4 f59 = f50;
    f59.x = CB4[f39 * 1 + 0].x * f36.y;
    vec4 f60 = f59;
    f60.y = (CB4[f39 * 1 + 0].y * f47) - (CB4[f39 * 1 + 0].z * f49);
    vec4 f61 = f60;
    f61.z = (CB4[f39 * 1 + 0].z * f47) + (CB4[f39 * 1 + 0].y * f49);
    vec4 f62 = f55;
    f62.x = CB4[f40 * 1 + 0].x * f37.y;
    vec4 f63 = f62;
    f63.y = (CB4[f40 * 1 + 0].y * f52) - (CB4[f40 * 1 + 0].z * f54);
    vec4 f64 = f63;
    f64.z = (CB4[f40 * 1 + 0].z * f52) + (CB4[f40 * 1 + 0].y * f54);
    vec4 f65 = ((f58 * f6.x) + (f61 * f6.y)) + (f64 * f6.z);
    float f66 = f65.x;
    float f67 = f66 - f65.z;
    vec3 f68 = vec4(vec3(f67, f66, f67) + (vec3(f65.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f69 = CB0[11].xyz - VARYING5.xyz;
    float f70 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f71 = -CB0[16].xyz;
    float f72 = dot(f34, f71);
    vec3 f73 = normalize(f69);
    float f74 = 0.08900000154972076416015625 + (f26.y * 0.9110000133514404296875);
    float f75 = CB0[31].w * f70;
    vec3 f76 = reflect(-f73, f34);
    vec3 f77 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f78 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f79 = VARYING4.yzx - (VARYING4.yzx * f78);
    vec4 f80 = texture(LightMapTexture, f79);
    vec4 f81 = texture(LightGridSkylightTexture, f79);
    vec4 f82 = vec4(clamp(f78, 0.0, 1.0));
    vec4 f83 = mix(f80, vec4(0.0), f82);
    vec4 f84 = mix(f81, vec4(1.0), f82);
    vec3 f85 = f83.xyz * (f83.w * 120.0);
    float f86 = f84.x;
    float f87 = f84.y;
    vec3 f88 = f77 - CB0[46].xyz;
    vec3 f89 = f77 - CB0[47].xyz;
    vec3 f90 = f77 - CB0[48].xyz;
    vec4 f91 = vec4(f77, 1.0) * mat4(CB8[((dot(f88, f88) < CB0[46].w) ? 0 : ((dot(f89, f89) < CB0[47].w) ? 1 : ((dot(f90, f90) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f88, f88) < CB0[46].w) ? 0 : ((dot(f89, f89) < CB0[47].w) ? 1 : ((dot(f90, f90) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f88, f88) < CB0[46].w) ? 0 : ((dot(f89, f89) < CB0[47].w) ? 1 : ((dot(f90, f90) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f88, f88) < CB0[46].w) ? 0 : ((dot(f89, f89) < CB0[47].w) ? 1 : ((dot(f90, f90) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f92 = textureLod(ShadowAtlasTexture, f91.xy, 0.0);
    vec2 f93 = vec2(0.0);
    f93.x = CB0[51].z;
    vec2 f94 = f93;
    f94.y = CB0[51].w;
    float f95 = (2.0 * f91.z) - 1.0;
    float f96 = exp(CB0[51].z * f95);
    float f97 = -exp((-CB0[51].w) * f95);
    vec2 f98 = (f94 * CB0[52].y) * vec2(f96, f97);
    vec2 f99 = f98 * f98;
    float f100 = f92.x;
    float f101 = max(f92.y - (f100 * f100), f99.x);
    float f102 = f96 - f100;
    float f103 = f92.z;
    float f104 = max(f92.w - (f103 * f103), f99.y);
    float f105 = f97 - f103;
    float f106 = (f72 * CB0[14].w) * (((f72 * CB0[52].x) > 0.0) ? mix(min((f96 <= f100) ? 1.0 : clamp(((f101 / (f101 + (f102 * f102))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f97 <= f103) ? 1.0 : clamp(((f104 / (f104 + (f105 * f105))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f87, clamp((length(f77 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f87);
    vec3 f107;
    vec3 f108;
    if (f106 > 0.0)
    {
        vec3 f109 = normalize(f73 + f71);
        float f110 = clamp(f106, 0.0, 1.0);
        float f111 = f74 * f74;
        float f112 = max(0.001000000047497451305389404296875, dot(f34, f109));
        float f113 = dot(f71, f109);
        float f114 = 1.0 - f113;
        float f115 = f114 * f114;
        float f116 = (f115 * f115) * f114;
        vec3 f117 = vec3(f116) + (vec3(0.039999999105930328369140625) * (1.0 - f116));
        float f118 = f111 * f111;
        float f119 = (((f112 * f118) - f112) * f112) + 1.0;
        f108 = f85 + (((vec3(1.0) - (f117 * f75)) * CB0[15].xyz) * f110);
        f107 = ((f117 * (((f118 + (f118 * f118)) / (((f119 * f119) * ((f113 * 3.0) + 0.5)) * ((f112 * 0.75) + 0.25))) * f110)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f108 = f85;
        f107 = vec3(0.0);
    }
    float f120 = f74 * 5.0;
    vec3 f121 = vec4(f76, f120).xyz;
    vec3 f122 = textureLod(PrefilteredEnvIndoorTexture, f121, f120).xyz;
    vec3 f123;
    if (CB0[32].w == 0.0)
    {
        f123 = f122;
    }
    else
    {
        f123 = mix(f122, textureLod(PrefilteredEnvBlendTargetTexture, f121, f120).xyz, vec3(CB0[32].w));
    }
    vec4 f124 = texture(PrecomputedBRDFTexture, vec2(f74, max(9.9999997473787516355514526367188e-05, dot(f34, f73))));
    float f125 = f124.x;
    float f126 = f124.y;
    vec3 f127 = ((vec3(0.039999999105930328369140625) * f125) + vec3(f126)) / vec3(f125 + f126);
    vec3 f128 = f34 * f34;
    bvec3 f129 = lessThan(f34, vec3(0.0));
    vec3 f130 = vec3(f129.x ? f128.x : vec3(0.0).x, f129.y ? f128.y : vec3(0.0).y, f129.z ? f128.z : vec3(0.0).z);
    vec3 f131 = f128 - f130;
    float f132 = f131.x;
    float f133 = f131.y;
    float f134 = f131.z;
    float f135 = f130.x;
    float f136 = f130.y;
    float f137 = f130.z;
    vec3 f138 = ((((f108 + (((vec3(1.0) - (f127 * f75)) * ((((((((CB0[40].xyz * f132) + (CB0[42].xyz * f133)) + (CB0[44].xyz * f134)) + (CB0[41].xyz * f135)) + (CB0[43].xyz * f136)) + (CB0[45].xyz * f137)) * CB0[30].w) + ((((((((CB0[34].xyz * f132) + (CB0[36].xyz * f133)) + (CB0[38].xyz * f134)) + (CB0[35].xyz * f135)) + (CB0[37].xyz * f136)) + (CB0[39].xyz * f137)) * CB0[30].w) * f86))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f86 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f26.z * 2.0) * f70)) * (f68 * f68)) + ((f107 * (f70 * VARYING0.w)) + ((mix(f123, textureLod(PrefilteredEnvTexture, f121, f120).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f76.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f86)) * f127) * f75));
    vec4 f139 = vec4(0.0);
    f139.x = f138.x;
    vec4 f140 = f139;
    f140.y = f138.y;
    vec4 f141 = f140;
    f141.z = f138.z;
    vec4 f142 = f141;
    f142.w = 1.0;
    float f143 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f144 = textureLod(PrefilteredEnvTexture, vec4(-f69, 0.0).xyz, max(CB0[18].y, f143) * 5.0).xyz;
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
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
