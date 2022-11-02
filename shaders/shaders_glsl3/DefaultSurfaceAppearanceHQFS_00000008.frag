#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <SAParams.h>
uniform vec4 CB0[58];
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
    vec4 f2 = texture(DiffuseMapTexture, VARYING0);
    float f3 = f2.w;
    vec4 f4 = vec4(mix(VARYING2.xyz, f2.xyz, vec3(f3)), VARYING2.w);
    vec4 f5 = vec4(f2.xyz, VARYING2.w * f3);
    bvec4 f6 = bvec4(!(CB3[0].x == 0.0));
    vec4 f7 = vec4(f6.x ? f4.x : f5.x, f6.y ? f4.y : f5.y, f6.z ? f4.z : f5.z, f6.w ? f4.w : f5.w);
    vec4 f8 = texture(NormalMapTexture, VARYING0);
    vec2 f9 = f8.wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    float f11 = sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0));
    vec2 f12 = vec3(f10, f11).xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    vec4 f13 = texture(SpecularMapTexture, VARYING0);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f12.x) + ((cross(f16, f15) * VARYING6.w) * f12.y)) + (f16 * f11));
    vec3 f18 = -CB0[16].xyz;
    float f19 = dot(f17, f18);
    vec3 f20 = f7.xyz;
    vec3 f21 = f20 * f20;
    vec4 f22 = f7;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    float f25 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f26 = 0.08900000154972076416015625 + (f13.y * 0.9110000133514404296875);
    vec3 f27 = -f1;
    vec3 f28 = reflect(f27, f17);
    float f29 = f13.x * f25;
    vec3 f30 = mix(vec3(0.039999999105930328369140625), f24.xyz, vec3(f29));
    vec3 f31 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f32 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f33 = VARYING3.yzx - (VARYING3.yzx * f32);
    vec4 f34 = texture(LightMapTexture, f33);
    vec4 f35 = texture(LightGridSkylightTexture, f33);
    vec4 f36 = vec4(clamp(f32, 0.0, 1.0));
    vec4 f37 = mix(f34, vec4(0.0), f36);
    vec4 f38 = mix(f35, vec4(1.0), f36);
    vec3 f39 = f37.xyz * (f37.w * 120.0);
    float f40 = f38.x;
    float f41 = f38.y;
    vec3 f42 = f31 - CB0[46].xyz;
    vec3 f43 = f31 - CB0[47].xyz;
    vec3 f44 = f31 - CB0[48].xyz;
    vec4 f45 = vec4(f31, 1.0) * mat4(CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f46 = textureLod(ShadowAtlasTexture, f45.xy, 0.0);
    vec2 f47 = vec2(0.0);
    f47.x = CB0[51].z;
    vec2 f48 = f47;
    f48.y = CB0[51].w;
    float f49 = (2.0 * f45.z) - 1.0;
    float f50 = exp(CB0[51].z * f49);
    float f51 = -exp((-CB0[51].w) * f49);
    vec2 f52 = (f48 * CB0[52].y) * vec2(f50, f51);
    vec2 f53 = f52 * f52;
    float f54 = f46.x;
    float f55 = max(f46.y - (f54 * f54), f53.x);
    float f56 = f50 - f54;
    float f57 = f46.z;
    float f58 = max(f46.w - (f57 * f57), f53.y);
    float f59 = f51 - f57;
    float f60 = (f19 * CB0[14].w) * (((f19 * CB0[52].x) > 0.0) ? mix(min((f50 <= f54) ? 1.0 : clamp(((f55 / (f55 + (f56 * f56))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f51 <= f57) ? 1.0 : clamp(((f58 / (f58 + (f59 * f59))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f41, clamp((length(f31 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f41);
    vec3 f61;
    vec3 f62;
    if (f60 > 0.0)
    {
        vec3 f63 = normalize(f1 - CB0[16].xyz);
        float f64 = clamp(f60, 0.0, 1.0);
        float f65 = f26 * f26;
        float f66 = max(0.001000000047497451305389404296875, dot(f17, f63));
        float f67 = dot(f18, f63);
        float f68 = 1.0 - f67;
        float f69 = f68 * f68;
        float f70 = (f69 * f69) * f68;
        vec3 f71 = vec3(f70) + (f30 * (1.0 - f70));
        float f72 = f65 * f65;
        float f73 = (((f66 * f72) - f66) * f66) + 1.0;
        float f74 = 1.0 - f29;
        f62 = f39 + (((vec3(f74) - (f71 * (f25 * f74))) * CB0[15].xyz) * f64);
        f61 = ((f71 * (((f72 + (f72 * f72)) / max(((f73 * f73) * ((f67 * 3.0) + 0.5)) * ((f66 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f64)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f62 = f39;
        f61 = vec3(0.0);
    }
    float f75 = f26 * 5.0;
    vec3 f76 = vec4(f28, f75).xyz;
    vec3 f77 = textureLod(PrefilteredEnvIndoorTexture, f76, f75).xyz;
    vec3 f78;
    if (CB0[32].w == 0.0)
    {
        f78 = f77;
    }
    else
    {
        f78 = mix(f77, textureLod(PrefilteredEnvBlendTargetTexture, f76, f75).xyz, vec3(CB0[32].w));
    }
    vec4 f79 = texture(PrecomputedBRDFTexture, vec2(f26, max(9.9999997473787516355514526367188e-05, dot(f17, f1))));
    float f80 = f79.x;
    float f81 = f79.y;
    vec3 f82 = ((f30 * f80) + vec3(f81)) / vec3(f80 + f81);
    float f83 = 1.0 - f29;
    vec3 f84 = f17 * f17;
    bvec3 f85 = lessThan(f17, vec3(0.0));
    vec3 f86 = vec3(f85.x ? f84.x : vec3(0.0).x, f85.y ? f84.y : vec3(0.0).y, f85.z ? f84.z : vec3(0.0).z);
    vec3 f87 = f84 - f86;
    float f88 = f87.x;
    float f89 = f87.y;
    float f90 = f87.z;
    float f91 = f86.x;
    float f92 = f86.y;
    float f93 = f86.z;
    vec3 f94 = (((f62 + (((vec3(f83) - (f82 * (f25 * f83))) * (((((((CB0[40].xyz * f88) + (CB0[42].xyz * f89)) + (CB0[44].xyz * f90)) + (CB0[41].xyz * f91)) + (CB0[43].xyz * f92)) + (CB0[45].xyz * f93)) + (((((((CB0[34].xyz * f88) + (CB0[36].xyz * f89)) + (CB0[38].xyz * f90)) + (CB0[35].xyz * f91)) + (CB0[37].xyz * f92)) + (CB0[39].xyz * f93)) * f40))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f40 * (2.0 - CB0[14].w)))) * 1.0)) * f24.xyz) + (f61 + ((mix(f78, textureLod(PrefilteredEnvTexture, f76, f75).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f28.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f40)) * f82) * f25));
    vec4 f95 = vec4(0.0);
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    float f98 = f7.w;
    vec4 f99 = f97;
    f99.w = f98;
    float f100 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f101 = textureLod(PrefilteredEnvTexture, vec4(f27, 0.0).xyz, max(CB0[18].y, f100) * 5.0).xyz;
    bvec3 f102 = bvec3(!(CB0[18].w == 0.0));
    vec3 f103 = mix(vec3(f102.x ? CB0[19].xyz.x : f101.x, f102.y ? CB0[19].xyz.y : f101.y, f102.z ? CB0[19].xyz.z : f101.z), f99.xyz, vec3(f100));
    vec4 f104 = f99;
    f104.x = f103.x;
    vec4 f105 = f104;
    f105.y = f103.y;
    vec4 f106 = f105;
    f106.z = f103.z;
    vec3 f107 = sqrt(clamp(f106.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f108 = f106;
    f108.x = f107.x;
    vec4 f109 = f108;
    f109.y = f107.y;
    vec4 f110 = f109;
    f110.z = f107.z;
    vec4 f111 = f110;
    f111.w = f98;
    _entryPointOutput = f111;
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
