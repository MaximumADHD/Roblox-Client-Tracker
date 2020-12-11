#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AOMapTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
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
    float f10 = -VARYING6.x;
    vec2 f11 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f1) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f12 = f11 - vec2(1.0);
    vec3 f13 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f14 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f10), vec3(VARYING6.y, f10, 0.0), f13) * f12.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f13) * f12.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f11, f12), 0.0, 1.0)))), 0.0).xyz;
    vec3 f15 = -CB0[11].xyz;
    float f16 = dot(f14, f15);
    vec4 f17 = texture(AOMapTexture, gl_FragCoord.xy * CB0[45].xy);
    float f18 = f17.x;
    vec3 f19 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f20 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING4.yzx - (VARYING4.yzx * f20);
    vec4 f22 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f23 = mix(texture(LightMapTexture, f21), vec4(0.0), f22);
    vec4 f24 = mix(texture(LightGridSkylightTexture, f21), vec4(1.0), f22);
    vec3 f25 = (f23.xyz * (f23.w * 120.0)).xyz;
    float f26 = f24.x;
    float f27 = f24.y;
    vec3 f28 = f19 - CB0[41].xyz;
    vec3 f29 = f19 - CB0[42].xyz;
    vec3 f30 = f19 - CB0[43].xyz;
    vec4 f31 = vec4(f19, 1.0) * mat4(CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f32 = textureLod(ShadowAtlasTexture, f31.xy, 0.0);
    vec2 f33 = vec2(0.0);
    f33.x = CB0[46].z;
    vec2 f34 = f33;
    f34.y = CB0[46].w;
    float f35 = (2.0 * f31.z) - 1.0;
    float f36 = exp(CB0[46].z * f35);
    float f37 = -exp((-CB0[46].w) * f35);
    vec2 f38 = (f34 * CB0[47].y) * vec2(f36, f37);
    vec2 f39 = f38 * f38;
    float f40 = f32.x;
    float f41 = max(f32.y - (f40 * f40), f39.x);
    float f42 = f36 - f40;
    float f43 = f32.z;
    float f44 = max(f32.w - (f43 * f43), f39.y);
    float f45 = f37 - f43;
    vec3 f46 = normalize(f8);
    vec3 f47 = (f7 * f7).xyz;
    float f48 = f2.y;
    float f49 = CB0[26].w * f9;
    vec3 f50 = reflect(-f46, f14);
    vec3 f51 = normalize(f15 + f46);
    float f52 = clamp(f16 * ((f16 > 0.0) ? mix(f27, mix(min((f36 <= f40) ? 1.0 : clamp(((f41 / (f41 + (f42 * f42))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f37 <= f43) ? 1.0 : clamp(((f44 / (f44 + (f45 * f45))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f27, clamp((length(f19 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)), CB0[47].x) : 0.0), 0.0, 1.0);
    float f53 = f48 * f48;
    float f54 = max(0.001000000047497451305389404296875, dot(f14, f51));
    float f55 = dot(f15, f51);
    float f56 = 1.0 - f55;
    float f57 = f56 * f56;
    float f58 = (f57 * f57) * f56;
    vec3 f59 = vec3(f58) + (vec3(0.039999999105930328369140625) * (1.0 - f58));
    float f60 = f53 * f53;
    float f61 = (((f54 * f60) - f54) * f54) + 1.0;
    float f62 = f48 * 5.0;
    vec3 f63 = vec4(f50, f62).xyz;
    vec4 f64 = texture(PrecomputedBRDFTexture, vec2(f48, max(9.9999997473787516355514526367188e-05, dot(f14, f46))));
    float f65 = f64.x;
    float f66 = f64.y;
    vec3 f67 = ((vec3(0.039999999105930328369140625) * f65) + vec3(f66)) / vec3(f65 + f66);
    vec3 f68 = f67 * f49;
    vec3 f69 = f14 * f14;
    bvec3 f70 = lessThan(f14, vec3(0.0));
    vec3 f71 = vec3(f70.x ? f69.x : vec3(0.0).x, f70.y ? f69.y : vec3(0.0).y, f70.z ? f69.z : vec3(0.0).z);
    vec3 f72 = f69 - f71;
    float f73 = f72.x;
    float f74 = f72.y;
    float f75 = f72.z;
    float f76 = f71.x;
    float f77 = f71.y;
    float f78 = f71.z;
    vec3 f79 = (mix(textureLod(PrefilteredEnvIndoorTexture, f63, f62).xyz * f25, textureLod(PrefilteredEnvTexture, f63, f62).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f50.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f26)) * f67) * f49;
    vec3 f80 = ((((((((vec3(1.0) - (f59 * f49)) * CB0[10].xyz) * f52) + ((vec3(1.0) - f68) * (((((((CB0[35].xyz * f73) + (CB0[37].xyz * f74)) + (CB0[39].xyz * f75)) + (CB0[36].xyz * f76)) + (CB0[38].xyz * f77)) + (CB0[40].xyz * f78)) + (((((((CB0[29].xyz * f73) + (CB0[31].xyz * f74)) + (CB0[33].xyz * f75)) + (CB0[30].xyz * f76)) + (CB0[32].xyz * f77)) + (CB0[34].xyz * f78)) * f26)))) + ((CB0[27].xyz + (CB0[28].xyz * f26)) * (f18 * f18))) + vec3((f2.z * 2.0) * f9)) * f47) + (((((f59 * (((f60 + (f60 * f60)) / (((f61 * f61) * ((f55 * 3.0) + 0.5)) * ((f54 * 0.75) + 0.25))) * f52)) * CB0[10].xyz) * f9) * VARYING0.w) + f79)) + ((f25 * mix(f47, f79 * (1.0 / (max(max(f79.x, f79.y), f79.z) + 0.00999999977648258209228515625)), f68 * (f49 * (1.0 - f26)))) * f18);
    vec4 f81 = vec4(f80.x, f80.y, f80.z, vec4(0.0).w);
    f81.w = 1.0;
    float f82 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f83 = textureLod(PrefilteredEnvTexture, vec4(-f8, 0.0).xyz, max(CB0[13].y, f82) * 5.0).xyz;
    bvec3 f84 = bvec3(CB0[13].w != 0.0);
    vec3 f85 = sqrt(clamp(mix(vec3(f84.x ? CB0[14].xyz.x : f83.x, f84.y ? CB0[14].xyz.y : f83.y, f84.z ? CB0[14].xyz.z : f83.z), f81.xyz, vec3(f82)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f85.x, f85.y, f85.z, f81.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AOMapTexture=s10
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
