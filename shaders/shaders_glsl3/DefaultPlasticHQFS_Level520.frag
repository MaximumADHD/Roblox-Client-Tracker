#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
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
    vec3 f8 = normalize(((VARYING6.xyz * f7.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * f6));
    vec3 f9 = -CB0[11].xyz;
    float f10 = dot(f8, f9);
    vec3 f11 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w).xyz;
    vec3 f12 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f13 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING3.yzx - (VARYING3.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture(LightGridSkylightTexture, f14), vec4(1.0), f15);
    float f18 = f17.x;
    float f19 = f17.y;
    vec3 f20 = f12 - CB0[41].xyz;
    vec3 f21 = f12 - CB0[42].xyz;
    vec3 f22 = f12 - CB0[43].xyz;
    vec4 f23 = vec4(f12, 1.0) * mat4(CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f24 = textureLod(ShadowAtlasTexture, f23.xy, 0.0);
    vec2 f25 = vec2(0.0);
    f25.x = CB0[45].z;
    vec2 f26 = f25;
    f26.y = CB0[45].w;
    float f27 = (2.0 * f23.z) - 1.0;
    float f28 = exp(CB0[45].z * f27);
    float f29 = -exp((-CB0[45].w) * f27);
    vec2 f30 = (f26 * CB0[46].y) * vec2(f28, f29);
    vec2 f31 = f30 * f30;
    float f32 = f24.x;
    float f33 = max(f24.y - (f32 * f32), f31.x);
    float f34 = f28 - f32;
    float f35 = f24.z;
    float f36 = max(f24.w - (f35 * f35), f31.y);
    float f37 = f29 - f35;
    float f38 = CB0[26].w * f3;
    float f39 = max(CB2[0].y, 0.04500000178813934326171875);
    vec3 f40 = reflect(-f1, f8);
    float f41 = (VARYING7.w != 0.0) ? 0.0 : (f39 * 5.0);
    vec3 f42 = vec4(f40, f41).xyz;
    vec3 f43 = textureLod(PrefilteredEnvTexture, f42, f41).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f40.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f44 = texture(PrecomputedBRDFTexture, vec2(f39, max(9.9999997473787516355514526367188e-05, dot(f8, f1))));
    vec3 f45 = mix((f11 * f11).xyz, f43, vec3(VARYING7.w));
    vec3 f46 = normalize(f9 + f1);
    float f47 = clamp(f10 * ((f10 > 0.0) ? mix(f19, mix(min((f28 <= f32) ? 1.0 : clamp(((f33 / (f33 + (f34 * f34))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f29 <= f35) ? 1.0 : clamp(((f36 / (f36 + (f37 * f37))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f19, clamp((length(f12 - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0), 0.0, 1.0);
    float f48 = f39 * f39;
    float f49 = max(0.001000000047497451305389404296875, dot(f8, f46));
    float f50 = dot(f9, f46);
    float f51 = 1.0 - f50;
    float f52 = f51 * f51;
    float f53 = (f52 * f52) * f51;
    vec3 f54 = vec3(f53) + (vec3(0.039999999105930328369140625) * (1.0 - f53));
    float f55 = f48 * f48;
    float f56 = (((f49 * f55) - f49) * f49) + 1.0;
    float f57 = f44.x;
    float f58 = f44.y;
    vec3 f59 = ((vec3(0.039999999105930328369140625) * f57) + vec3(f58)) / vec3(f57 + f58);
    vec3 f60 = f59 * f38;
    vec3 f61 = f8 * f8;
    bvec3 f62 = lessThan(f8, vec3(0.0));
    vec3 f63 = vec3(f62.x ? f61.x : vec3(0.0).x, f62.y ? f61.y : vec3(0.0).y, f62.z ? f61.z : vec3(0.0).z);
    vec3 f64 = f61 - f63;
    float f65 = f64.x;
    float f66 = f64.y;
    float f67 = f64.z;
    float f68 = f63.x;
    float f69 = f63.y;
    float f70 = f63.z;
    vec3 f71 = ((((((CB0[35].xyz * f65) + (CB0[37].xyz * f66)) + (CB0[39].xyz * f67)) + (CB0[36].xyz * f68)) + (CB0[38].xyz * f69)) + (CB0[40].xyz * f70)) + (((((((CB0[29].xyz * f65) + (CB0[31].xyz * f66)) + (CB0[33].xyz * f67)) + (CB0[30].xyz * f68)) + (CB0[32].xyz * f69)) + (CB0[34].xyz * f70)) * f18);
    vec3 f72 = (mix(textureLod(PrefilteredEnvIndoorTexture, f42, f41).xyz, f43, vec3(f18)) * f59) * f38;
    vec3 f73 = (((((((vec3(1.0) - (f54 * f38)) * CB0[10].xyz) * f47) + (((vec3(1.0) - f60) * f71) * CB0[25].w)) + (CB0[27].xyz + (CB0[28].xyz * f18))) * f45) + (((f54 * (((f55 + (f55 * f55)) / (((f56 * f56) * ((f50 * 3.0) + 0.5)) * ((f49 * 0.75) + 0.25))) * f47)) * CB0[10].xyz) + f72)) + ((f16.xyz * (f16.w * 120.0)).xyz * mix(f45, f72 * (1.0 / (max(max(f71.x, f71.y), f71.z) + 0.00999999977648258209228515625)), f60 * (f38 * (1.0 - f18))));
    vec4 f74 = vec4(f73.x, f73.y, f73.z, vec4(0.0).w);
    f74.w = VARYING2.w;
    float f75 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f76 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f75) * 5.0).xyz;
    bvec3 f77 = bvec3(CB0[13].w != 0.0);
    vec3 f78 = sqrt(clamp(mix(vec3(f77.x ? CB0[14].xyz.x : f76.x, f77.y ? CB0[14].xyz.y : f76.y, f77.z ? CB0[14].xyz.z : f76.z), f74.xyz, vec3(f75)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f79 = vec4(f78.x, f78.y, f78.z, f74.w);
    f79.w = VARYING2.w;
    _entryPointOutput = f79;
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
