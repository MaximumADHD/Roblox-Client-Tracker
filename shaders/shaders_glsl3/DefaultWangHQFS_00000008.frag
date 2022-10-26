#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
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
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec2 f3 = VARYING0 * CB2[0].x;
    vec2 f4 = f3 * 4.0;
    vec4 f5 = texture(WangTileMapTexture, f4 * vec2(0.0078125));
    vec2 f6 = f4 * 0.25;
    vec2 f7 = dFdx(f6);
    vec2 f8 = dFdy(f6);
    vec4 f9 = vec4(f7, f8);
    vec2 f10 = (f5.xy * 0.99609375) + (fract(f4) * 0.25);
    vec2 f11 = f9.xy;
    vec2 f12 = f9.zw;
    vec4 f13 = textureGrad(DiffuseMapTexture, f10, f11, f12);
    vec2 f14 = textureGrad(NormalMapTexture, f10, f11, f12).wy * 2.0;
    vec2 f15 = f14 - vec2(1.0);
    float f16 = sqrt(clamp(1.0 + dot(vec2(1.0) - f14, f15), 0.0, 1.0));
    vec3 f17 = vec3(f15, f16);
    vec2 f18 = f17.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f19 = f17;
    f19.x = f18.x;
    vec3 f20 = f19;
    f20.y = f18.y;
    vec2 f21 = f20.xy * f2;
    float f22 = f21.x;
    vec4 f23 = textureGrad(SpecularMapTexture, f10, f11, f12);
    vec4 f24 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f13.w, CB2[3].w))) * f13.xyz) * (1.0 + (f22 * 0.20000000298023223876953125)), VARYING2.w);
    float f25 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f26 = VARYING6.xyz * f25;
    vec3 f27 = VARYING5.xyz * f25;
    vec3 f28 = normalize(((f26 * f22) + (cross(f27, f26) * f21.y)) + (f27 * f16));
    vec3 f29 = -CB0[16].xyz;
    float f30 = dot(f28, f29);
    vec3 f31 = f24.xyz;
    vec3 f32 = f31 * f31;
    vec4 f33 = f24;
    f33.x = f32.x;
    vec4 f34 = f33;
    f34.y = f32.y;
    vec4 f35 = f34;
    f35.z = f32.z;
    float f36 = CB0[31].w * f2;
    float f37 = 0.08900000154972076416015625 + (f23.y * 0.9110000133514404296875);
    vec3 f38 = -f1;
    vec3 f39 = reflect(f38, f28);
    float f40 = f23.x * f36;
    vec3 f41 = mix(vec3(0.039999999105930328369140625), f35.xyz, vec3(f40));
    vec3 f42 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f43 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f44 = VARYING3.yzx - (VARYING3.yzx * f43);
    vec4 f45 = texture(LightMapTexture, f44);
    vec4 f46 = texture(LightGridSkylightTexture, f44);
    vec4 f47 = vec4(clamp(f43, 0.0, 1.0));
    vec4 f48 = mix(f45, vec4(0.0), f47);
    vec4 f49 = mix(f46, vec4(1.0), f47);
    float f50 = f49.x;
    float f51 = f49.y;
    vec3 f52 = f42 - CB0[46].xyz;
    vec3 f53 = f42 - CB0[47].xyz;
    vec3 f54 = f42 - CB0[48].xyz;
    vec4 f55 = vec4(f42, 1.0) * mat4(CB8[((dot(f52, f52) < CB0[46].w) ? 0 : ((dot(f53, f53) < CB0[47].w) ? 1 : ((dot(f54, f54) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f52, f52) < CB0[46].w) ? 0 : ((dot(f53, f53) < CB0[47].w) ? 1 : ((dot(f54, f54) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f52, f52) < CB0[46].w) ? 0 : ((dot(f53, f53) < CB0[47].w) ? 1 : ((dot(f54, f54) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f52, f52) < CB0[46].w) ? 0 : ((dot(f53, f53) < CB0[47].w) ? 1 : ((dot(f54, f54) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f56 = textureLod(ShadowAtlasTexture, f55.xy, 0.0);
    vec2 f57 = vec2(0.0);
    f57.x = CB0[51].z;
    vec2 f58 = f57;
    f58.y = CB0[51].w;
    float f59 = (2.0 * f55.z) - 1.0;
    float f60 = exp(CB0[51].z * f59);
    float f61 = -exp((-CB0[51].w) * f59);
    vec2 f62 = (f58 * CB0[52].y) * vec2(f60, f61);
    vec2 f63 = f62 * f62;
    float f64 = f56.x;
    float f65 = max(f56.y - (f64 * f64), f63.x);
    float f66 = f60 - f64;
    float f67 = f56.z;
    float f68 = max(f56.w - (f67 * f67), f63.y);
    float f69 = f61 - f67;
    vec3 f70 = normalize(f1 - CB0[16].xyz);
    float f71 = clamp((f30 * CB0[14].w) * (((f30 * CB0[52].x) > 0.0) ? mix(min((f60 <= f64) ? 1.0 : clamp(((f65 / (f65 + (f66 * f66))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f61 <= f67) ? 1.0 : clamp(((f68 / (f68 + (f69 * f69))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f51, clamp((length(f42 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f51), 0.0, 1.0);
    float f72 = f37 * f37;
    float f73 = max(0.001000000047497451305389404296875, dot(f28, f70));
    float f74 = dot(f29, f70);
    float f75 = 1.0 - f74;
    float f76 = f75 * f75;
    float f77 = (f76 * f76) * f75;
    vec3 f78 = vec3(f77) + (f41 * (1.0 - f77));
    float f79 = f72 * f72;
    float f80 = (((f73 * f79) - f73) * f73) + 1.0;
    float f81 = 1.0 - f40;
    float f82 = f36 * f81;
    vec3 f83 = vec3(f81);
    float f84 = f37 * 5.0;
    vec3 f85 = vec4(f39, f84).xyz;
    vec3 f86 = textureLod(PrefilteredEnvIndoorTexture, f85, f84).xyz;
    vec3 f87;
    if (CB0[32].w == 0.0)
    {
        f87 = f86;
    }
    else
    {
        f87 = mix(f86, textureLod(PrefilteredEnvBlendTargetTexture, f85, f84).xyz, vec3(CB0[32].w));
    }
    vec4 f88 = texture(PrecomputedBRDFTexture, vec2(f37, max(9.9999997473787516355514526367188e-05, dot(f28, f1))));
    float f89 = f88.x;
    float f90 = f88.y;
    vec3 f91 = ((f41 * f89) + vec3(f90)) / vec3(f89 + f90);
    vec3 f92 = f28 * f28;
    bvec3 f93 = lessThan(f28, vec3(0.0));
    vec3 f94 = vec3(f93.x ? f92.x : vec3(0.0).x, f93.y ? f92.y : vec3(0.0).y, f93.z ? f92.z : vec3(0.0).z);
    vec3 f95 = f92 - f94;
    float f96 = f95.x;
    float f97 = f95.y;
    float f98 = f95.z;
    float f99 = f94.x;
    float f100 = f94.y;
    float f101 = f94.z;
    vec3 f102 = ((((((f48.xyz * (f48.w * 120.0)) * 1.0) + (((f83 - (f78 * f82)) * CB0[15].xyz) * f71)) + ((f83 - (f91 * f82)) * (((((((CB0[40].xyz * f96) + (CB0[42].xyz * f97)) + (CB0[44].xyz * f98)) + (CB0[41].xyz * f99)) + (CB0[43].xyz * f100)) + (CB0[45].xyz * f101)) + (((((((CB0[34].xyz * f96) + (CB0[36].xyz * f97)) + (CB0[38].xyz * f98)) + (CB0[35].xyz * f99)) + (CB0[37].xyz * f100)) + (CB0[39].xyz * f101)) * f50)))) + ((CB0[32].xyz + (CB0[33].xyz * (f50 * (2.0 - CB0[14].w)))) * 1.0)) * f35.xyz) + ((((f78 * (((f79 + (f79 * f79)) / max(((f80 * f80) * ((f74 * 3.0) + 0.5)) * ((f73 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f71)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f87, textureLod(PrefilteredEnvTexture, f85, f84).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f39.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f50)) * f91) * f36));
    vec4 f103 = vec4(0.0);
    f103.x = f102.x;
    vec4 f104 = f103;
    f104.y = f102.y;
    vec4 f105 = f104;
    f105.z = f102.z;
    vec4 f106 = f105;
    f106.w = VARYING2.w;
    float f107 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f108 = textureLod(PrefilteredEnvTexture, vec4(f38, 0.0).xyz, max(CB0[18].y, f107) * 5.0).xyz;
    bvec3 f109 = bvec3(!(CB0[18].w == 0.0));
    vec3 f110 = mix(vec3(f109.x ? CB0[19].xyz.x : f108.x, f109.y ? CB0[19].xyz.y : f108.y, f109.z ? CB0[19].xyz.z : f108.z), f106.xyz, vec3(f107));
    vec4 f111 = f106;
    f111.x = f110.x;
    vec4 f112 = f111;
    f112.y = f110.y;
    vec4 f113 = f112;
    f113.z = f110.z;
    vec3 f114 = sqrt(clamp(f113.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f115 = f113;
    f115.x = f114.x;
    vec4 f116 = f115;
    f116.y = f114.y;
    vec4 f117 = f116;
    f117.z = f114.z;
    vec4 f118 = f117;
    f118.w = VARYING2.w;
    _entryPointOutput = f118;
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
