#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[52];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
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
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec4 f3 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f1).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f4 = f3.yz - vec2(0.5);
    float f5 = f3.x;
    float f6 = f5 - f4.y;
    vec3 f7 = vec4(vec3(f6, f5, f6) + (vec3(f4.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f8 = CB0[7].xyz - VARYING5.xyz;
    float f9 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f10 = normalize(VARYING6);
    vec3 f11 = -CB0[11].xyz;
    float f12 = dot(f10, f11);
    vec3 f13 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f14 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f15 = VARYING4.yzx - (VARYING4.yzx * f14);
    vec4 f16 = vec4(clamp(f14, 0.0, 1.0));
    vec4 f17 = mix(texture(LightMapTexture, f15), vec4(0.0), f16);
    vec4 f18 = mix(texture(LightGridSkylightTexture, f15), vec4(1.0), f16);
    float f19 = f18.x;
    float f20 = f18.y;
    vec3 f21 = f13 - CB0[41].xyz;
    vec3 f22 = f13 - CB0[42].xyz;
    vec3 f23 = f13 - CB0[43].xyz;
    vec4 f24 = vec4(f13, 1.0) * mat4(CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f25 = textureLod(ShadowAtlasTexture, f24.xy, 0.0);
    vec2 f26 = vec2(0.0);
    f26.x = CB0[45].z;
    vec2 f27 = f26;
    f27.y = CB0[45].w;
    float f28 = (2.0 * f24.z) - 1.0;
    float f29 = exp(CB0[45].z * f28);
    float f30 = -exp((-CB0[45].w) * f28);
    vec2 f31 = (f27 * CB0[46].y) * vec2(f29, f30);
    vec2 f32 = f31 * f31;
    float f33 = f25.x;
    float f34 = max(f25.y - (f33 * f33), f32.x);
    float f35 = f29 - f33;
    float f36 = f25.z;
    float f37 = max(f25.w - (f36 * f36), f32.y);
    float f38 = f30 - f36;
    vec3 f39 = normalize(f8);
    vec3 f40 = (f7 * f7).xyz;
    float f41 = f2.y;
    float f42 = CB0[26].w * f9;
    vec3 f43 = reflect(-f39, f10);
    vec3 f44 = normalize(f11 + f39);
    float f45 = clamp(f12 * ((f12 > 0.0) ? mix(f20, mix(min((f29 <= f33) ? 1.0 : clamp(((f34 / (f34 + (f35 * f35))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f30 <= f36) ? 1.0 : clamp(((f37 / (f37 + (f38 * f38))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f20, clamp((length(f13 - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0), 0.0, 1.0);
    float f46 = f41 * f41;
    float f47 = max(0.001000000047497451305389404296875, dot(f10, f44));
    float f48 = dot(f11, f44);
    float f49 = 1.0 - f48;
    float f50 = f49 * f49;
    float f51 = (f50 * f50) * f49;
    vec3 f52 = vec3(f51) + (vec3(0.039999999105930328369140625) * (1.0 - f51));
    float f53 = f46 * f46;
    float f54 = (((f47 * f53) - f47) * f47) + 1.0;
    float f55 = f41 * 5.0;
    vec3 f56 = vec4(f43, f55).xyz;
    vec4 f57 = texture(PrecomputedBRDFTexture, vec2(f41, max(9.9999997473787516355514526367188e-05, dot(f10, f39))));
    float f58 = f57.x;
    float f59 = f57.y;
    vec3 f60 = ((vec3(0.039999999105930328369140625) * f58) + vec3(f59)) / vec3(f58 + f59);
    vec3 f61 = f60 * f42;
    vec3 f62 = f10 * f10;
    bvec3 f63 = lessThan(f10, vec3(0.0));
    vec3 f64 = vec3(f63.x ? f62.x : vec3(0.0).x, f63.y ? f62.y : vec3(0.0).y, f63.z ? f62.z : vec3(0.0).z);
    vec3 f65 = f62 - f64;
    float f66 = f65.x;
    float f67 = f65.y;
    float f68 = f65.z;
    float f69 = f64.x;
    float f70 = f64.y;
    float f71 = f64.z;
    vec3 f72 = ((((((CB0[35].xyz * f66) + (CB0[37].xyz * f67)) + (CB0[39].xyz * f68)) + (CB0[36].xyz * f69)) + (CB0[38].xyz * f70)) + (CB0[40].xyz * f71)) + (((((((CB0[29].xyz * f66) + (CB0[31].xyz * f67)) + (CB0[33].xyz * f68)) + (CB0[30].xyz * f69)) + (CB0[32].xyz * f70)) + (CB0[34].xyz * f71)) * f19);
    vec3 f73 = (mix(textureLod(PrefilteredEnvIndoorTexture, f56, f55).xyz, textureLod(PrefilteredEnvTexture, f56, f55).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f43.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f19)) * f60) * f42;
    vec3 f74 = ((((((((vec3(1.0) - (f52 * f42)) * CB0[10].xyz) * f45) + (((vec3(1.0) - f61) * f72) * CB0[25].w)) + (CB0[27].xyz + (CB0[28].xyz * f19))) + vec3((f2.z * 2.0) * f9)) * f40) + (((((f52 * (((f53 + (f53 * f53)) / (((f54 * f54) * ((f48 * 3.0) + 0.5)) * ((f47 * 0.75) + 0.25))) * f45)) * CB0[10].xyz) * f9) * VARYING0.w) + f73)) + ((f17.xyz * (f17.w * 120.0)).xyz * mix(f40, f73 * (1.0 / (max(max(f72.x, f72.y), f72.z) + 0.00999999977648258209228515625)), f61 * (f42 * (1.0 - f19))));
    vec4 f75 = vec4(f74.x, f74.y, f74.z, vec4(0.0).w);
    f75.w = 1.0;
    float f76 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f77 = textureLod(PrefilteredEnvTexture, vec4(-f8, 0.0).xyz, max(CB0[13].y, f76) * 5.0).xyz;
    bvec3 f78 = bvec3(CB0[13].w != 0.0);
    vec3 f79 = sqrt(clamp(mix(vec3(f78.x ? CB0[14].xyz.x : f77.x, f78.y ? CB0[14].xyz.y : f77.y, f78.z ? CB0[14].xyz.z : f77.z), f75.xyz, vec3(f76)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f79.x, f79.y, f79.z, f75.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
