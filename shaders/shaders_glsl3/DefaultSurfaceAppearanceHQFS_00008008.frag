#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
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
in vec3 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec3 f1 = f0.xyz * VARYING8;
    float f2 = f1.x;
    vec4 f3 = f0;
    f3.x = f2;
    vec4 f4 = f3;
    f4.y = f1.y;
    vec4 f5 = f4;
    f5.z = f1.z;
    float f6 = f0.w;
    vec4 f7 = mix(vec4(f2, f1.yz, VARYING2.w * f6), vec4(mix(VARYING2.xyz, f5.xyz, vec3(f6)), VARYING2.w), vec4(CB3[0].x));
    vec4 f8 = texture(NormalMapTexture, VARYING0);
    vec2 f9 = f8.wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    vec3 f11 = mix(vec3(0.0, 0.0, 1.0), vec3(f10, sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f12 = texture(SpecularMapTexture, VARYING0);
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f11.x) + ((cross(f15, f14) * VARYING6.w) * f11.y)) + (f15 * f11.z));
    vec3 f17 = -CB0[16].xyz;
    float f18 = dot(f16, f17);
    vec3 f19 = f7.xyz;
    vec3 f20 = f19 * f19;
    vec4 f21 = f7;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    float f24 = length(VARYING4.xyz);
    vec3 f25 = VARYING4.xyz / vec3(f24);
    float f26 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f27 = 0.08900000154972076416015625 + (f12.y * 0.9110000133514404296875);
    vec3 f28 = -f25;
    vec3 f29 = reflect(f28, f16);
    float f30 = f12.x * f26;
    vec3 f31 = mix(vec3(0.039999999105930328369140625), f23.xyz, vec3(f30));
    vec3 f32 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f33 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f34 = VARYING3.yzx - (VARYING3.yzx * f33);
    vec4 f35 = texture(LightMapTexture, f34);
    vec4 f36 = texture(LightGridSkylightTexture, f34);
    vec4 f37 = vec4(clamp(f33, 0.0, 1.0));
    vec4 f38 = mix(f35, vec4(0.0), f37);
    vec4 f39 = mix(f36, vec4(1.0), f37);
    vec3 f40 = f38.xyz * (f38.w * 120.0);
    float f41 = f39.x;
    float f42 = f39.y;
    vec3 f43 = f32 - CB0[46].xyz;
    vec3 f44 = f32 - CB0[47].xyz;
    vec3 f45 = f32 - CB0[48].xyz;
    vec4 f46 = vec4(f32, 1.0) * mat4(CB8[((dot(f43, f43) < CB0[46].w) ? 0 : ((dot(f44, f44) < CB0[47].w) ? 1 : ((dot(f45, f45) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f43, f43) < CB0[46].w) ? 0 : ((dot(f44, f44) < CB0[47].w) ? 1 : ((dot(f45, f45) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f43, f43) < CB0[46].w) ? 0 : ((dot(f44, f44) < CB0[47].w) ? 1 : ((dot(f45, f45) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f43, f43) < CB0[46].w) ? 0 : ((dot(f44, f44) < CB0[47].w) ? 1 : ((dot(f45, f45) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f47 = textureLod(ShadowAtlasTexture, f46.xy, 0.0);
    vec2 f48 = vec2(0.0);
    f48.x = CB0[51].z;
    vec2 f49 = f48;
    f49.y = CB0[51].w;
    float f50 = (2.0 * f46.z) - 1.0;
    float f51 = exp(CB0[51].z * f50);
    float f52 = -exp((-CB0[51].w) * f50);
    vec2 f53 = (f49 * CB0[52].y) * vec2(f51, f52);
    vec2 f54 = f53 * f53;
    float f55 = f47.x;
    float f56 = max(f47.y - (f55 * f55), f54.x);
    float f57 = f51 - f55;
    float f58 = f47.z;
    float f59 = max(f47.w - (f58 * f58), f54.y);
    float f60 = f52 - f58;
    float f61 = (f18 * CB0[14].w) * (((f18 * CB0[52].x) > 0.0) ? mix(min((f51 <= f55) ? 1.0 : clamp(((f56 / (f56 + (f57 * f57))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f52 <= f58) ? 1.0 : clamp(((f59 / (f59 + (f60 * f60))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f42, clamp((length(f32 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f42);
    vec3 f62;
    vec3 f63;
    if (f61 > 0.0)
    {
        vec3 f64 = normalize(f25 + f17);
        float f65 = clamp(f61, 0.0, 1.0);
        float f66 = f27 * f27;
        float f67 = max(0.001000000047497451305389404296875, dot(f16, f64));
        float f68 = dot(f17, f64);
        float f69 = 1.0 - f68;
        float f70 = f69 * f69;
        float f71 = (f70 * f70) * f69;
        vec3 f72 = vec3(f71) + (f31 * (1.0 - f71));
        float f73 = f66 * f66;
        float f74 = (((f67 * f73) - f67) * f67) + 1.0;
        float f75 = 1.0 - f30;
        f63 = f40 + (((vec3(f75) - (f72 * (f26 * f75))) * CB0[15].xyz) * f65);
        f62 = ((f72 * (((f73 + (f73 * f73)) / (((f74 * f74) * ((f68 * 3.0) + 0.5)) * ((f67 * 0.75) + 0.25))) * f65)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f63 = f40;
        f62 = vec3(0.0);
    }
    float f76 = f27 * 5.0;
    vec3 f77 = vec4(f29, f76).xyz;
    vec3 f78 = textureLod(PrefilteredEnvIndoorTexture, f77, f76).xyz;
    vec3 f79;
    if (CB0[32].w == 0.0)
    {
        f79 = f78;
    }
    else
    {
        f79 = mix(f78, textureLod(PrefilteredEnvBlendTargetTexture, f77, f76).xyz, vec3(CB0[32].w));
    }
    vec4 f80 = texture(PrecomputedBRDFTexture, vec2(f27, max(9.9999997473787516355514526367188e-05, dot(f16, f25))));
    float f81 = f80.x;
    float f82 = f80.y;
    vec3 f83 = ((f31 * f81) + vec3(f82)) / vec3(f81 + f82);
    float f84 = 1.0 - f30;
    vec3 f85 = f16 * f16;
    bvec3 f86 = lessThan(f16, vec3(0.0));
    vec3 f87 = vec3(f86.x ? f85.x : vec3(0.0).x, f86.y ? f85.y : vec3(0.0).y, f86.z ? f85.z : vec3(0.0).z);
    vec3 f88 = f85 - f87;
    float f89 = f88.x;
    float f90 = f88.y;
    float f91 = f88.z;
    float f92 = f87.x;
    float f93 = f87.y;
    float f94 = f87.z;
    vec3 f95 = (((f63 + (((vec3(f84) - (f83 * (f26 * f84))) * (((((((CB0[40].xyz * f89) + (CB0[42].xyz * f90)) + (CB0[44].xyz * f91)) + (CB0[41].xyz * f92)) + (CB0[43].xyz * f93)) + (CB0[45].xyz * f94)) + (((((((CB0[34].xyz * f89) + (CB0[36].xyz * f90)) + (CB0[38].xyz * f91)) + (CB0[35].xyz * f92)) + (CB0[37].xyz * f93)) + (CB0[39].xyz * f94)) * f41))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f41 * (2.0 - CB0[14].w)))) * 1.0)) * f23.xyz) + (f62 + ((mix(f79, textureLod(PrefilteredEnvTexture, f77, f76).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f29.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f41)) * f83) * f26));
    vec4 f96 = vec4(0.0);
    f96.x = f95.x;
    vec4 f97 = f96;
    f97.y = f95.y;
    vec4 f98 = f97;
    f98.z = f95.z;
    float f99 = f7.w;
    vec4 f100 = f98;
    f100.w = f99;
    float f101 = clamp(exp2((CB0[18].z * f24) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f102 = textureLod(PrefilteredEnvTexture, vec4(f28, 0.0).xyz, max(CB0[18].y, f101) * 5.0).xyz;
    bvec3 f103 = bvec3(!(CB0[18].w == 0.0));
    vec3 f104 = mix(vec3(f103.x ? CB0[19].xyz.x : f102.x, f103.y ? CB0[19].xyz.y : f102.y, f103.z ? CB0[19].xyz.z : f102.z), f100.xyz, vec3(f101));
    vec4 f105 = f100;
    f105.x = f104.x;
    vec4 f106 = f105;
    f106.y = f104.y;
    vec4 f107 = f106;
    f107.z = f104.z;
    vec3 f108 = sqrt(clamp(f107.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f109 = f107;
    f109.x = f108.x;
    vec4 f110 = f109;
    f110.y = f108.y;
    vec4 f111 = f110;
    f111.z = f108.z;
    vec4 f112 = f111;
    f112.w = f99;
    _entryPointOutput = f112;
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
