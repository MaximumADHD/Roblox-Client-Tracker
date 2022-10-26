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
    float f2 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec4 f3 = texture(DiffuseMapTexture, VARYING0);
    float f4 = f3.w;
    if (f4 < (0.5 * CB0[52].z))
    {
        discard;
    }
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
    vec3 f19 = -CB0[16].xyz;
    float f20 = dot(f18, f19);
    vec3 f21 = f8.xyz;
    vec3 f22 = f21 * f21;
    vec4 f23 = f8;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    float f26 = CB0[31].w * f2;
    float f27 = 0.08900000154972076416015625 + (f14.y * 0.9110000133514404296875);
    vec3 f28 = -f1;
    vec3 f29 = reflect(f28, f18);
    float f30 = f14.x * f26;
    vec3 f31 = mix(vec3(0.039999999105930328369140625), f25.xyz, vec3(f30));
    vec3 f32 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f33 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f34 = VARYING3.yzx - (VARYING3.yzx * f33);
    vec4 f35 = texture(LightMapTexture, f34);
    vec4 f36 = texture(LightGridSkylightTexture, f34);
    vec4 f37 = vec4(clamp(f33, 0.0, 1.0));
    vec4 f38 = mix(f35, vec4(0.0), f37);
    vec4 f39 = mix(f36, vec4(1.0), f37);
    float f40 = f39.x;
    float f41 = f39.y;
    vec3 f42 = f32 - CB0[46].xyz;
    vec3 f43 = f32 - CB0[47].xyz;
    vec3 f44 = f32 - CB0[48].xyz;
    vec4 f45 = vec4(f32, 1.0) * mat4(CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f42, f42) < CB0[46].w) ? 0 : ((dot(f43, f43) < CB0[47].w) ? 1 : ((dot(f44, f44) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
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
    vec3 f60 = normalize(f1 - CB0[16].xyz);
    float f61 = clamp((f20 * CB0[14].w) * (((f20 * CB0[52].x) > 0.0) ? mix(min((f50 <= f54) ? 1.0 : clamp(((f55 / (f55 + (f56 * f56))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f51 <= f57) ? 1.0 : clamp(((f58 / (f58 + (f59 * f59))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f41, clamp((length(f32 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f41), 0.0, 1.0);
    float f62 = f27 * f27;
    float f63 = max(0.001000000047497451305389404296875, dot(f18, f60));
    float f64 = dot(f19, f60);
    float f65 = 1.0 - f64;
    float f66 = f65 * f65;
    float f67 = (f66 * f66) * f65;
    vec3 f68 = vec3(f67) + (f31 * (1.0 - f67));
    float f69 = f62 * f62;
    float f70 = (((f63 * f69) - f63) * f63) + 1.0;
    float f71 = 1.0 - f30;
    float f72 = f26 * f71;
    vec3 f73 = vec3(f71);
    float f74 = f27 * 5.0;
    vec3 f75 = vec4(f29, f74).xyz;
    vec3 f76 = textureLod(PrefilteredEnvIndoorTexture, f75, f74).xyz;
    vec3 f77;
    if (CB0[32].w == 0.0)
    {
        f77 = f76;
    }
    else
    {
        f77 = mix(f76, textureLod(PrefilteredEnvBlendTargetTexture, f75, f74).xyz, vec3(CB0[32].w));
    }
    vec4 f78 = texture(PrecomputedBRDFTexture, vec2(f27, max(9.9999997473787516355514526367188e-05, dot(f18, f1))));
    float f79 = f78.x;
    float f80 = f78.y;
    vec3 f81 = ((f31 * f79) + vec3(f80)) / vec3(f79 + f80);
    vec3 f82 = f18 * f18;
    bvec3 f83 = lessThan(f18, vec3(0.0));
    vec3 f84 = vec3(f83.x ? f82.x : vec3(0.0).x, f83.y ? f82.y : vec3(0.0).y, f83.z ? f82.z : vec3(0.0).z);
    vec3 f85 = f82 - f84;
    float f86 = f85.x;
    float f87 = f85.y;
    float f88 = f85.z;
    float f89 = f84.x;
    float f90 = f84.y;
    float f91 = f84.z;
    vec3 f92 = ((((((f38.xyz * (f38.w * 120.0)) * 1.0) + (((f73 - (f68 * f72)) * CB0[15].xyz) * f61)) + ((f73 - (f81 * f72)) * (((((((CB0[40].xyz * f86) + (CB0[42].xyz * f87)) + (CB0[44].xyz * f88)) + (CB0[41].xyz * f89)) + (CB0[43].xyz * f90)) + (CB0[45].xyz * f91)) + (((((((CB0[34].xyz * f86) + (CB0[36].xyz * f87)) + (CB0[38].xyz * f88)) + (CB0[35].xyz * f89)) + (CB0[37].xyz * f90)) + (CB0[39].xyz * f91)) * f40)))) + ((CB0[32].xyz + (CB0[33].xyz * (f40 * (2.0 - CB0[14].w)))) * 1.0)) * f25.xyz) + ((((f68 * (((f69 + (f69 * f69)) / max(((f70 * f70) * ((f64 * 3.0) + 0.5)) * ((f63 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f61)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f77, textureLod(PrefilteredEnvTexture, f75, f74).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f29.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f40)) * f81) * f26));
    vec4 f93 = vec4(0.0);
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    float f96 = f8.w;
    vec4 f97 = f95;
    f97.w = f96;
    float f98 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f99 = textureLod(PrefilteredEnvTexture, vec4(f28, 0.0).xyz, max(CB0[18].y, f98) * 5.0).xyz;
    bvec3 f100 = bvec3(!(CB0[18].w == 0.0));
    vec3 f101 = mix(vec3(f100.x ? CB0[19].xyz.x : f99.x, f100.y ? CB0[19].xyz.y : f99.y, f100.z ? CB0[19].xyz.z : f99.z), f97.xyz, vec3(f98));
    vec4 f102 = f97;
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    vec3 f105 = sqrt(clamp(f104.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f106 = f104;
    f106.x = f105.x;
    vec4 f107 = f106;
    f107.y = f105.y;
    vec4 f108 = f107;
    f108.z = f105.z;
    vec4 f109 = f108;
    f109.w = f96;
    _entryPointOutput = f109;
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
