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
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

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
    vec2 f4 = VARYING0 * CB2[0].x;
    vec4 f5 = texture(DiffuseMapTexture, f4);
    vec2 f6 = texture(NormalMapTexture, f4).wy * 2.0;
    vec2 f7 = f6 - vec2(1.0);
    float f8 = sqrt(clamp(1.0 + dot(vec2(1.0) - f6, f7), 0.0, 1.0));
    vec2 f9 = (vec3(f7, f8).xy + (vec3((texture(NormalDetailMapTexture, f4 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f3;
    float f10 = f9.x;
    vec4 f11 = texture(SpecularMapTexture, f4);
    vec3 f12 = normalize(((VARYING6.xyz * f10) + (cross(VARYING5.xyz, VARYING6.xyz) * f9.y)) + (VARYING5.xyz * f8));
    vec3 f13 = -CB0[11].xyz;
    float f14 = dot(f12, f13);
    vec3 f15 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f5.w + CB2[2].w, 0.0, 1.0))) * f5.xyz) * (1.0 + (f10 * CB2[0].z))) * (texture(StudsMapTexture, f2).x * 2.0), VARYING2.w).xyz;
    vec3 f16 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING3.yzx - (VARYING3.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture(LightGridSkylightTexture, f18), vec4(1.0), f19);
    vec3 f22 = (f20.xyz * (f20.w * 120.0)).xyz;
    float f23 = f21.x;
    float f24 = f21.y;
    vec3 f25 = f16 - CB0[41].xyz;
    vec3 f26 = f16 - CB0[42].xyz;
    vec3 f27 = f16 - CB0[43].xyz;
    vec4 f28 = vec4(f16, 1.0) * mat4(CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f29 = textureLod(ShadowAtlasTexture, f28.xy, 0.0);
    vec2 f30 = vec2(0.0);
    f30.x = CB0[45].z;
    vec2 f31 = f30;
    f31.y = CB0[45].w;
    float f32 = (2.0 * f28.z) - 1.0;
    float f33 = exp(CB0[45].z * f32);
    float f34 = -exp((-CB0[45].w) * f32);
    vec2 f35 = (f31 * CB0[46].y) * vec2(f33, f34);
    vec2 f36 = f35 * f35;
    float f37 = f29.x;
    float f38 = max(f29.y - (f37 * f37), f36.x);
    float f39 = f33 - f37;
    float f40 = f29.z;
    float f41 = max(f29.w - (f40 * f40), f36.y);
    float f42 = f34 - f40;
    vec3 f43 = (f15 * f15).xyz;
    float f44 = CB0[26].w * f3;
    float f45 = max(f11.y, 0.04500000178813934326171875);
    vec3 f46 = reflect(-f1, f12);
    float f47 = f45 * 5.0;
    vec3 f48 = vec4(f46, f47).xyz;
    vec4 f49 = texture(PrecomputedBRDFTexture, vec2(f45, max(9.9999997473787516355514526367188e-05, dot(f12, f1))));
    float f50 = f11.x * f44;
    vec3 f51 = mix(vec3(0.039999999105930328369140625), f43, vec3(f50));
    vec3 f52 = normalize(f13 + f1);
    float f53 = clamp(f14 * ((f14 > 0.0) ? mix(f24, mix(min((f33 <= f37) ? 1.0 : clamp(((f38 / (f38 + (f39 * f39))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f34 <= f40) ? 1.0 : clamp(((f41 / (f41 + (f42 * f42))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f24, clamp((length(f16 - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0), 0.0, 1.0);
    float f54 = f45 * f45;
    float f55 = max(0.001000000047497451305389404296875, dot(f12, f52));
    float f56 = dot(f13, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (f51 * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    float f63 = 1.0 - f50;
    float f64 = f44 * f63;
    vec3 f65 = vec3(f63);
    float f66 = f49.x;
    float f67 = f49.y;
    vec3 f68 = ((f51 * f66) + vec3(f67)) / vec3(f66 + f67);
    vec3 f69 = f65 - (f68 * f64);
    vec3 f70 = f12 * f12;
    bvec3 f71 = lessThan(f12, vec3(0.0));
    vec3 f72 = vec3(f71.x ? f70.x : vec3(0.0).x, f71.y ? f70.y : vec3(0.0).y, f71.z ? f70.z : vec3(0.0).z);
    vec3 f73 = f70 - f72;
    float f74 = f73.x;
    float f75 = f73.y;
    float f76 = f73.z;
    float f77 = f72.x;
    float f78 = f72.y;
    float f79 = f72.z;
    vec3 f80 = (mix(textureLod(PrefilteredEnvIndoorTexture, f48, f47).xyz * f22, textureLod(PrefilteredEnvTexture, f48, f47).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f46.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f23)) * f68) * f44;
    vec3 f81 = (((((((f65 - (f60 * f64)) * CB0[10].xyz) * f53) + (f69 * (((((((CB0[35].xyz * f74) + (CB0[37].xyz * f75)) + (CB0[39].xyz * f76)) + (CB0[36].xyz * f77)) + (CB0[38].xyz * f78)) + (CB0[40].xyz * f79)) + (((((((CB0[29].xyz * f74) + (CB0[31].xyz * f75)) + (CB0[33].xyz * f76)) + (CB0[30].xyz * f77)) + (CB0[32].xyz * f78)) + (CB0[34].xyz * f79)) * f23)))) + (CB0[27].xyz + (CB0[28].xyz * f23))) * f43) + (((f60 * (((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25))) * f53)) * CB0[10].xyz) + f80)) + (f22 * mix(f43, f80 * (1.0 / (max(max(f80.x, f80.y), f80.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f69) * (f44 * (1.0 - f23))));
    vec4 f82 = vec4(f81.x, f81.y, f81.z, vec4(0.0).w);
    f82.w = VARYING2.w;
    float f83 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f84 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f83) * 5.0).xyz;
    bvec3 f85 = bvec3(CB0[13].w != 0.0);
    vec3 f86 = sqrt(clamp(mix(vec3(f85.x ? CB0[14].xyz.x : f84.x, f85.y ? CB0[14].xyz.y : f84.y, f85.z ? CB0[14].xyz.z : f84.z), f82.xyz, vec3(f83)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f87 = vec4(f86.x, f86.y, f86.z, f82.w);
    f87.w = VARYING2.w;
    _entryPointOutput = f87;
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
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
