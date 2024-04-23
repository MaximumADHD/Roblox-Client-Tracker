#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
#include <MaterialParams.h>
uniform vec4 CB0[57];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

in vec2 VARYING0;
in vec3 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING1.z) * 0.25;
    vec4 f1 = texture(NormalMapTexture, f0);
    vec2 f2 = f1.wy * 2.0;
    vec2 f3 = f2 - vec2(1.0);
    float f4 = sqrt(clamp(1.0 + dot(vec2(1.0) - f2, f3), 0.0, 1.0));
    vec3 f5 = vec3(f3, f4);
    vec2 f6 = f5.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f7 = f5;
    f7.x = f6.x;
    vec3 f8 = f7;
    f8.y = f6.y;
    vec2 f9 = f8.xy * (clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y * CB2[3].w);
    vec4 f10 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f0).x * 2.0), VARYING2.w);
    float f11 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f12 = VARYING6.xyz * f11;
    vec3 f13 = VARYING5.xyz * f11;
    vec3 f14 = normalize(((f12 * f9.x) + (cross(f13, f12) * f9.y)) + (f13 * f4));
    vec3 f15 = -CB0[16].xyz;
    float f16 = dot(f14, f15);
    vec3 f17 = f10.xyz;
    vec3 f18 = f17 * f17;
    vec4 f19 = f10;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = length(VARYING4.xyz);
    vec3 f23 = VARYING4.xyz / vec3(f22);
    float f24 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f25 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f26 = -f23;
    vec3 f27 = reflect(f26, f14);
    float f28 = (!(VARYING7.w == 0.0)) ? 0.0 : (f25 * 5.0);
    vec3 f29 = vec4(f27, f28).xyz;
    vec3 f30 = textureLod(PrefilteredEnvTexture, f29, f28).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f27.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f31 = textureLod(PrefilteredEnvIndoorTexture, f29, f28).xyz;
    vec3 f32;
    if (CB0[32].w == 0.0)
    {
        f32 = f31;
    }
    else
    {
        f32 = mix(f31, textureLod(PrefilteredEnvBlendTargetTexture, f29, f28).xyz, vec3(CB0[32].w));
    }
    vec4 f33 = texture(PrecomputedBRDFTexture, vec2(f25, max(9.9999997473787516355514526367188e-05, dot(f14, f23))));
    vec3 f34 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f35 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f36 = VARYING3.yzx - (VARYING3.yzx * f35);
    vec4 f37 = texture(LightMapTexture, f36);
    vec4 f38 = texture(LightGridSkylightTexture, f36);
    vec4 f39 = vec4(clamp(f35, 0.0, 1.0));
    vec4 f40 = mix(f37, vec4(0.0), f39);
    vec4 f41 = mix(f38, vec4(1.0), f39);
    vec3 f42 = f40.xyz * (f40.w * 120.0);
    float f43 = f41.x;
    float f44 = f41.y;
    vec3 f45 = f34 - CB0[46].xyz;
    vec3 f46 = f34 - CB0[47].xyz;
    vec3 f47 = f34 - CB0[48].xyz;
    vec4 f48 = vec4(f34, 1.0) * mat4(CB8[((dot(f45, f45) < CB0[46].w) ? 0 : ((dot(f46, f46) < CB0[47].w) ? 1 : ((dot(f47, f47) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f45, f45) < CB0[46].w) ? 0 : ((dot(f46, f46) < CB0[47].w) ? 1 : ((dot(f47, f47) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f45, f45) < CB0[46].w) ? 0 : ((dot(f46, f46) < CB0[47].w) ? 1 : ((dot(f47, f47) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f45, f45) < CB0[46].w) ? 0 : ((dot(f46, f46) < CB0[47].w) ? 1 : ((dot(f47, f47) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f49 = textureLod(ShadowAtlasTexture, f48.xy, 0.0);
    vec2 f50 = vec2(0.0);
    f50.x = CB0[51].z;
    vec2 f51 = f50;
    f51.y = CB0[51].w;
    float f52 = (2.0 * f48.z) - 1.0;
    float f53 = exp(CB0[51].z * f52);
    float f54 = -exp((-CB0[51].w) * f52);
    vec2 f55 = (f51 * CB0[52].y) * vec2(f53, f54);
    vec2 f56 = f55 * f55;
    float f57 = f49.x;
    float f58 = max(f49.y - (f57 * f57), f56.x);
    float f59 = f53 - f57;
    float f60 = f49.z;
    float f61 = max(f49.w - (f60 * f60), f56.y);
    float f62 = f54 - f60;
    float f63 = (f16 * CB0[14].w) * (((f16 * CB0[52].x) > 0.0) ? mix(min((f53 <= f57) ? 1.0 : clamp(((f58 / (f58 + (f59 * f59))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f54 <= f60) ? 1.0 : clamp(((f61 / (f61 + (f62 * f62))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f44, clamp((length(f34 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f44);
    vec3 f64;
    vec3 f65;
    if (f63 > 0.0)
    {
        vec3 f66 = normalize(f23 + f15);
        float f67 = clamp(f63, 0.0, 1.0);
        float f68 = f25 * f25;
        float f69 = max(0.001000000047497451305389404296875, dot(f14, f66));
        float f70 = dot(f15, f66);
        float f71 = 1.0 - f70;
        float f72 = f71 * f71;
        float f73 = (f72 * f72) * f71;
        vec3 f74 = vec3(f73) + (vec3(0.039999999105930328369140625) * (1.0 - f73));
        float f75 = f68 * f68;
        float f76 = (((f69 * f75) - f69) * f69) + 1.0;
        f65 = f42 + (((vec3(1.0) - (f74 * f24)) * CB0[15].xyz) * f67);
        f64 = ((f74 * (((f75 + (f75 * f75)) / (((f76 * f76) * ((f70 * 3.0) + 0.5)) * ((f69 * 0.75) + 0.25))) * f67)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f65 = f42;
        f64 = vec3(0.0);
    }
    float f77 = f33.x;
    float f78 = f33.y;
    vec3 f79 = ((vec3(0.039999999105930328369140625) * f77) + vec3(f78)) / vec3(f77 + f78);
    vec3 f80 = f14 * f14;
    bvec3 f81 = lessThan(f14, vec3(0.0));
    vec3 f82 = vec3(f81.x ? f80.x : vec3(0.0).x, f81.y ? f80.y : vec3(0.0).y, f81.z ? f80.z : vec3(0.0).z);
    vec3 f83 = f80 - f82;
    float f84 = f83.x;
    float f85 = f83.y;
    float f86 = f83.z;
    float f87 = f82.x;
    float f88 = f82.y;
    float f89 = f82.z;
    vec3 f90 = (((f65 + (((vec3(1.0) - (f79 * f24)) * (((((((CB0[40].xyz * f84) + (CB0[42].xyz * f85)) + (CB0[44].xyz * f86)) + (CB0[41].xyz * f87)) + (CB0[43].xyz * f88)) + (CB0[45].xyz * f89)) + (((((((CB0[34].xyz * f84) + (CB0[36].xyz * f85)) + (CB0[38].xyz * f86)) + (CB0[35].xyz * f87)) + (CB0[37].xyz * f88)) + (CB0[39].xyz * f89)) * f43))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f43 * (2.0 - CB0[14].w)))) * 1.0)) * mix(f21.xyz, f30, vec3(VARYING7.w))) + (f64 + ((mix(f32, f30, vec3(f43)) * f79) * f24));
    vec4 f91 = vec4(0.0);
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec4 f94 = f93;
    f94.w = VARYING2.w;
    float f95 = clamp(exp2((CB0[18].z * f22) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f96 = textureLod(PrefilteredEnvTexture, vec4(f26, 0.0).xyz, max(CB0[18].y, f95) * 5.0).xyz;
    bvec3 f97 = bvec3(!(CB0[18].w == 0.0));
    vec3 f98 = mix(vec3(f97.x ? CB0[19].xyz.x : f96.x, f97.y ? CB0[19].xyz.y : f96.y, f97.z ? CB0[19].xyz.z : f96.z), f94.xyz, vec3(f95));
    vec4 f99 = f94;
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    vec3 f102 = sqrt(clamp(f101.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f103 = f101;
    f103.x = f102.x;
    vec4 f104 = f103;
    f104.y = f102.y;
    vec4 f105 = f104;
    f105.z = f102.z;
    vec4 f106 = f105;
    f106.w = VARYING2.w;
    _entryPointOutput = f106;
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
//$$NormalDetailMapTexture=s8
