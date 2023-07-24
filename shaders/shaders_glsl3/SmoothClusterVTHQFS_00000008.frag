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
in vec3 VARYING3;
in vec4 VARYING4;
in vec2 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (VARYING5 * vec2(0.03125)) + CB5[0].zw;
    vec4 f1 = texture(TranslationMapTexture, vec4(f0, 0.0, 6.5).xy, 6.5);
    vec3 f2;
    vec3 f3;
    vec3 f4;
    if (f1.w < 0.0)
    {
        f4 = vec3(0.0, 1.0, 0.0);
        f3 = VARYING4.xyz * VARYING4.xyz;
        f2 = VARYING3;
    }
    else
    {
        vec2 f5 = (f0 * f1.z) + f1.xy;
        f4 = texture(SpecularMapTexture, f5).xyz;
        f3 = texture(AlbedoMapTexture, f5).xyz;
        f2 = (texture(NormalMapTexture, f5).xyz * 2.0) - vec3(1.0);
    }
    vec3 f6 = CB0[11].xyz - VARYING2.xyz;
    float f7 = clamp(1.0 - (VARYING2.w * CB0[28].y), 0.0, 1.0);
    vec3 f8 = -CB0[16].xyz;
    float f9 = dot(f2, f8);
    vec3 f10 = normalize(f6);
    float f11 = 0.08900000154972076416015625 + (f4.y * 0.9110000133514404296875);
    vec3 f12 = mix(vec3(0.039999999105930328369140625), f3, vec3(f4.x));
    float f13 = CB0[31].w * f7;
    vec3 f14 = reflect(-f10, f2);
    vec3 f15 = VARYING2.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f16 = clamp(dot(step(CB0[24].xyz, abs(VARYING1 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING1.yzx - (VARYING1.yzx * f16);
    vec4 f18 = texture(LightMapTexture, f17);
    vec4 f19 = texture(LightGridSkylightTexture, f17);
    vec4 f20 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f21 = mix(f18, vec4(0.0), f20);
    vec4 f22 = mix(f19, vec4(1.0), f20);
    vec3 f23 = f21.xyz * (f21.w * 120.0);
    float f24 = f22.x;
    float f25 = f22.y;
    vec3 f26 = f15 - CB0[46].xyz;
    vec3 f27 = f15 - CB0[47].xyz;
    vec3 f28 = f15 - CB0[48].xyz;
    vec4 f29 = vec4(f15, 1.0) * mat4(CB8[((dot(f26, f26) < CB0[46].w) ? 0 : ((dot(f27, f27) < CB0[47].w) ? 1 : ((dot(f28, f28) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f26, f26) < CB0[46].w) ? 0 : ((dot(f27, f27) < CB0[47].w) ? 1 : ((dot(f28, f28) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f26, f26) < CB0[46].w) ? 0 : ((dot(f27, f27) < CB0[47].w) ? 1 : ((dot(f28, f28) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f26, f26) < CB0[46].w) ? 0 : ((dot(f27, f27) < CB0[47].w) ? 1 : ((dot(f28, f28) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f30 = textureLod(ShadowAtlasTexture, f29.xy, 0.0);
    vec2 f31 = vec2(0.0);
    f31.x = CB0[51].z;
    vec2 f32 = f31;
    f32.y = CB0[51].w;
    float f33 = (2.0 * f29.z) - 1.0;
    float f34 = exp(CB0[51].z * f33);
    float f35 = -exp((-CB0[51].w) * f33);
    vec2 f36 = (f32 * CB0[52].y) * vec2(f34, f35);
    vec2 f37 = f36 * f36;
    float f38 = f30.x;
    float f39 = max(f30.y - (f38 * f38), f37.x);
    float f40 = f34 - f38;
    float f41 = f30.z;
    float f42 = max(f30.w - (f41 * f41), f37.y);
    float f43 = f35 - f41;
    float f44 = (f9 * CB0[14].w) * (((f9 * CB0[52].x) > 0.0) ? mix(min((f34 <= f38) ? 1.0 : clamp(((f39 / (f39 + (f40 * f40))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f35 <= f41) ? 1.0 : clamp(((f42 / (f42 + (f43 * f43))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f25, clamp((length(f15 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f25);
    vec3 f45;
    vec3 f46;
    if (f44 > 0.0)
    {
        vec3 f47 = normalize(f10 + f8);
        float f48 = clamp(f44, 0.0, 1.0);
        float f49 = f11 * f11;
        float f50 = max(0.001000000047497451305389404296875, dot(f2, f47));
        float f51 = dot(f8, f47);
        float f52 = 1.0 - f51;
        float f53 = f52 * f52;
        float f54 = (f53 * f53) * f52;
        vec3 f55 = vec3(f54) + (f12 * (1.0 - f54));
        float f56 = f49 * f49;
        float f57 = (((f50 * f56) - f50) * f50) + 1.0;
        float f58 = 1.0 - f4.x;
        f46 = f23 + (((vec3(f58) - (f55 * (f13 * f58))) * CB0[15].xyz) * f48);
        f45 = ((f55 * (((f56 + (f56 * f56)) / (((f57 * f57) * ((f51 * 3.0) + 0.5)) * ((f50 * 0.75) + 0.25))) * f48)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f46 = f23;
        f45 = vec3(0.0);
    }
    float f59 = f11 * 5.0;
    vec3 f60 = vec4(f14, f59).xyz;
    vec3 f61 = textureLod(PrefilteredEnvIndoorTexture, f60, f59).xyz;
    vec3 f62;
    if (CB0[32].w == 0.0)
    {
        f62 = f61;
    }
    else
    {
        f62 = mix(f61, textureLod(PrefilteredEnvBlendTargetTexture, f60, f59).xyz, vec3(CB0[32].w));
    }
    vec4 f63 = texture(PrecomputedBRDFTexture, vec2(f11, max(9.9999997473787516355514526367188e-05, dot(f2, f10))));
    float f64 = f63.x;
    float f65 = f63.y;
    vec3 f66 = ((f12 * f64) + vec3(f65)) / vec3(f64 + f65);
    float f67 = 1.0 - f4.x;
    vec3 f68 = f2 * f2;
    bvec3 f69 = lessThan(f2, vec3(0.0));
    vec3 f70 = vec3(f69.x ? f68.x : vec3(0.0).x, f69.y ? f68.y : vec3(0.0).y, f69.z ? f68.z : vec3(0.0).z);
    vec3 f71 = f68 - f70;
    float f72 = f71.x;
    float f73 = f71.y;
    float f74 = f71.z;
    float f75 = f70.x;
    float f76 = f70.y;
    float f77 = f70.z;
    vec3 f78 = ((((f46 + (((vec3(f67) - (f66 * (f13 * f67))) * (((((((CB0[40].xyz * f72) + (CB0[42].xyz * f73)) + (CB0[44].xyz * f74)) + (CB0[41].xyz * f75)) + (CB0[43].xyz * f76)) + (CB0[45].xyz * f77)) + (((((((CB0[34].xyz * f72) + (CB0[36].xyz * f73)) + (CB0[38].xyz * f74)) + (CB0[35].xyz * f75)) + (CB0[37].xyz * f76)) + (CB0[39].xyz * f77)) * f24))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f24 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f4.z * 2.0) * f7)) * f3) + ((f45 * (f7 * VARYING0.w)) + ((mix(f62, textureLod(PrefilteredEnvTexture, f60, f59).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f14.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f24)) * f66) * f13));
    vec4 f79 = vec4(0.0);
    f79.x = f78.x;
    vec4 f80 = f79;
    f80.y = f78.y;
    vec4 f81 = f80;
    f81.z = f78.z;
    vec4 f82 = f81;
    f82.w = 1.0;
    float f83 = clamp(exp2((CB0[18].z * VARYING2.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f84 = textureLod(PrefilteredEnvTexture, vec4(-f6, 0.0).xyz, max(CB0[18].y, f83) * 5.0).xyz;
    bvec3 f85 = bvec3(!(CB0[18].w == 0.0));
    vec3 f86 = mix(vec3(f85.x ? CB0[19].xyz.x : f84.x, f85.y ? CB0[19].xyz.y : f84.y, f85.z ? CB0[19].xyz.z : f84.z), f82.xyz, vec3(f83));
    vec4 f87 = f82;
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec4 f89 = f88;
    f89.z = f86.z;
    vec3 f90 = sqrt(clamp(f89.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f91 = f89;
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    _entryPointOutput = f93;
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
