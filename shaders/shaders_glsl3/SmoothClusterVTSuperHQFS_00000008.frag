#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[57];
uniform vec4 CB8[24];
uniform vec4 CB5[1];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D TranslationMapTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec4 VARYING2;
in vec2 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0;
    do
    {
        vec2 f1 = (VARYING4 * vec2(0.03125)) + CB5[0].zw;
        vec4 f2 = texture(TranslationMapTexture, vec4(f1, 0.0, 6.5).xy, 6.5);
        if (f2.w < 0.0)
        {
            f0 = vec4(1.0, 1.0, 0.0, 1.0);
            break;
        }
        vec2 f3 = (f1 * f2.z) + f2.xy;
        vec4 f4 = texture(AlbedoMapTexture, f3);
        vec3 f5 = f4.xyz;
        vec4 f6 = texture(NormalMapTexture, f3);
        vec3 f7 = (f6.xyz * 2.0) - vec3(1.0);
        vec4 f8 = texture(SpecularMapTexture, f3);
        vec3 f9 = CB0[11].xyz - VARYING2.xyz;
        float f10 = clamp(1.0 - (VARYING2.w * CB0[28].y), 0.0, 1.0);
        vec3 f11 = -CB0[16].xyz;
        float f12 = dot(f7, f11);
        vec3 f13 = normalize(f9);
        float f14 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
        float f15 = f8.x;
        vec3 f16 = mix(vec3(0.039999999105930328369140625), f5, vec3(f15));
        float f17 = CB0[31].w * f10;
        vec3 f18 = reflect(-f13, f7);
        vec3 f19 = VARYING2.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
        float f20 = clamp(dot(step(CB0[24].xyz, abs(VARYING1 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
        vec3 f21 = VARYING1.yzx - (VARYING1.yzx * f20);
        vec4 f22 = texture(LightMapTexture, f21);
        vec4 f23 = texture(LightGridSkylightTexture, f21);
        vec4 f24 = vec4(clamp(f20, 0.0, 1.0));
        vec4 f25 = mix(f22, vec4(0.0), f24);
        vec4 f26 = mix(f23, vec4(1.0), f24);
        vec3 f27 = f25.xyz * (f25.w * 120.0);
        float f28 = f26.x;
        float f29 = f26.y;
        vec3 f30 = f19 - CB0[46].xyz;
        vec3 f31 = f19 - CB0[47].xyz;
        vec3 f32 = f19 - CB0[48].xyz;
        vec4 f33 = vec4(f19, 1.0) * mat4(CB8[((dot(f30, f30) < CB0[46].w) ? 0 : ((dot(f31, f31) < CB0[47].w) ? 1 : ((dot(f32, f32) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f30, f30) < CB0[46].w) ? 0 : ((dot(f31, f31) < CB0[47].w) ? 1 : ((dot(f32, f32) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f30, f30) < CB0[46].w) ? 0 : ((dot(f31, f31) < CB0[47].w) ? 1 : ((dot(f32, f32) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f30, f30) < CB0[46].w) ? 0 : ((dot(f31, f31) < CB0[47].w) ? 1 : ((dot(f32, f32) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
        vec4 f34 = textureLod(ShadowAtlasTexture, f33.xy, 0.0);
        vec2 f35 = vec2(0.0);
        f35.x = CB0[51].z;
        vec2 f36 = f35;
        f36.y = CB0[51].w;
        float f37 = (2.0 * f33.z) - 1.0;
        float f38 = exp(CB0[51].z * f37);
        float f39 = -exp((-CB0[51].w) * f37);
        vec2 f40 = (f36 * CB0[52].y) * vec2(f38, f39);
        vec2 f41 = f40 * f40;
        float f42 = f34.x;
        float f43 = max(f34.y - (f42 * f42), f41.x);
        float f44 = f38 - f42;
        float f45 = f34.z;
        float f46 = max(f34.w - (f45 * f45), f41.y);
        float f47 = f39 - f45;
        float f48 = (f12 * CB0[14].w) * (((f12 * CB0[52].x) > 0.0) ? mix(min((f38 <= f42) ? 1.0 : clamp(((f43 / (f43 + (f44 * f44))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f39 <= f45) ? 1.0 : clamp(((f46 / (f46 + (f47 * f47))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f29, clamp((length(f19 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f29);
        vec3 f49;
        vec3 f50;
        if (f48 > 0.0)
        {
            vec3 f51 = normalize(f13 + f11);
            float f52 = clamp(f48, 0.0, 1.0);
            float f53 = f14 * f14;
            float f54 = max(0.001000000047497451305389404296875, dot(f7, f51));
            float f55 = dot(f11, f51);
            float f56 = 1.0 - f55;
            float f57 = f56 * f56;
            float f58 = (f57 * f57) * f56;
            vec3 f59 = vec3(f58) + (f16 * (1.0 - f58));
            float f60 = f53 * f53;
            float f61 = (((f54 * f60) - f54) * f54) + 1.0;
            float f62 = 1.0 - f15;
            f50 = f27 + (((vec3(f62) - (f59 * (f17 * f62))) * CB0[15].xyz) * f52);
            f49 = ((f59 * (((f60 + (f60 * f60)) / (((f61 * f61) * ((f55 * 3.0) + 0.5)) * ((f54 * 0.75) + 0.25))) * f52)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
        }
        else
        {
            f50 = f27;
            f49 = vec3(0.0);
        }
        float f63 = f14 * 5.0;
        vec3 f64 = vec4(f18, f63).xyz;
        vec3 f65 = textureLod(PrefilteredEnvIndoorTexture, f64, f63).xyz;
        vec3 f66;
        if (CB0[32].w == 0.0)
        {
            f66 = f65;
        }
        else
        {
            f66 = mix(f65, textureLod(PrefilteredEnvBlendTargetTexture, f64, f63).xyz, vec3(CB0[32].w));
        }
        vec4 f67 = texture(PrecomputedBRDFTexture, vec2(f14, max(9.9999997473787516355514526367188e-05, dot(f7, f13))));
        float f68 = f67.x;
        float f69 = f67.y;
        vec3 f70 = ((f16 * f68) + vec3(f69)) / vec3(f68 + f69);
        float f71 = 1.0 - f15;
        vec3 f72 = f7 * f7;
        bvec3 f73 = lessThan(f7, vec3(0.0));
        vec3 f74 = vec3(f73.x ? f72.x : vec3(0.0).x, f73.y ? f72.y : vec3(0.0).y, f73.z ? f72.z : vec3(0.0).z);
        vec3 f75 = f72 - f74;
        float f76 = f75.x;
        float f77 = f75.y;
        float f78 = f75.z;
        float f79 = f74.x;
        float f80 = f74.y;
        float f81 = f74.z;
        vec3 f82 = ((((f50 + (((vec3(f71) - (f70 * (f17 * f71))) * (((((((CB0[40].xyz * f76) + (CB0[42].xyz * f77)) + (CB0[44].xyz * f78)) + (CB0[41].xyz * f79)) + (CB0[43].xyz * f80)) + (CB0[45].xyz * f81)) + (((((((CB0[34].xyz * f76) + (CB0[36].xyz * f77)) + (CB0[38].xyz * f78)) + (CB0[35].xyz * f79)) + (CB0[37].xyz * f80)) + (CB0[39].xyz * f81)) * f28))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f28 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f8.z * 2.0) * f10)) * f5) + ((f49 * (f10 * VARYING0.w)) + ((mix(f66, textureLod(PrefilteredEnvTexture, f64, f63).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f18.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f28)) * f70) * f17));
        vec4 f83 = vec4(0.0);
        f83.x = f82.x;
        vec4 f84 = f83;
        f84.y = f82.y;
        vec4 f85 = f84;
        f85.z = f82.z;
        vec4 f86 = f85;
        f86.w = 1.0;
        float f87 = clamp(exp2((CB0[18].z * VARYING2.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
        vec3 f88 = textureLod(PrefilteredEnvTexture, vec4(-f9, 0.0).xyz, max(CB0[18].y, f87) * 5.0).xyz;
        bvec3 f89 = bvec3(!(CB0[18].w == 0.0));
        vec3 f90 = mix(vec3(f89.x ? CB0[19].xyz.x : f88.x, f89.y ? CB0[19].xyz.y : f88.y, f89.z ? CB0[19].xyz.z : f88.z), f86.xyz, vec3(f87));
        vec4 f91 = f86;
        f91.x = f90.x;
        vec4 f92 = f91;
        f92.y = f90.y;
        vec4 f93 = f92;
        f93.z = f90.z;
        vec3 f94 = sqrt(clamp(f93.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
        vec4 f95 = f93;
        f95.x = f94.x;
        vec4 f96 = f95;
        f96.y = f94.y;
        vec4 f97 = f96;
        f97.z = f94.z;
        f0 = f97;
        break;
    } while(false);
    _entryPointOutput = f0;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$TranslationMapTexture=s5
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s3
