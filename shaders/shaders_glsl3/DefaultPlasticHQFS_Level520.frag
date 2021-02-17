#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec2 f2 = VARYING1;
    f2.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f3 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f4 = texture(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = ((vec3(f5, f6).xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * f3).xy * CB2[3].w;
    float f8 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f9 = VARYING6.xyz * f8;
    vec3 f10 = VARYING5.xyz * f8;
    vec3 f11 = normalize(((f9 * f7.x) + (cross(f10, f9) * f7.y)) + (f10 * f6));
    vec3 f12 = -CB0[11].xyz;
    float f13 = dot(f11, f12);
    vec3 f14 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w).xyz;
    vec3 f15 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture(LightGridSkylightTexture, f17), vec4(1.0), f18);
    float f21 = f20.x;
    float f22 = f20.y;
    vec3 f23 = f15 - CB0[41].xyz;
    vec3 f24 = f15 - CB0[42].xyz;
    vec3 f25 = f15 - CB0[43].xyz;
    vec4 f26 = vec4(f15, 1.0) * mat4(CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f27 = textureLod(ShadowAtlasTexture, f26.xy, 0.0);
    vec2 f28 = vec2(0.0);
    f28.x = CB0[46].z;
    vec2 f29 = f28;
    f29.y = CB0[46].w;
    float f30 = (2.0 * f26.z) - 1.0;
    float f31 = exp(CB0[46].z * f30);
    float f32 = -exp((-CB0[46].w) * f30);
    vec2 f33 = (f29 * CB0[47].y) * vec2(f31, f32);
    vec2 f34 = f33 * f33;
    float f35 = f27.x;
    float f36 = max(f27.y - (f35 * f35), f34.x);
    float f37 = f31 - f35;
    float f38 = f27.z;
    float f39 = max(f27.w - (f38 * f38), f34.y);
    float f40 = f32 - f38;
    float f41 = CB0[26].w * f3;
    float f42 = max(CB2[0].y, 0.04500000178813934326171875);
    vec3 f43 = reflect(-f1, f11);
    float f44 = (VARYING7.w != 0.0) ? 0.0 : (f42 * 5.0);
    vec3 f45 = vec4(f43, f44).xyz;
    vec3 f46 = textureLod(PrefilteredEnvTexture, f45, f44).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f43.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f47 = texture(PrecomputedBRDFTexture, vec2(f42, max(9.9999997473787516355514526367188e-05, dot(f11, f1))));
    vec3 f48 = mix((f14 * f14).xyz, f46, vec3(VARYING7.w));
    vec3 f49 = normalize(f12 + f1);
    float f50 = clamp(f13 * ((f13 > 0.0) ? mix(f22, mix(min((f31 <= f35) ? 1.0 : clamp(((f36 / (f36 + (f37 * f37))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f32 <= f38) ? 1.0 : clamp(((f39 / (f39 + (f40 * f40))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f22, clamp((length(f15 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)), CB0[47].x) : 0.0), 0.0, 1.0);
    float f51 = f42 * f42;
    float f52 = max(0.001000000047497451305389404296875, dot(f11, f49));
    float f53 = dot(f12, f49);
    float f54 = 1.0 - f53;
    float f55 = f54 * f54;
    float f56 = (f55 * f55) * f54;
    vec3 f57 = vec3(f56) + (vec3(0.039999999105930328369140625) * (1.0 - f56));
    float f58 = f51 * f51;
    float f59 = (((f52 * f58) - f52) * f52) + 1.0;
    float f60 = f47.x;
    float f61 = f47.y;
    vec3 f62 = ((vec3(0.039999999105930328369140625) * f60) + vec3(f61)) / vec3(f60 + f61);
    vec3 f63 = f62 * f41;
    vec3 f64 = f11 * f11;
    bvec3 f65 = lessThan(f11, vec3(0.0));
    vec3 f66 = vec3(f65.x ? f64.x : vec3(0.0).x, f65.y ? f64.y : vec3(0.0).y, f65.z ? f64.z : vec3(0.0).z);
    vec3 f67 = f64 - f66;
    float f68 = f67.x;
    float f69 = f67.y;
    float f70 = f67.z;
    float f71 = f66.x;
    float f72 = f66.y;
    float f73 = f66.z;
    vec3 f74 = ((((((CB0[35].xyz * f68) + (CB0[37].xyz * f69)) + (CB0[39].xyz * f70)) + (CB0[36].xyz * f71)) + (CB0[38].xyz * f72)) + (CB0[40].xyz * f73)) + (((((((CB0[29].xyz * f68) + (CB0[31].xyz * f69)) + (CB0[33].xyz * f70)) + (CB0[30].xyz * f71)) + (CB0[32].xyz * f72)) + (CB0[34].xyz * f73)) * f21);
    vec3 f75 = (mix(textureLod(PrefilteredEnvIndoorTexture, f45, f44).xyz, f46, vec3(f21)) * f62) * f41;
    vec3 f76 = (((((((vec3(1.0) - (f57 * f41)) * CB0[10].xyz) * f50) + (((vec3(1.0) - f63) * f74) * CB0[25].w)) + ((CB0[27].xyz + (CB0[28].xyz * f21)) * 1.0)) * f48) + (((f57 * (((f58 + (f58 * f58)) / (((f59 * f59) * ((f53 * 3.0) + 0.5)) * ((f52 * 0.75) + 0.25))) * f50)) * CB0[10].xyz) + (f75 * f21))) + (((f19.xyz * (f19.w * 120.0)).xyz * mix(f48, f75 * (1.0 / (max(max(f74.x, f74.y), f74.z) + 0.00999999977648258209228515625)), f63 * (f41 * (1.0 - f21)))) * 1.0);
    vec4 f77 = vec4(f76.x, f76.y, f76.z, vec4(0.0).w);
    f77.w = VARYING2.w;
    float f78 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f79 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f78) * 5.0).xyz;
    bvec3 f80 = bvec3(CB0[13].w != 0.0);
    vec3 f81 = sqrt(clamp(mix(vec3(f80.x ? CB0[14].xyz.x : f79.x, f80.y ? CB0[14].xyz.y : f79.y, f80.z ? CB0[14].xyz.z : f79.z), f77.xyz, vec3(f78)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f82 = vec4(f81.x, f81.y, f81.z, f77.w);
    f82.w = VARYING2.w;
    _entryPointOutput = f82;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
