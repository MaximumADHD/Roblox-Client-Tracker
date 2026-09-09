#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialConsts.h>
uniform vec4 CB0[61];
uniform vec4 CB2[5];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;

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
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    float f2 = f0.y;
    vec4 f3 = texture(DiffuseMapTexture, f1);
    vec4 f4 = texture(NormalMapTexture, f1);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * f2;
    vec3 f13 = (VARYING2.xyz * f3.xyz) * 1.0;
    vec4 f14 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f15 = texture(SpecularMapTexture, f1);
    float f16 = VARYING2.w * 2.0;
    float f17 = clamp((f16 - 1.0) + f3.w, 0.0, 1.0);
    float f18 = clamp(f16, 0.0, 1.0);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f12.x) + (cross(f21, f20) * f12.y)) + (f21 * (f7 * 10.0)));
    vec3 f23 = f13 * f13;
    float f24 = length(VARYING4.xyz);
    vec3 f25 = VARYING4.xyz / vec3(f24);
    float f26 = 0.08900000154972076416015625 + (mix(f14, f15, vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f27 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
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
    vec4 f38 = texture(ShadowMapTexture, f28.xy);
    float f39 = f28.z;
    float f40 = max(9.9999997473787516355514526367188e-05, dot(f22, f25));
    float f41 = 1.0 - f40;
    vec3 f42 = reflect(-f25, f22);
    float f43 = f26 * 5.0;
    bool f44 = !(CB0[58].x == 2.0);
    mat3 f45 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz));
    vec3 f46 = f45 * f42;
    bvec3 f47 = bvec3(f44);
    vec3 f48 = textureLod(PrefilteredEnvTexture, vec4(vec3(f47.x ? f46.x : f42.x, f47.y ? f46.y : f42.y, f47.z ? f46.z : f42.z), f43).xyz, f43).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f42.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f49 = vec4(f42, f43).xyz;
    vec3 f50 = textureLod(PrefilteredEnvIndoorTexture, f49, f43).xyz;
    vec3 f51;
    if (CB0[32].w == 0.0)
    {
        f51 = f50;
    }
    else
    {
        f51 = mix(f50, textureLod(PrefilteredEnvBlendTargetTexture, f49, f43).xyz, vec3(CB0[32].w));
    }
    vec4 f52 = texture(PrecomputedBRDFTexture, vec2(f26, f40));
    float f53 = f52.x;
    float f54 = f52.y;
    vec3 f55 = ((vec3(0.039999999105930328369140625) * f53) + vec3(f54)) / vec3(f53 + f54);
    vec3 f56 = f22 * f22;
    bvec3 f57 = lessThan(f22, vec3(0.0));
    vec3 f58 = vec3(f57.x ? f56.x : vec3(0.0).x, f57.y ? f56.y : vec3(0.0).y, f57.z ? f56.z : vec3(0.0).z);
    vec3 f59 = f56 - f58;
    float f60 = f59.x;
    float f61 = f59.y;
    float f62 = f59.z;
    float f63 = f58.x;
    float f64 = f58.y;
    float f65 = f58.z;
    vec3 f66 = vec3(f37);
    vec3 f67 = -CB0[16].xyz;
    float f68 = dot(f22, f67) * ((1.0 - ((step(f38.x, f39) * clamp(CB0[29].z + (CB0[29].w * abs(f39 - 0.5)), 0.0, 1.0)) * f38.y)) * f35.y);
    vec3 f69 = normalize(f25 + f67);
    float f70 = clamp(f68, 0.0, 1.0);
    float f71 = f26 * f26;
    float f72 = max(0.001000000047497451305389404296875, dot(f22, f69));
    float f73 = dot(f67, f69);
    float f74 = 1.0 - f73;
    float f75 = f74 * f74;
    float f76 = (f75 * f75) * f74;
    vec3 f77 = vec3(f76) + (vec3(0.039999999105930328369140625) * (1.0 - f76));
    float f78 = f71 * f71;
    float f79 = (((f72 * f78) - f72) * f72) + 1.0;
    vec3 f80 = mix(f36, f48, f66) * mix(vec3(1.0), f23, vec3(0.5));
    float f81 = 1.0 - VARYING2.w;
    float f82 = mix(0.660000026226043701171875, 1.0, f81 * f81);
    mat4 f83 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f84 = vec4(CB0[11].xyz - VARYING4.xyz, 1.0) * f83;
    vec4 f85 = vec4(CB0[11].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f82) / max(dot(VARYING4.xyz, f22), 0.00999999977648258209228515625)))) + (f22 * (3.0 * (1.0 - f82)))), 1.0) * f83;
    float f86 = f84.w;
    vec2 f87 = (f84.xy * 0.5) + vec2(0.5 * f86);
    vec4 f88 = vec4(0.0);
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec2 f90 = f89.xy / vec2(f86);
    float f91 = f85.w;
    vec2 f92 = (f85.xy * 0.5) + vec2(0.5 * f91);
    vec4 f93 = vec4(0.0);
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec2 f95 = f94.xy / vec2(f91);
    vec2 f96 = f95 - vec2(0.5);
    vec2 f97 = (f95 - f90) * clamp(vec2(1.0) - ((f96 * f96) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f98 = normalize(f97) * CB0[28].x;
    vec2 f99 = CB0[50].xy * 0.5;
    vec2 f100 = f99 / CB0[50].zw;
    vec2 f101 = (f95 + f98) + f100;
    vec2 f102 = (f95 - f98) + f100;
    vec4 f103 = texture(GBufferColorTexture, (f90 + (f97 * clamp(min(texture(GBufferDepthTexture, (vec2(clamp(f101.x, 0.0, 1.0), clamp(f101.y, 0.0, 1.0)) * CB0[50].zw) - f99).x * 500.0, texture(GBufferDepthTexture, (vec2(clamp(f102.x, 0.0, 1.0), clamp(f102.y, 0.0, 1.0)) * CB0[50].zw) - f99).x * 500.0) - f86, 0.0, 1.0))) * CB0[50].zw);
    vec3 f104 = f103.xyz;
    vec3 f105 = (f104 * f104) * CB0[20].x;
    vec4 f106 = f103;
    f106.x = f105.x;
    vec4 f107 = f106;
    f107.y = f105.y;
    vec4 f108 = f107;
    f108.z = f105.z;
    vec3 f109 = f108.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f18));
    vec4 f110 = vec4(0.0);
    f110.x = f109.x;
    vec4 f111 = f110;
    f111.y = f109.y;
    vec4 f112 = f111;
    f112.z = f109.z;
    vec4 f113 = f112;
    f113.w = mix(1.0, f103.w, dot(f112.xyz, vec3(1.0)) / (dot(f108.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f114 = mix(mix(f113, vec4(mix((((((((vec3(1.0) - (f55 * f27)) * (((((((CB0[40].xyz * f60) + (CB0[42].xyz * f61)) + (CB0[44].xyz * f62)) + (CB0[41].xyz * f63)) + (CB0[43].xyz * f64)) + (CB0[45].xyz * f65)) + (((((((CB0[34].xyz * f60) + (CB0[36].xyz * f61)) + (CB0[38].xyz * f62)) + (CB0[35].xyz * f63)) + (CB0[37].xyz * f64)) + (CB0[39].xyz * f65)) * f37))) * f17) + (CB0[32].xyz + (CB0[33].xyz * f37))) + ((((vec3(1.0) - (f77 * f27)) * CB0[15].xyz) * f70) + (CB0[17].xyz * clamp(-f68, 0.0, 1.0)))) + f36) * f23) * f17, f80, vec3(VARYING7.w)), 1.0), vec4(f17)), vec4(f80, 1.0), vec4(((f41 * f41) * 0.800000011920928955078125) * f18)) + vec4((((mix(f51, f48, f66) * f55) * f27) * f17) + (((f77 * (((f78 + (f78 * f78)) / (((f79 * f79) * ((f73 * 3.0) + 0.5)) * ((f72 * 0.75) + 0.25))) * f70)) * CB0[15].xyz) * 1.0), 0.0);
    float f115 = clamp(exp2((CB0[18].z * f24) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f116;
    do
    {
        if ((CB0[18].w > 0.5) || (CB0[28].w > 0.5))
        {
            f116 = CB0[19].xyz;
            break;
        }
        vec3 f117 = f45 * f25;
        bvec3 f118 = bvec3(f44 && (!(CB0[58].w == 0.0)));
        f116 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f118.x ? f117.x : f25.x, f118.y ? f117.y : f25.y, f118.z ? f117.z : f25.z), 0.0).xyz, max(CB0[18].y, f115) * 5.0).xyz;
        break;
    } while(false);
    vec3 f119 = mix(f116, f114.xyz, vec3(f115));
    vec4 f120 = f114;
    f120.x = f119.x;
    vec4 f121 = f120;
    f121.y = f119.y;
    vec4 f122 = f121;
    f122.z = f119.z;
    vec4 f123 = f122;
    f123.w = 1.0 - ((1.0 - f114.w) * f115);
    vec3 f124 = sqrt(clamp(f123.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f125 = f123;
    f125.x = f124.x;
    vec4 f126 = f125;
    f126.y = f124.y;
    vec4 f127 = f126;
    f127.z = f124.z;
    _entryPointOutput = f127;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
