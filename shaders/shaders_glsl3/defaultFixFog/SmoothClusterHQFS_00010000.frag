#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
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
    vec3 f4 = vec3(VARYING3.xyz);
    vec4 f5 = texture(SpecularMapTexture, f4);
    vec4 f6 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f5 * VARYING0.z);
    vec3 f7 = normalize(VARYING6);
    vec4 f8 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f2).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, f4).yxzw * VARYING0.z);
    vec2 f9 = f8.yz - vec2(0.5);
    float f10 = f9.x;
    float f11 = f9.y;
    float f12 = VARYING9.x * f8.x;
    float f13 = (VARYING9.y * f10) - (VARYING9.z * f11);
    float f14 = (VARYING9.z * f10) + (VARYING9.y * f11);
    float f15 = f12 - f14;
    float f16 = f8.w;
    vec3 f17 = vec4(vec3(f15, f12, f15) + (vec3(f13, f14, f13) * vec3(1.0, 1.0, -1.0)), f16).xyz;
    vec3 f18 = mix(f17, f17 * VARYING9.xyz, vec3(VARYING9.w * f16));
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f23 = normalize(VARYING8);
    float f24 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f25 = CB0[31].w * f22;
    vec3 f26 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f27 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING4.yzx - (VARYING4.yzx * f27);
    vec4 f29 = texture(LightMapTexture, f28);
    vec4 f30 = texture(LightGridSkylightTexture, f28);
    vec4 f31 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f32 = mix(f29, vec4(0.0), f31);
    vec4 f33 = mix(f30, vec4(1.0), f31);
    float f34 = f33.x;
    vec4 f35 = texture(ShadowMapTexture, f26.xy);
    float f36 = f26.z;
    vec3 f37 = reflect(-f23, f7);
    float f38 = f24 * 5.0;
    vec3 f39 = vec4(f37, f38).xyz;
    vec3 f40 = textureLod(PrefilteredEnvIndoorTexture, f39, f38).xyz;
    vec3 f41;
    if (CB0[32].w == 0.0)
    {
        f41 = f40;
    }
    else
    {
        f41 = mix(f40, textureLod(PrefilteredEnvBlendTargetTexture, f39, f38).xyz, vec3(CB0[32].w));
    }
    vec4 f42 = texture(PrecomputedBRDFTexture, vec2(f24, max(9.9999997473787516355514526367188e-05, dot(f7, f23))));
    float f43 = f42.x;
    float f44 = f42.y;
    vec3 f45 = ((vec3(0.039999999105930328369140625) * f43) + vec3(f44)) / vec3(f43 + f44);
    vec3 f46 = f7 * f7;
    bvec3 f47 = lessThan(f7, vec3(0.0));
    vec3 f48 = vec3(f47.x ? f46.x : vec3(0.0).x, f47.y ? f46.y : vec3(0.0).y, f47.z ? f46.z : vec3(0.0).z);
    vec3 f49 = f46 - f48;
    float f50 = f49.x;
    float f51 = f49.y;
    float f52 = f49.z;
    float f53 = f48.x;
    float f54 = f48.y;
    float f55 = f48.z;
    vec3 f56 = -CB0[16].xyz;
    float f57 = dot(f7, f56) * ((1.0 - ((step(f35.x, f36) * clamp(CB0[29].z + (CB0[29].w * abs(f36 - 0.5)), 0.0, 1.0)) * f35.y)) * f33.y);
    vec3 f58 = normalize(f23 + f56);
    float f59 = clamp(f57, 0.0, 1.0);
    float f60 = f24 * f24;
    float f61 = max(0.001000000047497451305389404296875, dot(f7, f58));
    float f62 = dot(f56, f58);
    float f63 = 1.0 - f62;
    float f64 = f63 * f63;
    float f65 = (f64 * f64) * f63;
    vec3 f66 = vec3(f65) + (vec3(0.039999999105930328369140625) * (1.0 - f65));
    float f67 = f60 * f60;
    float f68 = (((f61 * f67) - f61) * f61) + 1.0;
    vec3 f69 = (((((vec3((f6.z * 2.0) * f22) + (((vec3(1.0) - (f45 * f25)) * ((((((((CB0[40].xyz * f50) + (CB0[42].xyz * f51)) + (CB0[44].xyz * f52)) + (CB0[41].xyz * f53)) + (CB0[43].xyz * f54)) + (CB0[45].xyz * f55)) * CB0[30].w) + ((((((((CB0[34].xyz * f50) + (CB0[36].xyz * f51)) + (CB0[38].xyz * f52)) + (CB0[35].xyz * f53)) + (CB0[37].xyz * f54)) + (CB0[39].xyz * f55)) * CB0[30].w) * f34))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f34)) * 1.0)) + ((((vec3(1.0) - (f66 * f25)) * CB0[15].xyz) * f59) + (CB0[17].xyz * clamp(-f57, 0.0, 1.0)))) + (f32.xyz * (f32.w * 120.0))) * (f21.xyz * f21.xyz)) + (((mix(f41, textureLod(PrefilteredEnvTexture, f39, f38).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f37.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f34)) * f45) * f25) + (((f66 * (((f67 + (f67 * f67)) / (((f68 * f68) * ((f62 * 3.0) + 0.5)) * ((f61 * 0.75) + 0.25))) * f59)) * CB0[15].xyz) * (f22 * VARYING0.w)));
    vec4 f70 = vec4(0.0);
    f70.x = f69.x;
    vec4 f71 = f70;
    f71.y = f69.y;
    vec4 f72 = f71;
    f72.z = f69.z;
    vec4 f73 = f72;
    f73.w = 1.0;
    float f74 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f75 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[18].y, f74) * 5.0).xyz;
    bvec3 f76 = bvec3(!(CB0[18].w == 0.0));
    vec3 f77 = mix(vec3(f76.x ? CB0[19].xyz.x : f75.x, f76.y ? CB0[19].xyz.y : f75.y, f76.z ? CB0[19].xyz.z : f75.z), f73.xyz, vec3(f74));
    vec4 f78 = f73;
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec3 f81 = sqrt(clamp(f80.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f82 = f80;
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec4 f84 = f83;
    f84.z = f81.z;
    _entryPointOutput = f84;
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
