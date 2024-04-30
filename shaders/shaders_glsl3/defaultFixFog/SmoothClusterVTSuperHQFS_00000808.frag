#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
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
in vec4 VARYING1;
in vec3 VARYING2;
in vec4 VARYING3;
in vec2 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (VARYING4 * vec2(0.03125)) + CB5[0].zw;
    bool f1 = CB5[0].z < 0.0;
    vec4 f2;
    if (!f1)
    {
        f2 = texture(TranslationMapTexture, vec4(f0, 0.0, 6.5).xy, 6.5);
    }
    else
    {
        f2 = vec4(0.0);
    }
    vec3 f3;
    vec3 f4;
    vec3 f5;
    if (((f2.w < 0.0) || f1) || (VARYING0.w > 0.0))
    {
        f5 = vec3(0.0, 1.0, 0.0);
        f4 = VARYING3.xyz * VARYING3.xyz;
        f3 = VARYING2;
    }
    else
    {
        vec2 f6 = (f0 * f2.z) + f2.xy;
        f5 = texture(SpecularMapTexture, f6).xyz;
        f4 = texture(AlbedoMapTexture, f6).xyz;
        f3 = (texture(NormalMapTexture, f6).xyz * 2.0) - vec3(1.0);
    }
    vec3 f7 = CB0[11].xyz - VARYING1.xyz;
    float f8 = clamp(1.0 - (VARYING1.w * CB0[28].y), 0.0, 1.0);
    vec3 f9 = -CB0[16].xyz;
    float f10 = dot(f3, f9);
    vec3 f11 = normalize(f7);
    float f12 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    vec3 f13 = mix(vec3(0.039999999105930328369140625), f4, vec3(f5.x));
    float f14 = CB0[31].w * f8;
    vec3 f15 = reflect(-f11, f3);
    vec3 f16 = VARYING1.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f17 = clamp(dot(step(CB0[24].xyz, abs(VARYING0.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING0.yzx - (VARYING0.yzx * f17);
    vec4 f19 = texture(LightMapTexture, f18);
    vec4 f20 = texture(LightGridSkylightTexture, f18);
    vec4 f21 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f22 = mix(f19, vec4(0.0), f21);
    vec4 f23 = mix(f20, vec4(1.0), f21);
    vec3 f24 = f22.xyz * (f22.w * 120.0);
    float f25 = f23.x;
    float f26 = f23.y;
    vec3 f27 = f16 - CB0[46].xyz;
    vec3 f28 = f16 - CB0[47].xyz;
    vec3 f29 = f16 - CB0[48].xyz;
    vec4 f30 = vec4(f16, 1.0) * mat4(CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f31 = textureLod(ShadowAtlasTexture, f30.xy, 0.0);
    vec2 f32 = vec2(0.0);
    f32.x = CB0[51].z;
    vec2 f33 = f32;
    f33.y = CB0[51].w;
    float f34 = (2.0 * f30.z) - 1.0;
    float f35 = exp(CB0[51].z * f34);
    float f36 = -exp((-CB0[51].w) * f34);
    vec2 f37 = (f33 * CB0[52].y) * vec2(f35, f36);
    vec2 f38 = f37 * f37;
    float f39 = f31.x;
    float f40 = max(f31.y - (f39 * f39), f38.x);
    float f41 = f35 - f39;
    float f42 = f31.z;
    float f43 = max(f31.w - (f42 * f42), f38.y);
    float f44 = f36 - f42;
    float f45 = (f10 * CB0[14].w) * (((f10 * CB0[52].x) > 0.0) ? mix(min((f35 <= f39) ? 1.0 : clamp(((f40 / (f40 + (f41 * f41))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f36 <= f42) ? 1.0 : clamp(((f43 / (f43 + (f44 * f44))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f26, clamp((length(f16 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f26);
    vec3 f46;
    vec3 f47;
    if (f45 > 0.0)
    {
        vec3 f48 = normalize(f11 + f9);
        float f49 = clamp(f45, 0.0, 1.0);
        float f50 = f12 * f12;
        float f51 = max(0.001000000047497451305389404296875, dot(f3, f48));
        float f52 = dot(f9, f48);
        float f53 = 1.0 - f52;
        float f54 = f53 * f53;
        float f55 = (f54 * f54) * f53;
        vec3 f56 = vec3(f55) + (f13 * (1.0 - f55));
        float f57 = f50 * f50;
        float f58 = (((f51 * f57) - f51) * f51) + 1.0;
        float f59 = 1.0 - f5.x;
        f47 = f24 + (((vec3(f59) - (f56 * (f14 * f59))) * CB0[15].xyz) * f49);
        f46 = ((f56 * (((f57 + (f57 * f57)) / (((f58 * f58) * ((f52 * 3.0) + 0.5)) * ((f51 * 0.75) + 0.25))) * f49)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f47 = f24;
        f46 = vec3(0.0);
    }
    float f60 = f12 * 5.0;
    vec3 f61 = vec4(f15, f60).xyz;
    vec3 f62 = textureLod(PrefilteredEnvIndoorTexture, f61, f60).xyz;
    vec3 f63;
    if (CB0[32].w == 0.0)
    {
        f63 = f62;
    }
    else
    {
        f63 = mix(f62, textureLod(PrefilteredEnvBlendTargetTexture, f61, f60).xyz, vec3(CB0[32].w));
    }
    vec4 f64 = texture(PrecomputedBRDFTexture, vec2(f12, max(9.9999997473787516355514526367188e-05, dot(f3, f11))));
    float f65 = f64.x;
    float f66 = f64.y;
    vec3 f67 = ((f13 * f65) + vec3(f66)) / vec3(f65 + f66);
    float f68 = 1.0 - f5.x;
    vec3 f69 = f3 * f3;
    bvec3 f70 = lessThan(f3, vec3(0.0));
    vec3 f71 = vec3(f70.x ? f69.x : vec3(0.0).x, f70.y ? f69.y : vec3(0.0).y, f70.z ? f69.z : vec3(0.0).z);
    vec3 f72 = f69 - f71;
    float f73 = f72.x;
    float f74 = f72.y;
    float f75 = f72.z;
    float f76 = f71.x;
    float f77 = f71.y;
    float f78 = f71.z;
    vec3 f79 = ((((f47 + (((vec3(f68) - (f67 * (f14 * f68))) * ((((((((CB0[40].xyz * f73) + (CB0[42].xyz * f74)) + (CB0[44].xyz * f75)) + (CB0[41].xyz * f76)) + (CB0[43].xyz * f77)) + (CB0[45].xyz * f78)) * CB0[30].w) + ((((((((CB0[34].xyz * f73) + (CB0[36].xyz * f74)) + (CB0[38].xyz * f75)) + (CB0[35].xyz * f76)) + (CB0[37].xyz * f77)) + (CB0[39].xyz * f78)) * CB0[30].w) * f25))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f25 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f5.z * 2.0) * f8)) * f4) + ((f46 * f8) + ((mix(f63, textureLod(PrefilteredEnvTexture, f61, f60).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f15.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f25)) * f67) * f14));
    vec4 f80 = vec4(0.0);
    f80.x = f79.x;
    vec4 f81 = f80;
    f81.y = f79.y;
    vec4 f82 = f81;
    f82.z = f79.z;
    vec4 f83 = f82;
    f83.w = 1.0;
    float f84 = clamp(exp2((CB0[18].z * VARYING1.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f85 = textureLod(PrefilteredEnvTexture, vec4(-f7, 0.0).xyz, max(CB0[18].y, f84) * 5.0).xyz;
    bvec3 f86 = bvec3(!(CB0[18].w == 0.0));
    vec3 f87 = mix(vec3(f86.x ? CB0[19].xyz.x : f85.x, f86.y ? CB0[19].xyz.y : f85.y, f86.z ? CB0[19].xyz.z : f85.z), f83.xyz, vec3(f84));
    vec4 f88 = f83;
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec4 f90 = f89;
    f90.z = f87.z;
    _entryPointOutput = f90;
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
