#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SCLayerData.h>
#include <LightShadowTransformGPU.h>
uniform vec4 CB0[57];
uniform vec4 CB5[189];
uniform vec4 CB4[24];
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
    vec3 f11 = (((mix(vec3(1.0), CB5[int(VARYING8.x + 0.5) * 3 + 2].xyz, vec3(f8.w)) * f8.xyz) * VARYING0.x) + ((mix(vec3(1.0), CB5[int(VARYING8.y + 0.5) * 3 + 2].xyz, vec3(f9.w)) * f9.xyz) * VARYING0.y)) + ((mix(vec3(1.0), CB5[int(VARYING8.z + 0.5) * 3 + 2].xyz, vec3(f10.w)) * f10.xyz) * VARYING0.z);
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
    vec3 f22 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f23 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f24 = VARYING4.yzx - (VARYING4.yzx * f23);
    vec4 f25 = texture(LightMapTexture, f24);
    vec4 f26 = texture(LightGridSkylightTexture, f24);
    vec4 f27 = vec4(clamp(f23, 0.0, 1.0));
    vec4 f28 = mix(f25, vec4(0.0), f27);
    vec4 f29 = mix(f26, vec4(1.0), f27);
    float f30 = f29.x;
    float f31 = f29.y;
    vec3 f32 = f22 - CB0[46].xyz;
    vec3 f33 = f22 - CB0[47].xyz;
    vec3 f34 = f22 - CB0[48].xyz;
    vec4 f35 = vec4(f22, 1.0) * mat4(CB4[((dot(f32, f32) < CB0[46].w) ? 0 : ((dot(f33, f33) < CB0[47].w) ? 1 : ((dot(f34, f34) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB4[((dot(f32, f32) < CB0[46].w) ? 0 : ((dot(f33, f33) < CB0[47].w) ? 1 : ((dot(f34, f34) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB4[((dot(f32, f32) < CB0[46].w) ? 0 : ((dot(f33, f33) < CB0[47].w) ? 1 : ((dot(f34, f34) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB4[((dot(f32, f32) < CB0[46].w) ? 0 : ((dot(f33, f33) < CB0[47].w) ? 1 : ((dot(f34, f34) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f36 = textureLod(ShadowAtlasTexture, f35.xy, 0.0);
    vec2 f37 = vec2(0.0);
    f37.x = CB0[51].z;
    vec2 f38 = f37;
    f38.y = CB0[51].w;
    float f39 = (2.0 * f35.z) - 1.0;
    float f40 = exp(CB0[51].z * f39);
    float f41 = -exp((-CB0[51].w) * f39);
    vec2 f42 = (f38 * CB0[52].y) * vec2(f40, f41);
    vec2 f43 = f42 * f42;
    float f44 = f36.x;
    float f45 = max(f36.y - (f44 * f44), f43.x);
    float f46 = f40 - f44;
    float f47 = f36.z;
    float f48 = max(f36.w - (f47 * f47), f43.y);
    float f49 = f41 - f47;
    vec3 f50 = reflect(-f17, f7);
    float f51 = f18 * 5.0;
    vec3 f52 = vec4(f50, f51).xyz;
    vec3 f53 = textureLod(PrefilteredEnvIndoorTexture, f52, f51).xyz;
    vec3 f54;
    if (CB0[32].w == 0.0)
    {
        f54 = f53;
    }
    else
    {
        f54 = mix(f53, textureLod(PrefilteredEnvBlendTargetTexture, f52, f51).xyz, vec3(CB0[32].w));
    }
    vec4 f55 = texture(PrecomputedBRDFTexture, vec2(f18, max(9.9999997473787516355514526367188e-05, dot(f7, f17))));
    float f56 = f55.x;
    float f57 = f55.y;
    vec3 f58 = ((f20 * f56) + vec3(f57)) / vec3(f56 + f57);
    float f59 = 1.0 - f19;
    float f60 = f21 * f59;
    vec3 f61 = vec3(f59);
    vec3 f62 = f7 * f7;
    bvec3 f63 = lessThan(f7, vec3(0.0));
    vec3 f64 = vec3(f63.x ? f62.x : vec3(0.0).x, f63.y ? f62.y : vec3(0.0).y, f63.z ? f62.z : vec3(0.0).z);
    vec3 f65 = f62 - f64;
    float f66 = f65.x;
    float f67 = f65.y;
    float f68 = f65.z;
    float f69 = f64.x;
    float f70 = f64.y;
    float f71 = f64.z;
    vec3 f72 = (mix(f54, textureLod(PrefilteredEnvTexture, f52, f51).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f50.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f30)) * f58) * f21;
    vec3 f73 = (vec3((f6.z * 2.0) * f14) + (((f61 - (f58 * f60)) * (((((((CB0[40].xyz * f66) + (CB0[42].xyz * f67)) + (CB0[44].xyz * f68)) + (CB0[41].xyz * f69)) + (CB0[43].xyz * f70)) + (CB0[45].xyz * f71)) + (((((((CB0[34].xyz * f66) + (CB0[36].xyz * f67)) + (CB0[38].xyz * f68)) + (CB0[35].xyz * f69)) + (CB0[37].xyz * f70)) + (CB0[39].xyz * f71)) * f30))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f30 * (2.0 - CB0[14].w)))) * 1.0);
    float f74 = (f16 * CB0[14].w) * (((f16 * CB0[52].x) > 0.0) ? mix(min((f40 <= f44) ? 1.0 : clamp(((f45 / (f45 + (f46 * f46))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f41 <= f47) ? 1.0 : clamp(((f48 / (f48 + (f49 * f49))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f31, clamp((length(f22 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f31);
    vec3 f75;
    vec3 f76;
    if (f74 > 0.0)
    {
        vec3 f77 = normalize(f17 + f15);
        float f78 = clamp(f74, 0.0, 1.0);
        float f79 = f18 * f18;
        float f80 = max(0.001000000047497451305389404296875, dot(f7, f77));
        float f81 = dot(f15, f77);
        float f82 = 1.0 - f81;
        float f83 = f82 * f82;
        float f84 = (f83 * f83) * f82;
        vec3 f85 = vec3(f84) + (f20 * (1.0 - f84));
        float f86 = f79 * f79;
        float f87 = (((f80 * f86) - f80) * f80) + 1.0;
        f76 = f73 + (((f61 - (f85 * f60)) * CB0[15].xyz) * f78);
        f75 = f72 + (((f85 * (((f86 + (f86 * f86)) / (((f87 * f87) * ((f81 * 3.0) + 0.5)) * ((f80 * 0.75) + 0.25))) * f78)) * CB0[15].xyz) * ((CB0[14].w * CB0[14].w) * (f14 * VARYING0.w)));
    }
    else
    {
        f76 = f73;
        f75 = f72;
    }
    vec3 f88 = ((f76 + (f28.xyz * (f28.w * 120.0))) * f12) + f75;
    vec4 f89 = vec4(0.0);
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    vec4 f92 = f91;
    f92.w = 1.0;
    float f93 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f94 = textureLod(PrefilteredEnvTexture, vec4(-f13, 0.0).xyz, max(CB0[18].y, f93) * 5.0).xyz;
    bvec3 f95 = bvec3(!(CB0[18].w == 0.0));
    vec3 f96 = mix(vec3(f95.x ? CB0[19].xyz.x : f94.x, f95.y ? CB0[19].xyz.y : f94.y, f95.z ? CB0[19].xyz.z : f94.z), f92.xyz, vec3(f93));
    vec4 f97 = f92;
    f97.x = f96.x;
    vec4 f98 = f97;
    f98.y = f96.y;
    vec4 f99 = f98;
    f99.z = f96.z;
    vec3 f100 = sqrt(clamp(f99.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f101 = f99;
    f101.x = f100.x;
    vec4 f102 = f101;
    f102.y = f100.y;
    vec4 f103 = f102;
    f103.z = f100.z;
    _entryPointOutput = f103;
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
