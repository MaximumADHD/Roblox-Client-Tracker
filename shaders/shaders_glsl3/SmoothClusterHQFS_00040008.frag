#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[57];
uniform vec4 CB4[63];
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
in vec3 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec3 f4 = vec3(VARYING3.xyz);
    vec4 f5 = texture(SpecularMapTexture, f4);
    vec4 f6 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f5 * VARYING0.z);
    vec3 f7 = normalize(VARYING6);
    vec4 f8 = texture(AlbedoMapTexture, f0);
    vec4 f9 = texture(AlbedoMapTexture, f2);
    vec4 f10 = texture(AlbedoMapTexture, f4);
    vec3 f11 = (((mix(vec3(1.0), CB4[int(VARYING8.x + 0.5) * 1 + 0].xyz, vec3(f8.w)) * f8.xyz) * VARYING0.x) + ((mix(vec3(1.0), CB4[int(VARYING8.y + 0.5) * 1 + 0].xyz, vec3(f9.w)) * f9.xyz) * VARYING0.y)) + ((mix(vec3(1.0), CB4[int(VARYING8.z + 0.5) * 1 + 0].xyz, vec3(f10.w)) * f10.xyz) * VARYING0.z);
    vec3 f12 = f11 * f11;
    vec3 f13 = CB0[11].xyz - VARYING5.xyz;
    float f14 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f15 = -CB0[16].xyz;
    float f16 = dot(f7, f15);
    vec3 f17 = normalize(f13);
    float f18 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f19 = f6.x;
    vec3 f20 = mix(vec3(0.039999999105930328369140625), f12, vec3(f19));
    float f21 = CB0[31].w * f14;
    vec3 f22 = reflect(-f17, f7);
    vec3 f23 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f24 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING4.yzx - (VARYING4.yzx * f24);
    vec4 f26 = texture(LightMapTexture, f25);
    vec4 f27 = texture(LightGridSkylightTexture, f25);
    vec4 f28 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f29 = mix(f26, vec4(0.0), f28);
    vec4 f30 = mix(f27, vec4(1.0), f28);
    vec3 f31 = f29.xyz * (f29.w * 120.0);
    float f32 = f30.x;
    float f33 = f30.y;
    vec3 f34 = f23 - CB0[46].xyz;
    vec3 f35 = f23 - CB0[47].xyz;
    vec3 f36 = f23 - CB0[48].xyz;
    vec4 f37 = vec4(f23, 1.0) * mat4(CB8[((dot(f34, f34) < CB0[46].w) ? 0 : ((dot(f35, f35) < CB0[47].w) ? 1 : ((dot(f36, f36) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f34, f34) < CB0[46].w) ? 0 : ((dot(f35, f35) < CB0[47].w) ? 1 : ((dot(f36, f36) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f34, f34) < CB0[46].w) ? 0 : ((dot(f35, f35) < CB0[47].w) ? 1 : ((dot(f36, f36) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f34, f34) < CB0[46].w) ? 0 : ((dot(f35, f35) < CB0[47].w) ? 1 : ((dot(f36, f36) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f38 = textureLod(ShadowAtlasTexture, f37.xy, 0.0);
    vec2 f39 = vec2(0.0);
    f39.x = CB0[51].z;
    vec2 f40 = f39;
    f40.y = CB0[51].w;
    float f41 = (2.0 * f37.z) - 1.0;
    float f42 = exp(CB0[51].z * f41);
    float f43 = -exp((-CB0[51].w) * f41);
    vec2 f44 = (f40 * CB0[52].y) * vec2(f42, f43);
    vec2 f45 = f44 * f44;
    float f46 = f38.x;
    float f47 = max(f38.y - (f46 * f46), f45.x);
    float f48 = f42 - f46;
    float f49 = f38.z;
    float f50 = max(f38.w - (f49 * f49), f45.y);
    float f51 = f43 - f49;
    float f52 = (f16 * CB0[14].w) * (((f16 * CB0[52].x) > 0.0) ? mix(min((f42 <= f46) ? 1.0 : clamp(((f47 / (f47 + (f48 * f48))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f43 <= f49) ? 1.0 : clamp(((f50 / (f50 + (f51 * f51))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f33, clamp((length(f23 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f33);
    vec3 f53;
    vec3 f54;
    if (f52 > 0.0)
    {
        vec3 f55 = normalize(f17 + f15);
        float f56 = clamp(f52, 0.0, 1.0);
        float f57 = f18 * f18;
        float f58 = max(0.001000000047497451305389404296875, dot(f7, f55));
        float f59 = dot(f15, f55);
        float f60 = 1.0 - f59;
        float f61 = f60 * f60;
        float f62 = (f61 * f61) * f60;
        vec3 f63 = vec3(f62) + (f20 * (1.0 - f62));
        float f64 = f57 * f57;
        float f65 = (((f58 * f64) - f58) * f58) + 1.0;
        float f66 = 1.0 - f19;
        f54 = f31 + (((vec3(f66) - (f63 * (f21 * f66))) * CB0[15].xyz) * f56);
        f53 = ((f63 * (((f64 + (f64 * f64)) / (((f65 * f65) * ((f59 * 3.0) + 0.5)) * ((f58 * 0.75) + 0.25))) * f56)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f54 = f31;
        f53 = vec3(0.0);
    }
    float f67 = f18 * 5.0;
    vec3 f68 = vec4(f22, f67).xyz;
    vec3 f69 = textureLod(PrefilteredEnvIndoorTexture, f68, f67).xyz;
    vec3 f70;
    if (CB0[32].w == 0.0)
    {
        f70 = f69;
    }
    else
    {
        f70 = mix(f69, textureLod(PrefilteredEnvBlendTargetTexture, f68, f67).xyz, vec3(CB0[32].w));
    }
    vec4 f71 = texture(PrecomputedBRDFTexture, vec2(f18, max(9.9999997473787516355514526367188e-05, dot(f7, f17))));
    float f72 = f71.x;
    float f73 = f71.y;
    vec3 f74 = ((f20 * f72) + vec3(f73)) / vec3(f72 + f73);
    float f75 = 1.0 - f19;
    vec3 f76 = f7 * f7;
    bvec3 f77 = lessThan(f7, vec3(0.0));
    vec3 f78 = vec3(f77.x ? f76.x : vec3(0.0).x, f77.y ? f76.y : vec3(0.0).y, f77.z ? f76.z : vec3(0.0).z);
    vec3 f79 = f76 - f78;
    float f80 = f79.x;
    float f81 = f79.y;
    float f82 = f79.z;
    float f83 = f78.x;
    float f84 = f78.y;
    float f85 = f78.z;
    vec3 f86 = ((((f54 + (((vec3(f75) - (f74 * (f21 * f75))) * (((((((CB0[40].xyz * f80) + (CB0[42].xyz * f81)) + (CB0[44].xyz * f82)) + (CB0[41].xyz * f83)) + (CB0[43].xyz * f84)) + (CB0[45].xyz * f85)) + (((((((CB0[34].xyz * f80) + (CB0[36].xyz * f81)) + (CB0[38].xyz * f82)) + (CB0[35].xyz * f83)) + (CB0[37].xyz * f84)) + (CB0[39].xyz * f85)) * f32))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f32 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f6.z * 2.0) * f14)) * f12) + ((f53 * (f14 * VARYING0.w)) + ((mix(f70, textureLod(PrefilteredEnvTexture, f68, f67).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f22.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f32)) * f74) * f21));
    vec4 f87 = vec4(0.0);
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec4 f89 = f88;
    f89.z = f86.z;
    vec4 f90 = f89;
    f90.w = 1.0;
    float f91 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f92 = textureLod(PrefilteredEnvTexture, vec4(-f13, 0.0).xyz, max(CB0[18].y, f91) * 5.0).xyz;
    bvec3 f93 = bvec3(!(CB0[18].w == 0.0));
    vec3 f94 = mix(vec3(f93.x ? CB0[19].xyz.x : f92.x, f93.y ? CB0[19].xyz.y : f92.y, f93.z ? CB0[19].xyz.z : f92.z), f90.xyz, vec3(f91));
    vec4 f95 = f90;
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    vec3 f98 = sqrt(clamp(f97.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f99 = f97;
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    _entryPointOutput = f101;
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
