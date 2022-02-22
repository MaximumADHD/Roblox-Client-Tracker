#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <SAParams.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB3[1];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
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
    bvec4 f7 = bvec4(!(CB3[0].x == 0.0));
    vec4 f8 = vec4(f7.x ? f5.x : f6.x, f7.y ? f5.y : f6.y, f7.z ? f5.z : f6.z, f7.w ? f5.w : f6.w);
    vec4 f9 = texture(NormalMapTexture, VARYING0);
    vec2 f10 = f9.wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0));
    vec2 f13 = vec3(f11, f12).xy * f2;
    vec4 f14 = texture(SpecularMapTexture, VARYING0);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f13.x) + ((cross(f17, f16) * VARYING6.w) * f13.y)) + (f17 * f12));
    vec3 f19 = -CB0[11].xyz;
    float f20 = dot(f18, f19);
    vec3 f21 = f8.xyz;
    vec3 f22 = f21 * f21;
    vec4 f23 = f8;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    vec3 f26 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f27 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING3.yzx - (VARYING3.yzx * f27);
    vec4 f29 = texture(LightMapTexture, f28);
    vec4 f30 = texture(LightGridSkylightTexture, f28);
    vec4 f31 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f32 = mix(f29, vec4(0.0), f31);
    vec4 f33 = mix(f30, vec4(1.0), f31);
    float f34 = f33.x;
    float f35 = f33.y;
    vec3 f36 = f26 - CB0[41].xyz;
    vec3 f37 = f26 - CB0[42].xyz;
    vec3 f38 = f26 - CB0[43].xyz;
    vec4 f39 = vec4(f26, 1.0) * mat4(CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f40 = textureLod(ShadowAtlasTexture, f39.xy, 0.0);
    vec2 f41 = vec2(0.0);
    f41.x = CB0[46].z;
    vec2 f42 = f41;
    f42.y = CB0[46].w;
    float f43 = (2.0 * f39.z) - 1.0;
    float f44 = exp(CB0[46].z * f43);
    float f45 = -exp((-CB0[46].w) * f43);
    vec2 f46 = (f42 * CB0[47].y) * vec2(f44, f45);
    vec2 f47 = f46 * f46;
    float f48 = f40.x;
    float f49 = max(f40.y - (f48 * f48), f47.x);
    float f50 = f44 - f48;
    float f51 = f40.z;
    float f52 = max(f40.w - (f51 * f51), f47.y);
    float f53 = f45 - f51;
    float f54 = CB0[26].w * f2;
    float f55 = 0.08900000154972076416015625 + (f14.y * 0.9110000133514404296875);
    vec3 f56 = reflect(-f1, f18);
    float f57 = f55 * 5.0;
    vec3 f58 = vec4(f56, f57).xyz;
    vec3 f59 = textureLod(PrefilteredEnvIndoorTexture, f58, f57).xyz;
    vec3 f60;
    if (CB0[27].w == 0.0)
    {
        f60 = f59;
    }
    else
    {
        f60 = mix(f59, textureLod(PrefilteredEnvBlendTargetTexture, f58, f57).xyz, vec3(CB0[27].w));
    }
    vec4 f61 = texture(PrecomputedBRDFTexture, vec2(f55, max(9.9999997473787516355514526367188e-05, dot(f18, f1))));
    float f62 = f14.x * f54;
    vec3 f63 = mix(vec3(0.039999999105930328369140625), f25.xyz, vec3(f62));
    vec3 f64 = normalize(f19 + f1);
    float f65 = clamp((f20 * CB0[9].w) * (((f20 * CB0[47].x) > 0.0) ? mix(min((f44 <= f48) ? 1.0 : clamp(((f49 / (f49 + (f50 * f50))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f45 <= f51) ? 1.0 : clamp(((f52 / (f52 + (f53 * f53))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f35, clamp((length(f26 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f35), 0.0, 1.0);
    float f66 = f55 * f55;
    float f67 = max(0.001000000047497451305389404296875, dot(f18, f64));
    float f68 = dot(f19, f64);
    float f69 = 1.0 - f68;
    float f70 = f69 * f69;
    float f71 = (f70 * f70) * f69;
    vec3 f72 = vec3(f71) + (f63 * (1.0 - f71));
    float f73 = f66 * f66;
    float f74 = (((f67 * f73) - f67) * f67) + 1.0;
    float f75 = 1.0 - f62;
    float f76 = f54 * f75;
    vec3 f77 = vec3(f75);
    float f78 = f61.x;
    float f79 = f61.y;
    vec3 f80 = ((f63 * f78) + vec3(f79)) / vec3(f78 + f79);
    vec3 f81 = f18 * f18;
    bvec3 f82 = lessThan(f18, vec3(0.0));
    vec3 f83 = vec3(f82.x ? f81.x : vec3(0.0).x, f82.y ? f81.y : vec3(0.0).y, f82.z ? f81.z : vec3(0.0).z);
    vec3 f84 = f81 - f83;
    float f85 = f84.x;
    float f86 = f84.y;
    float f87 = f84.z;
    float f88 = f83.x;
    float f89 = f83.y;
    float f90 = f83.z;
    vec3 f91 = (((((((f77 - (f72 * f76)) * CB0[10].xyz) * f65) + ((f32.xyz * (f32.w * 120.0)) * 1.0)) + ((f77 - (f80 * f76)) * (((((((CB0[35].xyz * f85) + (CB0[37].xyz * f86)) + (CB0[39].xyz * f87)) + (CB0[36].xyz * f88)) + (CB0[38].xyz * f89)) + (CB0[40].xyz * f90)) + (((((((CB0[29].xyz * f85) + (CB0[31].xyz * f86)) + (CB0[33].xyz * f87)) + (CB0[30].xyz * f88)) + (CB0[32].xyz * f89)) + (CB0[34].xyz * f90)) * f34)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f34))) * f25.xyz) + ((((f72 * (((f73 + (f73 * f73)) / (((f74 * f74) * ((f68 * 3.0) + 0.5)) * ((f67 * 0.75) + 0.25))) * f65)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f60, textureLod(PrefilteredEnvTexture, f58, f57).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f56.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f34)) * f80) * f54));
    vec4 f92 = vec4(0.0);
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    float f95 = f8.w;
    vec4 f96 = f94;
    f96.w = f95;
    float f97 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f98 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f97) * 5.0).xyz;
    bvec3 f99 = bvec3(!(CB0[13].w == 0.0));
    vec3 f100 = mix(vec3(f99.x ? CB0[14].xyz.x : f98.x, f99.y ? CB0[14].xyz.y : f98.y, f99.z ? CB0[14].xyz.z : f98.z), f96.xyz, vec3(f97));
    vec4 f101 = f96;
    f101.x = f100.x;
    vec4 f102 = f101;
    f102.y = f100.y;
    vec4 f103 = f102;
    f103.z = f100.z;
    vec3 f104 = sqrt(clamp(f103.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f105 = f103;
    f105.x = f104.x;
    vec4 f106 = f105;
    f106.y = f104.y;
    vec4 f107 = f106;
    f107.z = f104.z;
    vec4 f108 = f107;
    f108.w = f95;
    _entryPointOutput = f108;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
