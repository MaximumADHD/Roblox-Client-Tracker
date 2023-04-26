#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <SAParams.h>
uniform vec4 CB0[57];
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
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    vec4 f2 = mix(vec4(f0.xyz, VARYING2.w * f1), vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w), vec4(CB3[0].x));
    vec4 f3 = texture(NormalMapTexture, VARYING0);
    vec2 f4 = f3.wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = vec3(f5, f6).xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    vec4 f8 = texture(SpecularMapTexture, VARYING0);
    float f9 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f10 = VARYING6.xyz * f9;
    vec3 f11 = VARYING5.xyz * f9;
    vec3 f12 = normalize(((f10 * f7.x) + ((cross(f11, f10) * VARYING6.w) * f7.y)) + (f11 * f6));
    vec3 f13 = -CB0[16].xyz;
    float f14 = dot(f12, f13);
    vec3 f15 = f2.xyz;
    vec3 f16 = f15 * f15;
    vec4 f17 = f2;
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    float f20 = length(VARYING4.xyz);
    vec3 f21 = VARYING4.xyz / vec3(f20);
    float f22 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f23 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
    vec3 f24 = -f21;
    vec3 f25 = reflect(f24, f12);
    float f26 = f8.x * f22;
    vec3 f27 = mix(vec3(0.039999999105930328369140625), f19.xyz, vec3(f26));
    vec3 f28 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f29 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f30 = VARYING3.yzx - (VARYING3.yzx * f29);
    vec4 f31 = texture(LightMapTexture, f30);
    vec4 f32 = texture(LightGridSkylightTexture, f30);
    vec4 f33 = vec4(clamp(f29, 0.0, 1.0));
    vec4 f34 = mix(f31, vec4(0.0), f33);
    vec4 f35 = mix(f32, vec4(1.0), f33);
    vec3 f36 = f34.xyz * (f34.w * 120.0);
    float f37 = f35.x;
    float f38 = f35.y;
    vec3 f39 = f28 - CB0[46].xyz;
    vec3 f40 = f28 - CB0[47].xyz;
    vec3 f41 = f28 - CB0[48].xyz;
    vec4 f42 = vec4(f28, 1.0) * mat4(CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f43 = textureLod(ShadowAtlasTexture, f42.xy, 0.0);
    vec2 f44 = vec2(0.0);
    f44.x = CB0[51].z;
    vec2 f45 = f44;
    f45.y = CB0[51].w;
    float f46 = (2.0 * f42.z) - 1.0;
    float f47 = exp(CB0[51].z * f46);
    float f48 = -exp((-CB0[51].w) * f46);
    vec2 f49 = (f45 * CB0[52].y) * vec2(f47, f48);
    vec2 f50 = f49 * f49;
    float f51 = f43.x;
    float f52 = max(f43.y - (f51 * f51), f50.x);
    float f53 = f47 - f51;
    float f54 = f43.z;
    float f55 = max(f43.w - (f54 * f54), f50.y);
    float f56 = f48 - f54;
    float f57 = (f14 * CB0[14].w) * (((f14 * CB0[52].x) > 0.0) ? mix(min((f47 <= f51) ? 1.0 : clamp(((f52 / (f52 + (f53 * f53))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f48 <= f54) ? 1.0 : clamp(((f55 / (f55 + (f56 * f56))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f38, clamp((length(f28 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f38);
    vec3 f58;
    vec3 f59;
    if (f57 > 0.0)
    {
        vec3 f60 = normalize(f21 + f13);
        float f61 = clamp(f57, 0.0, 1.0);
        float f62 = f23 * f23;
        float f63 = max(0.001000000047497451305389404296875, dot(f12, f60));
        float f64 = dot(f13, f60);
        float f65 = 1.0 - f64;
        float f66 = f65 * f65;
        float f67 = (f66 * f66) * f65;
        vec3 f68 = vec3(f67) + (f27 * (1.0 - f67));
        float f69 = f62 * f62;
        float f70 = (((f63 * f69) - f63) * f63) + 1.0;
        float f71 = 1.0 - f26;
        f59 = f36 + (((vec3(f71) - (f68 * (f22 * f71))) * CB0[15].xyz) * f61);
        f58 = ((f68 * (((f69 + (f69 * f69)) / (((f70 * f70) * ((f64 * 3.0) + 0.5)) * ((f63 * 0.75) + 0.25))) * f61)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f59 = f36;
        f58 = vec3(0.0);
    }
    float f72 = f23 * 5.0;
    vec3 f73 = vec4(f25, f72).xyz;
    vec3 f74 = textureLod(PrefilteredEnvIndoorTexture, f73, f72).xyz;
    vec3 f75;
    if (CB0[32].w == 0.0)
    {
        f75 = f74;
    }
    else
    {
        f75 = mix(f74, textureLod(PrefilteredEnvBlendTargetTexture, f73, f72).xyz, vec3(CB0[32].w));
    }
    vec4 f76 = texture(PrecomputedBRDFTexture, vec2(f23, max(9.9999997473787516355514526367188e-05, dot(f12, f21))));
    float f77 = f76.x;
    float f78 = f76.y;
    vec3 f79 = ((f27 * f77) + vec3(f78)) / vec3(f77 + f78);
    float f80 = 1.0 - f26;
    vec3 f81 = f12 * f12;
    bvec3 f82 = lessThan(f12, vec3(0.0));
    vec3 f83 = vec3(f82.x ? f81.x : vec3(0.0).x, f82.y ? f81.y : vec3(0.0).y, f82.z ? f81.z : vec3(0.0).z);
    vec3 f84 = f81 - f83;
    float f85 = f84.x;
    float f86 = f84.y;
    float f87 = f84.z;
    float f88 = f83.x;
    float f89 = f83.y;
    float f90 = f83.z;
    vec3 f91 = (((f59 + (((vec3(f80) - (f79 * (f22 * f80))) * (((((((CB0[40].xyz * f85) + (CB0[42].xyz * f86)) + (CB0[44].xyz * f87)) + (CB0[41].xyz * f88)) + (CB0[43].xyz * f89)) + (CB0[45].xyz * f90)) + (((((((CB0[34].xyz * f85) + (CB0[36].xyz * f86)) + (CB0[38].xyz * f87)) + (CB0[35].xyz * f88)) + (CB0[37].xyz * f89)) + (CB0[39].xyz * f90)) * f37))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f37 * (2.0 - CB0[14].w)))) * 1.0)) * f19.xyz) + (f58 + ((mix(f75, textureLod(PrefilteredEnvTexture, f73, f72).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f25.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f37)) * f79) * f22));
    vec4 f92 = vec4(0.0);
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    float f95 = f2.w;
    vec4 f96 = f94;
    f96.w = f95;
    float f97 = clamp(exp2((CB0[18].z * f20) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f98 = textureLod(PrefilteredEnvTexture, vec4(f24, 0.0).xyz, max(CB0[18].y, f97) * 5.0).xyz;
    bvec3 f99 = bvec3(!(CB0[18].w == 0.0));
    vec3 f100 = mix(vec3(f99.x ? CB0[19].xyz.x : f98.x, f99.y ? CB0[19].xyz.y : f98.y, f99.z ? CB0[19].xyz.z : f98.z), f96.xyz, vec3(f97));
    vec4 f101 = f96;
    f101.x = f100.x;
    vec4 f102 = f101;
    f102.y = f100.y;
    vec4 f103 = f102;
    f103.z = f100.z;
    vec3 f104 = sqrt(clamp(f103.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
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
