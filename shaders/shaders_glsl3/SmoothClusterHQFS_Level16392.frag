#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec4 f5 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f4 * VARYING0.z);
    vec4 f6 = texture(AlbedoMapTexture, f0);
    vec4 f7 = texture(AlbedoMapTexture, f2);
    vec4 f8 = texture(AlbedoMapTexture, VARYING3.xyz);
    vec4 f9 = ((f6.yxzw * VARYING0.x) + (f7.yxzw * VARYING0.y)) + (f8.yxzw * VARYING0.z);
    vec2 f10 = f9.yz - vec2(0.5);
    float f11 = f9.x;
    float f12 = f11 - f10.y;
    vec3 f13 = vec4(vec3(f12, f11, f12) + (vec3(f10.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f14 = CB0[7].xyz - VARYING5.xyz;
    float f15 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f16 = normalize(VARYING6);
    vec3 f17 = -CB0[11].xyz;
    float f18 = dot(f16, f17);
    vec3 f19 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f20 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING4.yzx - (VARYING4.yzx * f20);
    vec4 f22 = texture(LightMapTexture, f21);
    vec4 f23 = texture(LightGridSkylightTexture, f21);
    vec4 f24 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f25 = mix(f22, vec4(0.0), f24);
    vec4 f26 = mix(f23, vec4(1.0), f24);
    float f27 = f26.x;
    float f28 = f26.y;
    vec3 f29 = f19 - CB0[41].xyz;
    vec3 f30 = f19 - CB0[42].xyz;
    vec3 f31 = f19 - CB0[43].xyz;
    vec4 f32 = vec4(f19, 1.0) * mat4(CB8[((dot(f29, f29) < CB0[41].w) ? 0 : ((dot(f30, f30) < CB0[42].w) ? 1 : ((dot(f31, f31) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f29, f29) < CB0[41].w) ? 0 : ((dot(f30, f30) < CB0[42].w) ? 1 : ((dot(f31, f31) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f29, f29) < CB0[41].w) ? 0 : ((dot(f30, f30) < CB0[42].w) ? 1 : ((dot(f31, f31) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f29, f29) < CB0[41].w) ? 0 : ((dot(f30, f30) < CB0[42].w) ? 1 : ((dot(f31, f31) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f33 = textureLod(ShadowAtlasTexture, f32.xy, 0.0);
    vec2 f34 = vec2(0.0);
    f34.x = CB0[46].z;
    vec2 f35 = f34;
    f35.y = CB0[46].w;
    float f36 = (2.0 * f32.z) - 1.0;
    float f37 = exp(CB0[46].z * f36);
    float f38 = -exp((-CB0[46].w) * f36);
    vec2 f39 = (f35 * CB0[47].y) * vec2(f37, f38);
    vec2 f40 = f39 * f39;
    float f41 = f33.x;
    float f42 = max(f33.y - (f41 * f41), f40.x);
    float f43 = f37 - f41;
    float f44 = f33.z;
    float f45 = max(f33.w - (f44 * f44), f40.y);
    float f46 = f38 - f44;
    vec3 f47 = normalize(f14);
    vec3 f48 = (f13 * f13).xyz;
    float f49 = f5.y;
    float f50 = f5.x;
    vec3 f51 = mix(vec3(0.039999999105930328369140625), f48, vec3(f50));
    float f52 = CB0[26].w * f15;
    vec3 f53 = reflect(-f47, f16);
    vec3 f54 = normalize(f17 + f47);
    float f55 = clamp(f18 * (((f18 * CB0[47].x) > 0.0) ? mix(min((f37 <= f41) ? 1.0 : clamp(((f42 / (f42 + (f43 * f43))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f38 <= f44) ? 1.0 : clamp(((f45 / (f45 + (f46 * f46))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f28, clamp((length(f19 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f28), 0.0, 1.0);
    float f56 = f49 * f49;
    float f57 = max(0.001000000047497451305389404296875, dot(f16, f54));
    float f58 = dot(f17, f54);
    float f59 = 1.0 - f58;
    float f60 = f59 * f59;
    float f61 = (f60 * f60) * f59;
    vec3 f62 = vec3(f61) + (f51 * (1.0 - f61));
    float f63 = f56 * f56;
    float f64 = (((f57 * f63) - f57) * f57) + 1.0;
    float f65 = 1.0 - f50;
    float f66 = f52 * f65;
    vec3 f67 = vec3(f65);
    float f68 = f49 * 5.0;
    vec3 f69 = vec4(f53, f68).xyz;
    vec3 f70 = textureLod(PrefilteredEnvIndoorTexture, f69, f68).xyz;
    vec3 f71;
    if (CB0[27].w == 0.0)
    {
        f71 = f70;
    }
    else
    {
        f71 = mix(f70, textureLod(PrefilteredEnvBlendTargetTexture, f69, f68).xyz, vec3(CB0[27].w));
    }
    vec4 f72 = texture(PrecomputedBRDFTexture, vec2(f49, max(9.9999997473787516355514526367188e-05, dot(f16, f47))));
    float f73 = f72.x;
    float f74 = f72.y;
    vec3 f75 = ((f51 * f73) + vec3(f74)) / vec3(f73 + f74);
    vec3 f76 = f16 * f16;
    bvec3 f77 = lessThan(f16, vec3(0.0));
    vec3 f78 = vec3(f77.x ? f76.x : vec3(0.0).x, f77.y ? f76.y : vec3(0.0).y, f77.z ? f76.z : vec3(0.0).z);
    vec3 f79 = f76 - f78;
    float f80 = f79.x;
    float f81 = f79.y;
    float f82 = f79.z;
    float f83 = f78.x;
    float f84 = f78.y;
    float f85 = f78.z;
    vec3 f86 = ((((((((f67 - (f62 * f66)) * CB0[10].xyz) * f55) + ((f25.xyz * (f25.w * 120.0)).xyz * 1.0)) + ((f67 - (f75 * f66)) * (((((((CB0[35].xyz * f80) + (CB0[37].xyz * f81)) + (CB0[39].xyz * f82)) + (CB0[36].xyz * f83)) + (CB0[38].xyz * f84)) + (CB0[40].xyz * f85)) + (((((((CB0[29].xyz * f80) + (CB0[31].xyz * f81)) + (CB0[33].xyz * f82)) + (CB0[30].xyz * f83)) + (CB0[32].xyz * f84)) + (CB0[34].xyz * f85)) * f27)))) + (CB0[27].xyz + (CB0[28].xyz * f27))) + vec3((f5.z * 2.0) * f15)) * f48) + (((((f62 * (((f63 + (f63 * f63)) / (((f64 * f64) * ((f58 * 3.0) + 0.5)) * ((f57 * 0.75) + 0.25))) * f55)) * CB0[10].xyz) * f15) * VARYING0.w) + ((mix(f71, textureLod(PrefilteredEnvTexture, f69, f68).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f53.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f27)) * f75) * f52));
    vec4 f87 = vec4(f86.x, f86.y, f86.z, vec4(0.0).w);
    f87.w = 1.0;
    float f88 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f89 = textureLod(PrefilteredEnvTexture, vec4(-f14, 0.0).xyz, max(CB0[13].y, f88) * 5.0).xyz;
    bvec3 f90 = bvec3(!(CB0[13].w == 0.0));
    vec3 f91 = sqrt(clamp(mix(vec3(f90.x ? CB0[14].xyz.x : f89.x, f90.y ? CB0[14].xyz.y : f89.y, f90.z ? CB0[14].xyz.z : f89.z), f87.xyz, vec3(f88)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f91.x, f91.y, f91.z, f87.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
