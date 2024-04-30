#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
uniform vec4 CB0[57];
uniform vec4 CB4[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec4 f1 = f0 * VARYING1;
    vec3 f2 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f3 = -CB0[16].xyz;
    float f4 = dot(f2, f3);
    vec3 f5 = f1.xyz;
    vec3 f6 = f5 * f5;
    vec4 f7 = f1;
    f7.x = f6.x;
    vec4 f8 = f7;
    f8.y = f6.y;
    vec4 f9 = f8;
    f9.z = f6.z;
    float f10 = length(VARYING3.xyz);
    vec3 f11 = VARYING3.xyz / vec3(f10);
    float f12 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f13 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f14 = -f11;
    vec3 f15 = reflect(f14, f2);
    float f16 = VARYING5.w * f12;
    vec3 f17 = mix(vec3(0.039999999105930328369140625), f9.xyz, vec3(f16));
    vec3 f18 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f19 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING2.yzx - (VARYING2.yzx * f19);
    vec4 f21 = texture(LightMapTexture, f20);
    vec4 f22 = texture(LightGridSkylightTexture, f20);
    vec4 f23 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f24 = mix(f21, vec4(0.0), f23);
    vec4 f25 = mix(f22, vec4(1.0), f23);
    vec3 f26 = f24.xyz * (f24.w * 120.0);
    float f27 = f25.x;
    float f28 = f25.y;
    vec3 f29 = f18 - CB0[46].xyz;
    vec3 f30 = f18 - CB0[47].xyz;
    vec3 f31 = f18 - CB0[48].xyz;
    vec4 f32 = vec4(f18, 1.0) * mat4(CB4[((dot(f29, f29) < CB0[46].w) ? 0 : ((dot(f30, f30) < CB0[47].w) ? 1 : ((dot(f31, f31) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB4[((dot(f29, f29) < CB0[46].w) ? 0 : ((dot(f30, f30) < CB0[47].w) ? 1 : ((dot(f31, f31) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB4[((dot(f29, f29) < CB0[46].w) ? 0 : ((dot(f30, f30) < CB0[47].w) ? 1 : ((dot(f31, f31) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB4[((dot(f29, f29) < CB0[46].w) ? 0 : ((dot(f30, f30) < CB0[47].w) ? 1 : ((dot(f31, f31) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f33 = textureLod(ShadowAtlasTexture, f32.xy, 0.0);
    vec2 f34 = vec2(0.0);
    f34.x = CB0[51].z;
    vec2 f35 = f34;
    f35.y = CB0[51].w;
    float f36 = (2.0 * f32.z) - 1.0;
    float f37 = exp(CB0[51].z * f36);
    float f38 = -exp((-CB0[51].w) * f36);
    vec2 f39 = (f35 * CB0[52].y) * vec2(f37, f38);
    vec2 f40 = f39 * f39;
    float f41 = f33.x;
    float f42 = max(f33.y - (f41 * f41), f40.x);
    float f43 = f37 - f41;
    float f44 = f33.z;
    float f45 = max(f33.w - (f44 * f44), f40.y);
    float f46 = f38 - f44;
    float f47 = (f4 * CB0[14].w) * (((f4 * CB0[52].x) > 0.0) ? mix(min((f37 <= f41) ? 1.0 : clamp(((f42 / (f42 + (f43 * f43))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f38 <= f44) ? 1.0 : clamp(((f45 / (f45 + (f46 * f46))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f28, clamp((length(f18 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f28);
    vec3 f48;
    vec3 f49;
    if (f47 > 0.0)
    {
        vec3 f50 = normalize(f11 + f3);
        float f51 = clamp(f47, 0.0, 1.0);
        float f52 = f13 * f13;
        float f53 = max(0.001000000047497451305389404296875, dot(f2, f50));
        float f54 = dot(f3, f50);
        float f55 = 1.0 - f54;
        float f56 = f55 * f55;
        float f57 = (f56 * f56) * f55;
        vec3 f58 = vec3(f57) + (f17 * (1.0 - f57));
        float f59 = f52 * f52;
        float f60 = (((f53 * f59) - f53) * f53) + 1.0;
        float f61 = 1.0 - f16;
        f49 = f26 + (((vec3(f61) - (f58 * (f12 * f61))) * CB0[15].xyz) * f51);
        f48 = ((f58 * (((f59 + (f59 * f59)) / (((f60 * f60) * ((f54 * 3.0) + 0.5)) * ((f53 * 0.75) + 0.25))) * f51)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f49 = f26;
        f48 = vec3(0.0);
    }
    float f62 = f13 * 5.0;
    vec3 f63 = vec4(f15, f62).xyz;
    vec3 f64 = textureLod(PrefilteredEnvIndoorTexture, f63, f62).xyz;
    vec3 f65;
    if (CB0[32].w == 0.0)
    {
        f65 = f64;
    }
    else
    {
        f65 = mix(f64, textureLod(PrefilteredEnvBlendTargetTexture, f63, f62).xyz, vec3(CB0[32].w));
    }
    vec4 f66 = texture(PrecomputedBRDFTexture, vec2(f13, max(9.9999997473787516355514526367188e-05, dot(f2, f11))));
    float f67 = f66.x;
    float f68 = f66.y;
    vec3 f69 = ((f17 * f67) + vec3(f68)) / vec3(f67 + f68);
    float f70 = 1.0 - f16;
    vec3 f71 = f2 * f2;
    bvec3 f72 = lessThan(f2, vec3(0.0));
    vec3 f73 = vec3(f72.x ? f71.x : vec3(0.0).x, f72.y ? f71.y : vec3(0.0).y, f72.z ? f71.z : vec3(0.0).z);
    vec3 f74 = f71 - f73;
    float f75 = f74.x;
    float f76 = f74.y;
    float f77 = f74.z;
    float f78 = f73.x;
    float f79 = f73.y;
    float f80 = f73.z;
    vec3 f81 = (((f49 + (((vec3(f70) - (f69 * (f12 * f70))) * ((((((((CB0[40].xyz * f75) + (CB0[42].xyz * f76)) + (CB0[44].xyz * f77)) + (CB0[41].xyz * f78)) + (CB0[43].xyz * f79)) + (CB0[45].xyz * f80)) * CB0[30].w) + ((((((((CB0[34].xyz * f75) + (CB0[36].xyz * f76)) + (CB0[38].xyz * f77)) + (CB0[35].xyz * f78)) + (CB0[37].xyz * f79)) + (CB0[39].xyz * f80)) * CB0[30].w) * f27))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f27 * (2.0 - CB0[14].w)))) * 1.0)) * f9.xyz) + (f48 + ((mix(f65, textureLod(PrefilteredEnvTexture, f63, f62).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f15.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f27)) * f69) * f12));
    vec4 f82 = vec4(0.0);
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec4 f84 = f83;
    f84.z = f81.z;
    float f85 = f1.w;
    vec4 f86 = f84;
    f86.w = f85;
    float f87 = clamp(exp2((CB0[18].z * f10) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f88 = textureLod(PrefilteredEnvTexture, vec4(f14, 0.0).xyz, max(CB0[18].y, f87) * 5.0).xyz;
    bvec3 f89 = bvec3(!(CB0[18].w == 0.0));
    vec3 f90 = mix(vec3(f89.x ? CB0[19].xyz.x : f88.x, f89.y ? CB0[19].xyz.y : f88.y, f89.z ? CB0[19].xyz.z : f88.z), f86.xyz, vec3(f87));
    vec4 f91 = f86;
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec3 f94 = sqrt(clamp(f93.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f95 = f93;
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    vec4 f98 = f97;
    f98.w = f85;
    _entryPointOutput = f98;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
