#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform vec4 CB4[63];
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
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec4 f5 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f4 * VARYING0.z);
    vec4 f6 = texture(AlbedoMapTexture, f0);
    vec4 f7 = texture(AlbedoMapTexture, f2);
    vec4 f8 = texture(AlbedoMapTexture, VARYING3.xyz);
    vec3 f9 = (((mix(vec3(1.0), CB4[int(VARYING8.x + 0.5) * 1 + 0].xyz, vec3(f6.w)) * f6.xyz) * VARYING0.x) + ((mix(vec3(1.0), CB4[int(VARYING8.y + 0.5) * 1 + 0].xyz, vec3(f7.w)) * f7.xyz) * VARYING0.y)) + ((mix(vec3(1.0), CB4[int(VARYING8.z + 0.5) * 1 + 0].xyz, vec3(f8.w)) * f8.xyz) * VARYING0.z);
    vec3 f10 = f9 * f9;
    vec3 f11 = CB0[11].xyz - VARYING5.xyz;
    float f12 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f13 = normalize(VARYING6);
    vec3 f14 = -CB0[16].xyz;
    float f15 = dot(f13, f14);
    vec3 f16 = normalize(f11);
    float f17 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f18 = f5.x;
    vec3 f19 = mix(vec3(0.039999999105930328369140625), f10, vec3(f18));
    float f20 = CB0[31].w * f12;
    vec3 f21 = reflect(-f16, f13);
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
    vec4 f35 = vec4(f22, 1.0) * mat4(CB8[((dot(f32, f32) < CB0[46].w) ? 0 : ((dot(f33, f33) < CB0[47].w) ? 1 : ((dot(f34, f34) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f32, f32) < CB0[46].w) ? 0 : ((dot(f33, f33) < CB0[47].w) ? 1 : ((dot(f34, f34) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f32, f32) < CB0[46].w) ? 0 : ((dot(f33, f33) < CB0[47].w) ? 1 : ((dot(f34, f34) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f32, f32) < CB0[46].w) ? 0 : ((dot(f33, f33) < CB0[47].w) ? 1 : ((dot(f34, f34) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
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
    vec3 f50 = normalize(f16 - CB0[16].xyz);
    float f51 = clamp((f15 * CB0[14].w) * (((f15 * CB0[52].x) > 0.0) ? mix(min((f40 <= f44) ? 1.0 : clamp(((f45 / (f45 + (f46 * f46))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f41 <= f47) ? 1.0 : clamp(((f48 / (f48 + (f49 * f49))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f31, clamp((length(f22 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f31), 0.0, 1.0);
    float f52 = f17 * f17;
    float f53 = max(0.001000000047497451305389404296875, dot(f13, f50));
    float f54 = dot(f14, f50);
    float f55 = 1.0 - f54;
    float f56 = f55 * f55;
    float f57 = (f56 * f56) * f55;
    vec3 f58 = vec3(f57) + (f19 * (1.0 - f57));
    float f59 = f52 * f52;
    float f60 = (((f53 * f59) - f53) * f53) + 1.0;
    float f61 = 1.0 - f18;
    float f62 = f20 * f61;
    vec3 f63 = vec3(f61);
    float f64 = f17 * 5.0;
    vec3 f65 = vec4(f21, f64).xyz;
    vec3 f66 = textureLod(PrefilteredEnvIndoorTexture, f65, f64).xyz;
    vec3 f67;
    if (CB0[32].w == 0.0)
    {
        f67 = f66;
    }
    else
    {
        f67 = mix(f66, textureLod(PrefilteredEnvBlendTargetTexture, f65, f64).xyz, vec3(CB0[32].w));
    }
    vec4 f68 = texture(PrecomputedBRDFTexture, vec2(f17, max(9.9999997473787516355514526367188e-05, dot(f13, f16))));
    float f69 = f68.x;
    float f70 = f68.y;
    vec3 f71 = ((f19 * f69) + vec3(f70)) / vec3(f69 + f70);
    vec3 f72 = f13 * f13;
    bvec3 f73 = lessThan(f13, vec3(0.0));
    vec3 f74 = vec3(f73.x ? f72.x : vec3(0.0).x, f73.y ? f72.y : vec3(0.0).y, f73.z ? f72.z : vec3(0.0).z);
    vec3 f75 = f72 - f74;
    float f76 = f75.x;
    float f77 = f75.y;
    float f78 = f75.z;
    float f79 = f74.x;
    float f80 = f74.y;
    float f81 = f74.z;
    vec3 f82 = (((((((f28.xyz * (f28.w * 120.0)) * 1.0) + (((f63 - (f58 * f62)) * CB0[15].xyz) * f51)) + ((f63 - (f71 * f62)) * (((((((CB0[40].xyz * f76) + (CB0[42].xyz * f77)) + (CB0[44].xyz * f78)) + (CB0[41].xyz * f79)) + (CB0[43].xyz * f80)) + (CB0[45].xyz * f81)) + (((((((CB0[34].xyz * f76) + (CB0[36].xyz * f77)) + (CB0[38].xyz * f78)) + (CB0[35].xyz * f79)) + (CB0[37].xyz * f80)) + (CB0[39].xyz * f81)) * f30)))) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f30))) + vec3((f5.z * 2.0) * f12)) * f10) + (((((f58 * (min((f59 + (f59 * f59)) / (((f60 * f60) * ((f54 * 3.0) + 0.5)) * ((f53 * 0.75) + 0.25)), 65504.0) * f51)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f12 * VARYING0.w)) + ((mix(f67, textureLod(PrefilteredEnvTexture, f65, f64).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f21.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f30)) * f71) * f20));
    vec4 f83 = vec4(0.0);
    f83.x = f82.x;
    vec4 f84 = f83;
    f84.y = f82.y;
    vec4 f85 = f84;
    f85.z = f82.z;
    vec4 f86 = f85;
    f86.w = 1.0;
    float f87 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f88 = textureLod(PrefilteredEnvTexture, vec4(-f11, 0.0).xyz, max(CB0[18].y, f87) * 5.0).xyz;
    bvec3 f89 = bvec3(!(CB0[18].w == 0.0));
    vec3 f90 = mix(vec3(f89.x ? CB0[19].xyz.x : f88.x, f89.y ? CB0[19].xyz.y : f88.y, f89.z ? CB0[19].xyz.z : f88.z), f86.xyz, vec3(f87));
    vec4 f91 = f86;
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec3 f94 = sqrt(clamp(f93.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f95 = f93;
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    _entryPointOutput = f97;
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
