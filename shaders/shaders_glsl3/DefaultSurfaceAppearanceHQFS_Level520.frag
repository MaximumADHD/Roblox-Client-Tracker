#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <SAParams.h>
uniform vec4 CB0[52];
uniform vec4 CB8[24];
uniform vec4 CB3[1];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f3 = texture(DiffuseMapTexture, VARYING0);
    float f4 = f3.w;
    vec4 f5 = vec4(mix(VARYING2.xyz, f3.xyz, vec3(f4)), VARYING2.w);
    vec4 f6 = vec4(f3.xyz, VARYING2.w * f4);
    bvec4 f7 = bvec4(CB3[0].x != 0.0);
    vec4 f8 = vec4(f7.x ? f5.x : f6.x, f7.y ? f5.y : f6.y, f7.z ? f5.z : f6.z, f7.w ? f5.w : f6.w);
    vec2 f9 = texture(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    float f11 = sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0));
    vec2 f12 = vec3(f10, f11).xy * f2;
    vec4 f13 = texture(SpecularMapTexture, VARYING0);
    vec3 f14 = normalize(((VARYING6.xyz * f12.x) + ((cross(VARYING5.xyz, VARYING6.xyz) * VARYING6.w) * f12.y)) + (VARYING5.xyz * f11));
    vec3 f15 = -CB0[11].xyz;
    float f16 = dot(f14, f15);
    vec3 f17 = f8.xyz;
    vec3 f18 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f19 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING3.yzx - (VARYING3.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture(LightGridSkylightTexture, f20), vec4(1.0), f21);
    float f24 = f23.x;
    float f25 = f23.y;
    vec3 f26 = f18 - CB0[41].xyz;
    vec3 f27 = f18 - CB0[42].xyz;
    vec3 f28 = f18 - CB0[43].xyz;
    vec4 f29 = vec4(f18, 1.0) * mat4(CB8[((dot(f26, f26) < CB0[41].w) ? 0 : ((dot(f27, f27) < CB0[42].w) ? 1 : ((dot(f28, f28) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f26, f26) < CB0[41].w) ? 0 : ((dot(f27, f27) < CB0[42].w) ? 1 : ((dot(f28, f28) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f26, f26) < CB0[41].w) ? 0 : ((dot(f27, f27) < CB0[42].w) ? 1 : ((dot(f28, f28) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f26, f26) < CB0[41].w) ? 0 : ((dot(f27, f27) < CB0[42].w) ? 1 : ((dot(f28, f28) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f30 = textureLod(ShadowAtlasTexture, f29.xy, 0.0);
    vec2 f31 = vec2(0.0);
    f31.x = CB0[45].z;
    vec2 f32 = f31;
    f32.y = CB0[45].w;
    float f33 = (2.0 * f29.z) - 1.0;
    float f34 = exp(CB0[45].z * f33);
    float f35 = -exp((-CB0[45].w) * f33);
    vec2 f36 = (f32 * CB0[46].y) * vec2(f34, f35);
    vec2 f37 = f36 * f36;
    float f38 = f30.x;
    float f39 = max(f30.y - (f38 * f38), f37.x);
    float f40 = f34 - f38;
    float f41 = f30.z;
    float f42 = max(f30.w - (f41 * f41), f37.y);
    float f43 = f35 - f41;
    vec3 f44 = (f17 * f17).xyz;
    float f45 = CB0[26].w * f2;
    float f46 = max(f13.y, 0.04500000178813934326171875);
    vec3 f47 = reflect(-f1, f14);
    float f48 = f46 * 5.0;
    vec3 f49 = vec4(f47, f48).xyz;
    vec4 f50 = texture(PrecomputedBRDFTexture, vec2(f46, max(9.9999997473787516355514526367188e-05, dot(f14, f1))));
    float f51 = f13.x * f45;
    vec3 f52 = mix(vec3(0.039999999105930328369140625), f44, vec3(f51));
    vec3 f53 = normalize(f15 + f1);
    float f54 = clamp(f16 * ((f16 > 0.0) ? mix(f25, mix(min((f34 <= f38) ? 1.0 : clamp(((f39 / (f39 + (f40 * f40))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f35 <= f41) ? 1.0 : clamp(((f42 / (f42 + (f43 * f43))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f25, clamp((length(f18 - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0), 0.0, 1.0);
    float f55 = f46 * f46;
    float f56 = max(0.001000000047497451305389404296875, dot(f14, f53));
    float f57 = dot(f15, f53);
    float f58 = 1.0 - f57;
    float f59 = f58 * f58;
    float f60 = (f59 * f59) * f58;
    vec3 f61 = vec3(f60) + (f52 * (1.0 - f60));
    float f62 = f55 * f55;
    float f63 = (((f56 * f62) - f56) * f56) + 1.0;
    float f64 = 1.0 - f51;
    float f65 = f45 * f64;
    vec3 f66 = vec3(f64);
    float f67 = f50.x;
    float f68 = f50.y;
    vec3 f69 = ((f52 * f67) + vec3(f68)) / vec3(f67 + f68);
    vec3 f70 = f66 - (f69 * f65);
    vec3 f71 = f14 * f14;
    bvec3 f72 = lessThan(f14, vec3(0.0));
    vec3 f73 = vec3(f72.x ? f71.x : vec3(0.0).x, f72.y ? f71.y : vec3(0.0).y, f72.z ? f71.z : vec3(0.0).z);
    vec3 f74 = f71 - f73;
    float f75 = f74.x;
    float f76 = f74.y;
    float f77 = f74.z;
    float f78 = f73.x;
    float f79 = f73.y;
    float f80 = f73.z;
    vec3 f81 = ((((((CB0[35].xyz * f75) + (CB0[37].xyz * f76)) + (CB0[39].xyz * f77)) + (CB0[36].xyz * f78)) + (CB0[38].xyz * f79)) + (CB0[40].xyz * f80)) + (((((((CB0[29].xyz * f75) + (CB0[31].xyz * f76)) + (CB0[33].xyz * f77)) + (CB0[30].xyz * f78)) + (CB0[32].xyz * f79)) + (CB0[34].xyz * f80)) * f24);
    vec3 f82 = (mix(textureLod(PrefilteredEnvIndoorTexture, f49, f48).xyz, textureLod(PrefilteredEnvTexture, f49, f48).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f47.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f24)) * f69) * f45;
    vec3 f83 = (((((((f66 - (f61 * f65)) * CB0[10].xyz) * f54) + ((f70 * f81) * CB0[25].w)) + (CB0[27].xyz + (CB0[28].xyz * f24))) * f44) + (((f61 * (((f62 + (f62 * f62)) / (((f63 * f63) * ((f57 * 3.0) + 0.5)) * ((f56 * 0.75) + 0.25))) * f54)) * CB0[10].xyz) + f82)) + ((f22.xyz * (f22.w * 120.0)).xyz * mix(f44, f82 * (1.0 / (max(max(f81.x, f81.y), f81.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f70) * (f45 * (1.0 - f24))));
    float f84 = f8.w;
    vec4 f85 = vec4(f83.x, f83.y, f83.z, vec4(0.0).w);
    f85.w = f84;
    float f86 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f87 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f86) * 5.0).xyz;
    bvec3 f88 = bvec3(CB0[13].w != 0.0);
    vec3 f89 = sqrt(clamp(mix(vec3(f88.x ? CB0[14].xyz.x : f87.x, f88.y ? CB0[14].xyz.y : f87.y, f88.z ? CB0[14].xyz.z : f87.z), f85.xyz, vec3(f86)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f90 = vec4(f89.x, f89.y, f89.z, f85.w);
    f90.w = f84;
    _entryPointOutput = f90;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
