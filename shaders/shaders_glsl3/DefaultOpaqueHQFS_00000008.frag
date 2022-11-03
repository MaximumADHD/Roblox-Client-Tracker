#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
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
    float f0 = length(VARYING3.xyz);
    vec3 f1 = VARYING3.xyz / vec3(f0);
    vec4 f2 = texture(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f3 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f4 = -CB0[16].xyz;
    float f5 = dot(f3, f4);
    vec3 f6 = f2.xyz;
    vec3 f7 = f6 * f6;
    vec4 f8 = f2;
    f8.x = f7.x;
    vec4 f9 = f8;
    f9.y = f7.y;
    vec4 f10 = f9;
    f10.z = f7.z;
    float f11 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f12 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f13 = -f1;
    vec3 f14 = reflect(f13, f3);
    float f15 = VARYING5.w * f11;
    vec3 f16 = mix(vec3(0.039999999105930328369140625), f10.xyz, vec3(f15));
    vec3 f17 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f18 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING2.yzx - (VARYING2.yzx * f18);
    vec4 f20 = texture(LightMapTexture, f19);
    vec4 f21 = texture(LightGridSkylightTexture, f19);
    vec4 f22 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f23 = mix(f20, vec4(0.0), f22);
    vec4 f24 = mix(f21, vec4(1.0), f22);
    vec3 f25 = f23.xyz * (f23.w * 120.0);
    float f26 = f24.x;
    float f27 = f24.y;
    vec3 f28 = f17 - CB0[46].xyz;
    vec3 f29 = f17 - CB0[47].xyz;
    vec3 f30 = f17 - CB0[48].xyz;
    vec4 f31 = vec4(f17, 1.0) * mat4(CB8[((dot(f28, f28) < CB0[46].w) ? 0 : ((dot(f29, f29) < CB0[47].w) ? 1 : ((dot(f30, f30) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f28, f28) < CB0[46].w) ? 0 : ((dot(f29, f29) < CB0[47].w) ? 1 : ((dot(f30, f30) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f28, f28) < CB0[46].w) ? 0 : ((dot(f29, f29) < CB0[47].w) ? 1 : ((dot(f30, f30) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f28, f28) < CB0[46].w) ? 0 : ((dot(f29, f29) < CB0[47].w) ? 1 : ((dot(f30, f30) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f32 = textureLod(ShadowAtlasTexture, f31.xy, 0.0);
    vec2 f33 = vec2(0.0);
    f33.x = CB0[51].z;
    vec2 f34 = f33;
    f34.y = CB0[51].w;
    float f35 = (2.0 * f31.z) - 1.0;
    float f36 = exp(CB0[51].z * f35);
    float f37 = -exp((-CB0[51].w) * f35);
    vec2 f38 = (f34 * CB0[52].y) * vec2(f36, f37);
    vec2 f39 = f38 * f38;
    float f40 = f32.x;
    float f41 = max(f32.y - (f40 * f40), f39.x);
    float f42 = f36 - f40;
    float f43 = f32.z;
    float f44 = max(f32.w - (f43 * f43), f39.y);
    float f45 = f37 - f43;
    float f46 = (f5 * CB0[14].w) * (((f5 * CB0[52].x) > 0.0) ? mix(min((f36 <= f40) ? 1.0 : clamp(((f41 / (f41 + (f42 * f42))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f37 <= f43) ? 1.0 : clamp(((f44 / (f44 + (f45 * f45))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f27, clamp((length(f17 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f27);
    vec3 f47;
    vec3 f48;
    if (f46 > 0.0)
    {
        vec3 f49 = normalize(f1 - CB0[16].xyz);
        float f50 = clamp(f46, 0.0, 1.0);
        float f51 = f12 * f12;
        float f52 = max(0.001000000047497451305389404296875, dot(f3, f49));
        float f53 = dot(f4, f49);
        float f54 = 1.0 - f53;
        float f55 = f54 * f54;
        float f56 = (f55 * f55) * f54;
        vec3 f57 = vec3(f56) + (f16 * (1.0 - f56));
        float f58 = f51 * f51;
        float f59 = (((f52 * f58) - f52) * f52) + 1.0;
        float f60 = 1.0 - f15;
        f48 = f25 + (((vec3(f60) - (f57 * (f11 * f60))) * CB0[15].xyz) * f50);
        f47 = ((f57 * (((f58 + (f58 * f58)) / max(((f59 * f59) * ((f53 * 3.0) + 0.5)) * ((f52 * 0.75) + 0.25), 7.0000001869630068540573120117188e-05)) * f50)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f48 = f25;
        f47 = vec3(0.0);
    }
    float f61 = f12 * 5.0;
    vec3 f62 = vec4(f14, f61).xyz;
    vec3 f63 = textureLod(PrefilteredEnvIndoorTexture, f62, f61).xyz;
    vec3 f64;
    if (CB0[32].w == 0.0)
    {
        f64 = f63;
    }
    else
    {
        f64 = mix(f63, textureLod(PrefilteredEnvBlendTargetTexture, f62, f61).xyz, vec3(CB0[32].w));
    }
    vec4 f65 = texture(PrecomputedBRDFTexture, vec2(f12, max(9.9999997473787516355514526367188e-05, dot(f3, f1))));
    float f66 = f65.x;
    float f67 = f65.y;
    vec3 f68 = ((f16 * f66) + vec3(f67)) / vec3(f66 + f67);
    float f69 = 1.0 - f15;
    vec3 f70 = f3 * f3;
    bvec3 f71 = lessThan(f3, vec3(0.0));
    vec3 f72 = vec3(f71.x ? f70.x : vec3(0.0).x, f71.y ? f70.y : vec3(0.0).y, f71.z ? f70.z : vec3(0.0).z);
    vec3 f73 = f70 - f72;
    float f74 = f73.x;
    float f75 = f73.y;
    float f76 = f73.z;
    float f77 = f72.x;
    float f78 = f72.y;
    float f79 = f72.z;
    vec3 f80 = (((f48 + (((vec3(f69) - (f68 * (f11 * f69))) * (((((((CB0[40].xyz * f74) + (CB0[42].xyz * f75)) + (CB0[44].xyz * f76)) + (CB0[41].xyz * f77)) + (CB0[43].xyz * f78)) + (CB0[45].xyz * f79)) + (((((((CB0[34].xyz * f74) + (CB0[36].xyz * f75)) + (CB0[38].xyz * f76)) + (CB0[35].xyz * f77)) + (CB0[37].xyz * f78)) + (CB0[39].xyz * f79)) * f26))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f26 * (2.0 - CB0[14].w)))) * 1.0)) * f10.xyz) + (f47 + ((mix(f64, textureLod(PrefilteredEnvTexture, f62, f61).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f14.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f26)) * f68) * f11));
    vec4 f81 = vec4(0.0);
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    vec4 f84 = f83;
    f84.w = 1.0;
    float f85 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f86 = textureLod(PrefilteredEnvTexture, vec4(f13, 0.0).xyz, max(CB0[18].y, f85) * 5.0).xyz;
    bvec3 f87 = bvec3(!(CB0[18].w == 0.0));
    vec3 f88 = mix(vec3(f87.x ? CB0[19].xyz.x : f86.x, f87.y ? CB0[19].xyz.y : f86.y, f87.z ? CB0[19].xyz.z : f86.z), f84.xyz, vec3(f85));
    vec4 f89 = f84;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    vec3 f92 = sqrt(clamp(f91.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f93 = f91;
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    vec4 f96 = f95;
    f96.w = 1.0;
    _entryPointOutput = f96;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
