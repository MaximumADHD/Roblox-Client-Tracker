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
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec4 f5 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f4 * VARYING0.z);
    vec4 f6 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f2).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f7 = f6.yz - vec2(0.5);
    float f8 = f7.x;
    float f9 = f7.y;
    float f10 = VARYING9.x * f6.x;
    float f11 = (VARYING9.y * f8) - (VARYING9.z * f9);
    float f12 = (VARYING9.z * f8) + (VARYING9.y * f9);
    float f13 = f10 - f12;
    vec3 f14 = vec4(vec3(f13, f10, f13) + (vec3(f11, f12, f11) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f15 = mix(f14, f14 * VARYING9.xyz, vec3(VARYING9.w));
    vec4 f16 = vec4(0.0);
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    float f19 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f20 = normalize(VARYING6);
    vec3 f21 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f22 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING4.yzx - (VARYING4.yzx * f22);
    vec4 f24 = texture(LightMapTexture, f23);
    vec4 f25 = texture(LightGridSkylightTexture, f23);
    vec4 f26 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f27 = mix(f24, vec4(0.0), f26);
    vec4 f28 = mix(f25, vec4(1.0), f26);
    float f29 = f28.x;
    vec4 f30 = texture(ShadowMapTexture, f21.xy);
    float f31 = f21.z;
    vec3 f32 = normalize(VARYING8);
    float f33 = f5.y;
    float f34 = CB0[26].w * f19;
    vec3 f35 = reflect(-f32, f20);
    vec3 f36 = -CB0[11].xyz;
    float f37 = (dot(f20, f36) * CB0[9].w) * ((1.0 - ((step(f30.x, f31) * clamp(CB0[24].z + (CB0[24].w * abs(f31 - 0.5)), 0.0, 1.0)) * f30.y)) * f28.y);
    vec3 f38 = normalize(f36 + f32);
    float f39 = clamp(f37, 0.0, 1.0);
    float f40 = f33 * f33;
    float f41 = max(0.001000000047497451305389404296875, dot(f20, f38));
    float f42 = dot(f36, f38);
    float f43 = 1.0 - f42;
    float f44 = f43 * f43;
    float f45 = (f44 * f44) * f43;
    vec3 f46 = vec3(f45) + (vec3(0.039999999105930328369140625) * (1.0 - f45));
    float f47 = f40 * f40;
    float f48 = (((f41 * f47) - f41) * f41) + 1.0;
    float f49 = f33 * 5.0;
    vec3 f50 = vec4(f35, f49).xyz;
    vec3 f51 = textureLod(PrefilteredEnvIndoorTexture, f50, f49).xyz;
    vec3 f52;
    if (CB0[27].w == 0.0)
    {
        f52 = f51;
    }
    else
    {
        f52 = mix(f51, textureLod(PrefilteredEnvBlendTargetTexture, f50, f49).xyz, vec3(CB0[27].w));
    }
    vec4 f53 = texture(PrecomputedBRDFTexture, vec2(f33, max(9.9999997473787516355514526367188e-05, dot(f20, f32))));
    float f54 = f53.x;
    float f55 = f53.y;
    vec3 f56 = ((vec3(0.039999999105930328369140625) * f54) + vec3(f55)) / vec3(f54 + f55);
    vec3 f57 = f20 * f20;
    bvec3 f58 = lessThan(f20, vec3(0.0));
    vec3 f59 = vec3(f58.x ? f57.x : vec3(0.0).x, f58.y ? f57.y : vec3(0.0).y, f58.z ? f57.z : vec3(0.0).z);
    vec3 f60 = f57 - f59;
    float f61 = f60.x;
    float f62 = f60.y;
    float f63 = f60.z;
    float f64 = f59.x;
    float f65 = f59.y;
    float f66 = f59.z;
    vec3 f67 = (((((((((vec3(1.0) - (f46 * f34)) * CB0[10].xyz) * f39) + (CB0[12].xyz * clamp(-f37, 0.0, 1.0))) + ((f27.xyz * (f27.w * 120.0)) * 1.0)) + ((vec3(1.0) - (f56 * f34)) * (((((((CB0[35].xyz * f61) + (CB0[37].xyz * f62)) + (CB0[39].xyz * f63)) + (CB0[36].xyz * f64)) + (CB0[38].xyz * f65)) + (CB0[40].xyz * f66)) + (((((((CB0[29].xyz * f61) + (CB0[31].xyz * f62)) + (CB0[33].xyz * f63)) + (CB0[30].xyz * f64)) + (CB0[32].xyz * f65)) + (CB0[34].xyz * f66)) * f29)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f29))) + vec3((f5.z * 2.0) * f19)) * (f18.xyz * f18.xyz)) + ((((((f46 * (((f47 + (f47 * f47)) / (((f48 * f48) * ((f42 * 3.0) + 0.5)) * ((f41 * 0.75) + 0.25))) * f39)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f19) * VARYING0.w) + ((mix(f52, textureLod(PrefilteredEnvTexture, f50, f49).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f35.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f29)) * f56) * f34));
    vec4 f68 = vec4(0.0);
    f68.x = f67.x;
    vec4 f69 = f68;
    f69.y = f67.y;
    vec4 f70 = f69;
    f70.z = f67.z;
    vec4 f71 = f70;
    f71.w = 1.0;
    float f72 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f73 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f72) * 5.0).xyz;
    bvec3 f74 = bvec3(!(CB0[13].w == 0.0));
    vec3 f75 = mix(vec3(f74.x ? CB0[14].xyz.x : f73.x, f74.y ? CB0[14].xyz.y : f73.y, f74.z ? CB0[14].xyz.z : f73.z), f71.xyz, vec3(f72));
    vec4 f76 = f71;
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    vec4 f78 = f77;
    f78.z = f75.z;
    vec3 f79 = sqrt(clamp(f78.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f80 = f78;
    f80.x = f79.x;
    vec4 f81 = f80;
    f81.y = f79.y;
    vec4 f82 = f81;
    f82.z = f79.z;
    _entryPointOutput = f82;
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
