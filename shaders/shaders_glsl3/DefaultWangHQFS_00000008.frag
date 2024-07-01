#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D WangTileMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
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
    vec2 f0 = VARYING0 * CB2[0].x;
    vec2 f1 = f0 * 4.0;
    vec4 f2 = texture(WangTileMapTexture, f1 * vec2(0.0078125));
    vec2 f3 = f1 * 0.25;
    vec2 f4 = dFdx(f3);
    vec2 f5 = dFdy(f3);
    vec4 f6 = vec4(f4, f5);
    vec2 f7 = (f2.xy * 0.99609375) + (fract(f1) * 0.25);
    vec2 f8 = f6.xy;
    vec2 f9 = f6.zw;
    vec4 f10 = textureGrad(DiffuseMapTexture, f7, f8, f9);
    vec2 f11 = textureGrad(NormalMapTexture, f7, f8, f9).wy * 2.0;
    vec2 f12 = f11 - vec2(1.0);
    float f13 = sqrt(clamp(1.0 + dot(vec2(1.0) - f11, f12), 0.0, 1.0));
    vec3 f14 = vec3(f12, f13);
    vec2 f15 = f14.xy + (vec3((texture(NormalDetailMapTexture, f0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f16 = f14;
    f16.x = f15.x;
    vec3 f17 = f16;
    f17.y = f15.y;
    vec2 f18 = f17.xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    float f19 = f18.x;
    vec4 f20 = textureGrad(SpecularMapTexture, f7, f8, f9);
    vec4 f21 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f10.w, CB2[3].w))) * f10.xyz) * (1.0 + (f19 * 0.20000000298023223876953125)), VARYING2.w);
    float f22 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f23 = VARYING6.xyz * f22;
    vec3 f24 = VARYING5.xyz * f22;
    vec3 f25 = normalize(((f23 * f19) + (cross(f24, f23) * f18.y)) + (f24 * f13));
    vec3 f26 = -CB0[16].xyz;
    float f27 = dot(f25, f26);
    vec3 f28 = f21.xyz;
    vec3 f29 = f28 * f28;
    vec4 f30 = f21;
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    float f33 = length(VARYING4.xyz);
    vec3 f34 = VARYING4.xyz / vec3(f33);
    float f35 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f36 = 0.08900000154972076416015625 + (f20.y * 0.9110000133514404296875);
    vec3 f37 = -f34;
    vec3 f38 = reflect(f37, f25);
    float f39 = f20.x * f35;
    vec3 f40 = mix(vec3(0.039999999105930328369140625), f32.xyz, vec3(f39));
    vec3 f41 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f42 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f43 = VARYING3.yzx - (VARYING3.yzx * f42);
    vec4 f44 = texture(LightMapTexture, f43);
    vec4 f45 = texture(LightGridSkylightTexture, f43);
    vec4 f46 = vec4(clamp(f42, 0.0, 1.0));
    vec4 f47 = mix(f44, vec4(0.0), f46);
    vec4 f48 = mix(f45, vec4(1.0), f46);
    vec3 f49 = f47.xyz * (f47.w * 120.0);
    float f50 = f48.x;
    float f51 = f48.y;
    vec3 f52 = f41 - CB0[46].xyz;
    vec3 f53 = f41 - CB0[47].xyz;
    vec3 f54 = f41 - CB0[48].xyz;
    vec4 f55 = vec4(f41, 1.0) * mat4(CB8[((dot(f52, f52) < CB0[46].w) ? 0 : ((dot(f53, f53) < CB0[47].w) ? 1 : ((dot(f54, f54) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f52, f52) < CB0[46].w) ? 0 : ((dot(f53, f53) < CB0[47].w) ? 1 : ((dot(f54, f54) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f52, f52) < CB0[46].w) ? 0 : ((dot(f53, f53) < CB0[47].w) ? 1 : ((dot(f54, f54) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f52, f52) < CB0[46].w) ? 0 : ((dot(f53, f53) < CB0[47].w) ? 1 : ((dot(f54, f54) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f56 = textureLod(ShadowAtlasTexture, f55.xy, 0.0);
    vec2 f57 = vec2(0.0);
    f57.x = CB0[52].z;
    vec2 f58 = f57;
    f58.y = CB0[52].w;
    float f59 = (2.0 * f55.z) - 1.0;
    float f60 = exp(CB0[52].z * f59);
    float f61 = -exp((-CB0[52].w) * f59);
    vec2 f62 = (f58 * CB0[53].y) * vec2(f60, f61);
    vec2 f63 = f62 * f62;
    float f64 = f56.x;
    float f65 = max(f56.y - (f64 * f64), f63.x);
    float f66 = f60 - f64;
    float f67 = f56.z;
    float f68 = max(f56.w - (f67 * f67), f63.y);
    float f69 = f61 - f67;
    float f70 = (f27 * CB0[14].w) * (((f27 * CB0[53].x) > 0.0) ? mix(min((f60 <= f64) ? 1.0 : clamp(((f65 / (f65 + (f66 * f66))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f61 <= f67) ? 1.0 : clamp(((f68 / (f68 + (f69 * f69))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f51, clamp((length(f41 - CB0[11].xyz) * CB0[52].y) - (CB0[52].x * CB0[52].y), 0.0, 1.0)) : f51);
    vec3 f71;
    vec3 f72;
    if (f70 > 0.0)
    {
        vec3 f73 = normalize(f34 + f26);
        float f74 = clamp(f70, 0.0, 1.0);
        float f75 = f36 * f36;
        float f76 = max(0.001000000047497451305389404296875, dot(f25, f73));
        float f77 = dot(f26, f73);
        float f78 = 1.0 - f77;
        float f79 = f78 * f78;
        float f80 = (f79 * f79) * f78;
        vec3 f81 = vec3(f80) + (f40 * (1.0 - f80));
        float f82 = f75 * f75;
        float f83 = (((f76 * f82) - f76) * f76) + 1.0;
        float f84 = 1.0 - f39;
        f72 = f49 + (((vec3(f84) - (f81 * (f35 * f84))) * CB0[15].xyz) * f74);
        f71 = ((f81 * (((f82 + (f82 * f82)) / (((f83 * f83) * ((f77 * 3.0) + 0.5)) * ((f76 * 0.75) + 0.25))) * f74)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f72 = f49;
        f71 = vec3(0.0);
    }
    float f85 = f36 * 5.0;
    vec3 f86 = vec4(f38, f85).xyz;
    vec3 f87 = textureLod(PrefilteredEnvIndoorTexture, f86, f85).xyz;
    vec3 f88;
    if (CB0[32].w == 0.0)
    {
        f88 = f87;
    }
    else
    {
        f88 = mix(f87, textureLod(PrefilteredEnvBlendTargetTexture, f86, f85).xyz, vec3(CB0[32].w));
    }
    vec4 f89 = texture(PrecomputedBRDFTexture, vec2(f36, max(9.9999997473787516355514526367188e-05, dot(f25, f34))));
    float f90 = f89.x;
    float f91 = f89.y;
    vec3 f92 = ((f40 * f90) + vec3(f91)) / vec3(f90 + f91);
    float f93 = 1.0 - f39;
    vec3 f94 = f25 * f25;
    bvec3 f95 = lessThan(f25, vec3(0.0));
    vec3 f96 = vec3(f95.x ? f94.x : vec3(0.0).x, f95.y ? f94.y : vec3(0.0).y, f95.z ? f94.z : vec3(0.0).z);
    vec3 f97 = f94 - f96;
    float f98 = f97.x;
    float f99 = f97.y;
    float f100 = f97.z;
    float f101 = f96.x;
    float f102 = f96.y;
    float f103 = f96.z;
    vec3 f104 = (((f72 + (((vec3(f93) - (f92 * (f35 * f93))) * (((((((CB0[40].xyz * f98) + (CB0[42].xyz * f99)) + (CB0[44].xyz * f100)) + (CB0[41].xyz * f101)) + (CB0[43].xyz * f102)) + (CB0[45].xyz * f103)) + (((((((CB0[34].xyz * f98) + (CB0[36].xyz * f99)) + (CB0[38].xyz * f100)) + (CB0[35].xyz * f101)) + (CB0[37].xyz * f102)) + (CB0[39].xyz * f103)) * f50))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f50 * (2.0 - CB0[14].w)))) * 1.0)) * f32.xyz) + (f71 + ((mix(f88, textureLod(PrefilteredEnvTexture, f86, f85).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f38.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f50)) * f92) * f35));
    vec4 f105 = vec4(0.0);
    f105.x = f104.x;
    vec4 f106 = f105;
    f106.y = f104.y;
    vec4 f107 = f106;
    f107.z = f104.z;
    vec4 f108 = f107;
    f108.w = VARYING2.w;
    float f109 = clamp(exp2((CB0[18].z * f33) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f110 = textureLod(PrefilteredEnvTexture, vec4(f37, 0.0).xyz, max(CB0[18].y, f109) * 5.0).xyz;
    bvec3 f111 = bvec3(!(CB0[18].w == 0.0));
    vec3 f112 = mix(vec3(f111.x ? CB0[19].xyz.x : f110.x, f111.y ? CB0[19].xyz.y : f110.y, f111.z ? CB0[19].xyz.z : f110.z), f108.xyz, vec3(f109));
    vec4 f113 = f108;
    f113.x = f112.x;
    vec4 f114 = f113;
    f114.y = f112.y;
    vec4 f115 = f114;
    f115.z = f112.z;
    vec3 f116 = sqrt(clamp(f115.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f117 = f115;
    f117.x = f116.x;
    vec4 f118 = f117;
    f118.y = f116.y;
    vec4 f119 = f118;
    f119.z = f116.z;
    vec4 f120 = f119;
    f120.w = VARYING2.w;
    _entryPointOutput = f120;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
