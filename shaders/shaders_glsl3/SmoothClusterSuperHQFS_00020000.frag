#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 CB4[63];
uniform vec4 CB5[63];
uniform sampler2D ShadowMapTexture;
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
in vec3 VARYING8;
in vec4 VARYING9;
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
    if (VARYING9.w < 1.0)
    {
        ivec3 f7 = ivec3(VARYING9.xyz + vec3(0.5));
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
        f6 = mix(vec3(f21, f22, f23) / vec3((f21 + f22) + f23), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f24, f24), dot(f25, f25))) * 7.0) + clamp(VARYING9.w, 0.0, 1.0), 0.0, 1.0)));
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
    int f38 = int(VARYING9.x + 0.5);
    int f39 = int(VARYING9.y + 0.5);
    int f40 = int(VARYING9.z + 0.5);
    vec3 f41;
    if (!(CB4[f38 * 1 + 0].w == 0.0))
    {
        f41 = (mix(vec3(1.0), CB4[f38 * 1 + 0].xyz, vec3(f35.w)) * f35.xyz) * f6.x;
    }
    else
    {
        vec2 f42 = f35.xz - vec2(0.5);
        float f43 = f42.x;
        float f44 = f42.y;
        float f45 = CB4[f38 * 1 + 0].x * f35.y;
        float f46 = (CB4[f38 * 1 + 0].y * f43) - (CB4[f38 * 1 + 0].z * f44);
        float f47 = (CB4[f38 * 1 + 0].z * f43) + (CB4[f38 * 1 + 0].y * f44);
        float f48 = f45 - f47;
        f41 = (vec3(f48, f45, f48) + (vec3(f46, f47, f46) * vec3(1.0, 1.0, -1.0))) * f6.x;
    }
    vec3 f49;
    if (!(CB4[f39 * 1 + 0].w == 0.0))
    {
        f49 = f41 + ((mix(vec3(1.0), CB4[f39 * 1 + 0].xyz, vec3(f36.w)) * f36.xyz) * f6.y);
    }
    else
    {
        vec2 f50 = f36.xz - vec2(0.5);
        float f51 = f50.x;
        float f52 = f50.y;
        float f53 = CB4[f39 * 1 + 0].x * f36.y;
        float f54 = (CB4[f39 * 1 + 0].y * f51) - (CB4[f39 * 1 + 0].z * f52);
        float f55 = (CB4[f39 * 1 + 0].z * f51) + (CB4[f39 * 1 + 0].y * f52);
        float f56 = f53 - f55;
        f49 = f41 + ((vec3(f56, f53, f56) + (vec3(f54, f55, f54) * vec3(1.0, 1.0, -1.0))) * f6.y);
    }
    vec3 f57;
    if (!(CB4[f40 * 1 + 0].w == 0.0))
    {
        f57 = f49 + ((mix(vec3(1.0), CB4[f40 * 1 + 0].xyz, vec3(f37.w)) * f37.xyz) * f6.z);
    }
    else
    {
        vec2 f58 = f37.xz - vec2(0.5);
        float f59 = f58.x;
        float f60 = f58.y;
        float f61 = CB4[f40 * 1 + 0].x * f37.y;
        float f62 = (CB4[f40 * 1 + 0].y * f59) - (CB4[f40 * 1 + 0].z * f60);
        float f63 = (CB4[f40 * 1 + 0].z * f59) + (CB4[f40 * 1 + 0].y * f60);
        float f64 = f61 - f63;
        f57 = f49 + ((vec3(f64, f61, f64) + (vec3(f62, f63, f62) * vec3(1.0, 1.0, -1.0))) * f6.z);
    }
    vec3 f65 = f57 * f57;
    float f66 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f67 = normalize(VARYING8);
    float f68 = 0.08900000154972076416015625 + (f26.y * 0.9110000133514404296875);
    float f69 = f26.x;
    vec3 f70 = mix(vec3(0.039999999105930328369140625), f65, vec3(f69));
    float f71 = CB0[31].w * f66;
    vec3 f72 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f73 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f74 = VARYING4.yzx - (VARYING4.yzx * f73);
    vec4 f75 = texture(LightMapTexture, f74);
    vec4 f76 = texture(LightGridSkylightTexture, f74);
    vec4 f77 = vec4(clamp(f73, 0.0, 1.0));
    vec4 f78 = mix(f75, vec4(0.0), f77);
    vec4 f79 = mix(f76, vec4(1.0), f77);
    float f80 = f79.x;
    vec4 f81 = texture(ShadowMapTexture, f72.xy);
    float f82 = f72.z;
    vec3 f83 = reflect(-f67, f34);
    float f84 = f68 * 5.0;
    vec3 f85 = vec4(f83, f84).xyz;
    vec3 f86 = textureLod(PrefilteredEnvIndoorTexture, f85, f84).xyz;
    vec3 f87;
    if (CB0[32].w == 0.0)
    {
        f87 = f86;
    }
    else
    {
        f87 = mix(f86, textureLod(PrefilteredEnvBlendTargetTexture, f85, f84).xyz, vec3(CB0[32].w));
    }
    vec4 f88 = texture(PrecomputedBRDFTexture, vec2(f68, max(9.9999997473787516355514526367188e-05, dot(f34, f67))));
    float f89 = f88.x;
    float f90 = f88.y;
    vec3 f91 = ((f70 * f89) + vec3(f90)) / vec3(f89 + f90);
    float f92 = 1.0 - f69;
    float f93 = f71 * f92;
    vec3 f94 = vec3(f92);
    vec3 f95 = f34 * f34;
    bvec3 f96 = lessThan(f34, vec3(0.0));
    vec3 f97 = vec3(f96.x ? f95.x : vec3(0.0).x, f96.y ? f95.y : vec3(0.0).y, f96.z ? f95.z : vec3(0.0).z);
    vec3 f98 = f95 - f97;
    float f99 = f98.x;
    float f100 = f98.y;
    float f101 = f98.z;
    float f102 = f97.x;
    float f103 = f97.y;
    float f104 = f97.z;
    vec3 f105 = -CB0[16].xyz;
    float f106 = dot(f34, f105) * ((1.0 - ((step(f81.x, f82) * clamp(CB0[29].z + (CB0[29].w * abs(f82 - 0.5)), 0.0, 1.0)) * f81.y)) * f79.y);
    vec3 f107 = normalize(f67 + f105);
    float f108 = clamp(f106, 0.0, 1.0);
    float f109 = f68 * f68;
    float f110 = max(0.001000000047497451305389404296875, dot(f34, f107));
    float f111 = dot(f105, f107);
    float f112 = 1.0 - f111;
    float f113 = f112 * f112;
    float f114 = (f113 * f113) * f112;
    vec3 f115 = vec3(f114) + (f70 * (1.0 - f114));
    float f116 = f109 * f109;
    float f117 = (((f110 * f116) - f110) * f110) + 1.0;
    vec3 f118 = (((((vec3((f26.z * 2.0) * f66) + (((f94 - (f91 * f93)) * (((((((CB0[40].xyz * f99) + (CB0[42].xyz * f100)) + (CB0[44].xyz * f101)) + (CB0[41].xyz * f102)) + (CB0[43].xyz * f103)) + (CB0[45].xyz * f104)) + (((((((CB0[34].xyz * f99) + (CB0[36].xyz * f100)) + (CB0[38].xyz * f101)) + (CB0[35].xyz * f102)) + (CB0[37].xyz * f103)) + (CB0[39].xyz * f104)) * f80))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f80)) * 1.0)) + ((((f94 - (f115 * f93)) * CB0[15].xyz) * f108) + (CB0[17].xyz * (f92 * clamp(-f106, 0.0, 1.0))))) + (f78.xyz * (f78.w * 120.0))) * f65) + (((mix(f87, textureLod(PrefilteredEnvTexture, f85, f84).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f83.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f80)) * f91) * f71) + (((f115 * (((f116 + (f116 * f116)) / (((f117 * f117) * ((f111 * 3.0) + 0.5)) * ((f110 * 0.75) + 0.25))) * f108)) * CB0[15].xyz) * (f66 * VARYING0.w)));
    vec4 f119 = vec4(0.0);
    f119.x = f118.x;
    vec4 f120 = f119;
    f120.y = f118.y;
    vec4 f121 = f120;
    f121.z = f118.z;
    vec4 f122 = f121;
    f122.w = 1.0;
    float f123 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f124 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[18].y, f123) * 5.0).xyz;
    bvec3 f125 = bvec3(!(CB0[18].w == 0.0));
    vec3 f126 = mix(vec3(f125.x ? CB0[19].xyz.x : f124.x, f125.y ? CB0[19].xyz.y : f124.y, f125.z ? CB0[19].xyz.z : f124.z), f122.xyz, vec3(f123));
    vec4 f127 = f122;
    f127.x = f126.x;
    vec4 f128 = f127;
    f128.y = f126.y;
    vec4 f129 = f128;
    f129.z = f126.z;
    vec3 f130 = sqrt(clamp(f129.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f131 = f129;
    f131.x = f130.x;
    vec4 f132 = f131;
    f132.y = f130.y;
    vec4 f133 = f132;
    f133.z = f130.z;
    _entryPointOutput = f133;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
