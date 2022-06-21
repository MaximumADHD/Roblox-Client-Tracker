#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D ShadowMapTexture;
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
in vec3 VARYING8;
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
    float f14 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f15 = normalize(VARYING6);
    vec3 f16 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING4.yzx - (VARYING4.yzx * f17);
    vec4 f19 = texture(LightMapTexture, f18);
    vec4 f20 = texture(LightGridSkylightTexture, f18);
    vec4 f21 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f22 = mix(f19, vec4(0.0), f21);
    vec4 f23 = mix(f20, vec4(1.0), f21);
    float f24 = f23.x;
    vec4 f25 = texture(ShadowMapTexture, f16.xy);
    float f26 = f16.z;
    vec3 f27 = normalize(VARYING8);
    float f28 = f5.y;
    float f29 = CB0[26].w * f14;
    vec3 f30 = reflect(-f27, f15);
    vec3 f31 = -CB0[11].xyz;
    float f32 = (dot(f15, f31) * CB0[9].w) * ((1.0 - ((step(f25.x, f26) * clamp(CB0[24].z + (CB0[24].w * abs(f26 - 0.5)), 0.0, 1.0)) * f25.y)) * f23.y);
    vec3 f33 = normalize(f27 - CB0[11].xyz);
    float f34 = clamp(f32, 0.0, 1.0);
    float f35 = f28 * f28;
    float f36 = max(0.001000000047497451305389404296875, dot(f15, f33));
    float f37 = dot(f31, f33);
    float f38 = 1.0 - f37;
    float f39 = f38 * f38;
    float f40 = (f39 * f39) * f38;
    vec3 f41 = vec3(f40) + (vec3(0.039999999105930328369140625) * (1.0 - f40));
    float f42 = f35 * f35;
    float f43 = (((f36 * f42) - f36) * f36) + 1.0;
    float f44 = f28 * 5.0;
    vec3 f45 = vec4(f30, f44).xyz;
    vec3 f46 = textureLod(PrefilteredEnvIndoorTexture, f45, f44).xyz;
    vec3 f47;
    if (CB0[27].w == 0.0)
    {
        f47 = f46;
    }
    else
    {
        f47 = mix(f46, textureLod(PrefilteredEnvBlendTargetTexture, f45, f44).xyz, vec3(CB0[27].w));
    }
    vec4 f48 = texture(PrecomputedBRDFTexture, vec2(f28, max(9.9999997473787516355514526367188e-05, dot(f15, f27))));
    float f49 = f48.x;
    float f50 = f48.y;
    vec3 f51 = ((vec3(0.039999999105930328369140625) * f49) + vec3(f50)) / vec3(f49 + f50);
    vec3 f52 = f15 * f15;
    bvec3 f53 = lessThan(f15, vec3(0.0));
    vec3 f54 = vec3(f53.x ? f52.x : vec3(0.0).x, f53.y ? f52.y : vec3(0.0).y, f53.z ? f52.z : vec3(0.0).z);
    vec3 f55 = f52 - f54;
    float f56 = f55.x;
    float f57 = f55.y;
    float f58 = f55.z;
    float f59 = f54.x;
    float f60 = f54.y;
    float f61 = f54.z;
    vec3 f62 = (((((((((vec3(1.0) - (f41 * f29)) * CB0[10].xyz) * f34) + (CB0[12].xyz * clamp(-f32, 0.0, 1.0))) + ((f22.xyz * (f22.w * 120.0)) * 1.0)) + ((vec3(1.0) - (f51 * f29)) * (((((((CB0[35].xyz * f56) + (CB0[37].xyz * f57)) + (CB0[39].xyz * f58)) + (CB0[36].xyz * f59)) + (CB0[38].xyz * f60)) + (CB0[40].xyz * f61)) + (((((((CB0[29].xyz * f56) + (CB0[31].xyz * f57)) + (CB0[33].xyz * f58)) + (CB0[30].xyz * f59)) + (CB0[32].xyz * f60)) + (CB0[34].xyz * f61)) * f24)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f24))) + vec3((f5.z * 2.0) * f14)) * (f13 * f13)) + ((((((f41 * (((f42 + (f42 * f42)) / (((f43 * f43) * ((f37 * 3.0) + 0.5)) * ((f36 * 0.75) + 0.25))) * f34)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f14) * VARYING0.w) + ((mix(f47, textureLod(PrefilteredEnvTexture, f45, f44).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f24)) * f51) * f29));
    vec4 f63 = vec4(0.0);
    f63.x = f62.x;
    vec4 f64 = f63;
    f64.y = f62.y;
    vec4 f65 = f64;
    f65.z = f62.z;
    vec4 f66 = f65;
    f66.w = 1.0;
    float f67 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f68 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f67) * 5.0).xyz;
    bvec3 f69 = bvec3(!(CB0[13].w == 0.0));
    vec3 f70 = mix(vec3(f69.x ? CB0[14].xyz.x : f68.x, f69.y ? CB0[14].xyz.y : f68.y, f69.z ? CB0[14].xyz.z : f68.z), f66.xyz, vec3(f67));
    vec4 f71 = f66;
    f71.x = f70.x;
    vec4 f72 = f71;
    f72.y = f70.y;
    vec4 f73 = f72;
    f73.z = f70.z;
    vec3 f74 = sqrt(clamp(f73.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f75 = f73;
    f75.x = f74.x;
    vec4 f76 = f75;
    f76.y = f74.y;
    vec4 f77 = f76;
    f77.z = f74.z;
    _entryPointOutput = f77;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
