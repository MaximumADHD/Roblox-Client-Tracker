#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[57];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec4 f5 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f4 * VARYING0.z);
    vec4 f6 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f2).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f7 = f6.yz - vec2(0.5);
    float f8 = f7.x;
    float f9 = f7.y;
    float f10 = VARYING8.x * f6.x;
    float f11 = (VARYING8.y * f8) - (VARYING8.z * f9);
    float f12 = (VARYING8.z * f8) + (VARYING8.y * f9);
    float f13 = f10 - f12;
    float f14 = f6.w;
    vec3 f15 = vec4(vec3(f13, f10, f13) + (vec3(f11, f12, f11) * vec3(1.0, 1.0, -1.0)), f14).xyz;
    vec3 f16 = mix(f15, f15 * VARYING8.xyz, vec3(VARYING8.w * f14));
    vec4 f17 = vec4(0.0);
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    vec3 f20 = CB0[11].xyz - VARYING5.xyz;
    float f21 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f22 = normalize(VARYING6);
    vec3 f23 = -CB0[16].xyz;
    float f24 = dot(f22, f23);
    vec3 f25 = normalize(f20);
    float f26 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f27 = CB0[31].w * f21;
    vec3 f28 = reflect(-f25, f22);
    vec3 f29 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f30 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f31 = VARYING4.yzx - (VARYING4.yzx * f30);
    vec4 f32 = texture(LightMapTexture, f31);
    vec4 f33 = texture(LightGridSkylightTexture, f31);
    vec4 f34 = vec4(clamp(f30, 0.0, 1.0));
    vec4 f35 = mix(f32, vec4(0.0), f34);
    vec4 f36 = mix(f33, vec4(1.0), f34);
    vec3 f37 = f35.xyz * (f35.w * 120.0);
    float f38 = f36.x;
    float f39 = f36.y;
    vec3 f40 = f29 - CB0[46].xyz;
    vec3 f41 = f29 - CB0[47].xyz;
    vec3 f42 = f29 - CB0[48].xyz;
    vec4 f43 = vec4(f29, 1.0) * mat4(CB8[((dot(f40, f40) < CB0[46].w) ? 0 : ((dot(f41, f41) < CB0[47].w) ? 1 : ((dot(f42, f42) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f40, f40) < CB0[46].w) ? 0 : ((dot(f41, f41) < CB0[47].w) ? 1 : ((dot(f42, f42) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f40, f40) < CB0[46].w) ? 0 : ((dot(f41, f41) < CB0[47].w) ? 1 : ((dot(f42, f42) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f40, f40) < CB0[46].w) ? 0 : ((dot(f41, f41) < CB0[47].w) ? 1 : ((dot(f42, f42) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f44 = textureLod(ShadowAtlasTexture, f43.xy, 0.0);
    vec2 f45 = vec2(0.0);
    f45.x = CB0[51].z;
    vec2 f46 = f45;
    f46.y = CB0[51].w;
    float f47 = (2.0 * f43.z) - 1.0;
    float f48 = exp(CB0[51].z * f47);
    float f49 = -exp((-CB0[51].w) * f47);
    vec2 f50 = (f46 * CB0[52].y) * vec2(f48, f49);
    vec2 f51 = f50 * f50;
    float f52 = f44.x;
    float f53 = max(f44.y - (f52 * f52), f51.x);
    float f54 = f48 - f52;
    float f55 = f44.z;
    float f56 = max(f44.w - (f55 * f55), f51.y);
    float f57 = f49 - f55;
    float f58 = (f24 * CB0[14].w) * (((f24 * CB0[52].x) > 0.0) ? mix(min((f48 <= f52) ? 1.0 : clamp(((f53 / (f53 + (f54 * f54))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f49 <= f55) ? 1.0 : clamp(((f56 / (f56 + (f57 * f57))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f39, clamp((length(f29 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f39);
    vec3 f59;
    vec3 f60;
    if (f58 > 0.0)
    {
        vec3 f61 = normalize(f25 + f23);
        float f62 = clamp(f58, 0.0, 1.0);
        float f63 = f26 * f26;
        float f64 = max(0.001000000047497451305389404296875, dot(f22, f61));
        float f65 = dot(f23, f61);
        float f66 = 1.0 - f65;
        float f67 = f66 * f66;
        float f68 = (f67 * f67) * f66;
        vec3 f69 = vec3(f68) + (vec3(0.039999999105930328369140625) * (1.0 - f68));
        float f70 = f63 * f63;
        float f71 = (((f64 * f70) - f64) * f64) + 1.0;
        f60 = f37 + (((vec3(1.0) - (f69 * f27)) * CB0[15].xyz) * f62);
        f59 = ((f69 * (((f70 + (f70 * f70)) / (((f71 * f71) * ((f65 * 3.0) + 0.5)) * ((f64 * 0.75) + 0.25))) * f62)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f60 = f37;
        f59 = vec3(0.0);
    }
    float f72 = f26 * 5.0;
    vec3 f73 = vec4(f28, f72).xyz;
    vec3 f74 = textureLod(PrefilteredEnvIndoorTexture, f73, f72).xyz;
    vec3 f75;
    if (CB0[32].w == 0.0)
    {
        f75 = f74;
    }
    else
    {
        f75 = mix(f74, textureLod(PrefilteredEnvBlendTargetTexture, f73, f72).xyz, vec3(CB0[32].w));
    }
    vec4 f76 = texture(PrecomputedBRDFTexture, vec2(f26, max(9.9999997473787516355514526367188e-05, dot(f22, f25))));
    float f77 = f76.x;
    float f78 = f76.y;
    vec3 f79 = ((vec3(0.039999999105930328369140625) * f77) + vec3(f78)) / vec3(f77 + f78);
    vec3 f80 = f22 * f22;
    bvec3 f81 = lessThan(f22, vec3(0.0));
    vec3 f82 = vec3(f81.x ? f80.x : vec3(0.0).x, f81.y ? f80.y : vec3(0.0).y, f81.z ? f80.z : vec3(0.0).z);
    vec3 f83 = f80 - f82;
    float f84 = f83.x;
    float f85 = f83.y;
    float f86 = f83.z;
    float f87 = f82.x;
    float f88 = f82.y;
    float f89 = f82.z;
    vec3 f90 = ((((f60 + (((vec3(1.0) - (f79 * f27)) * (((((((CB0[40].xyz * f84) + (CB0[42].xyz * f85)) + (CB0[44].xyz * f86)) + (CB0[41].xyz * f87)) + (CB0[43].xyz * f88)) + (CB0[45].xyz * f89)) + (((((((CB0[34].xyz * f84) + (CB0[36].xyz * f85)) + (CB0[38].xyz * f86)) + (CB0[35].xyz * f87)) + (CB0[37].xyz * f88)) + (CB0[39].xyz * f89)) * f38))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f38 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f5.z * 2.0) * f21)) * (f19.xyz * f19.xyz)) + ((f59 * (f21 * VARYING0.w)) + ((mix(f75, textureLod(PrefilteredEnvTexture, f73, f72).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f28.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f38)) * f79) * f27));
    vec4 f91 = vec4(0.0);
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec4 f94 = f93;
    f94.w = 1.0;
    float f95 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f96 = textureLod(PrefilteredEnvTexture, vec4(-f20, 0.0).xyz, max(CB0[18].y, f95) * 5.0).xyz;
    bvec3 f97 = bvec3(!(CB0[18].w == 0.0));
    vec3 f98 = mix(vec3(f97.x ? CB0[19].xyz.x : f96.x, f97.y ? CB0[19].xyz.y : f96.y, f97.z ? CB0[19].xyz.z : f96.z), f94.xyz, vec3(f95));
    vec4 f99 = f94;
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    vec3 f102 = sqrt(clamp(f101.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f103 = f101;
    f103.x = f102.x;
    vec4 f104 = f103;
    f104.y = f102.y;
    vec4 f105 = f104;
    f105.z = f102.z;
    _entryPointOutput = f105;
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
