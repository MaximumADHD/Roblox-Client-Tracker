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
    vec4 f8 = texture(AlbedoMapTexture, f0);
    vec4 f9 = texture(AlbedoMapTexture, f2);
    vec4 f10 = texture(AlbedoMapTexture, f4);
    vec4 f11 = ((f8.yxzw * VARYING0.x) + (f9.yxzw * VARYING0.y)) + (f10.yxzw * VARYING0.z);
    vec2 f12 = f11.yz - vec2(0.5);
    float f13 = f11.x;
    float f14 = f13 - f12.y;
    vec3 f15 = vec4(vec3(f14, f13, f14) + (vec3(f12.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f16 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f17 = normalize(VARYING8);
    float f18 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f19 = CB0[31].w * f16;
    vec3 f20 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f21 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING4.yzx - (VARYING4.yzx * f21);
    vec4 f23 = texture(LightMapTexture, f22);
    vec4 f24 = texture(LightGridSkylightTexture, f22);
    vec4 f25 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f26 = mix(f23, vec4(0.0), f25);
    vec4 f27 = mix(f24, vec4(1.0), f25);
    float f28 = f27.x;
    vec4 f29 = texture(ShadowMapTexture, f20.xy);
    float f30 = f20.z;
    vec3 f31 = reflect(-f17, f7);
    float f32 = f18 * 5.0;
    vec3 f33 = vec4(f31, f32).xyz;
    vec3 f34 = textureLod(PrefilteredEnvIndoorTexture, f33, f32).xyz;
    vec3 f35;
    if (CB0[32].w == 0.0)
    {
        f35 = f34;
    }
    else
    {
        f35 = mix(f34, textureLod(PrefilteredEnvBlendTargetTexture, f33, f32).xyz, vec3(CB0[32].w));
    }
    vec4 f36 = texture(PrecomputedBRDFTexture, vec2(f18, max(9.9999997473787516355514526367188e-05, dot(f7, f17))));
    float f37 = f36.x;
    float f38 = f36.y;
    vec3 f39 = ((vec3(0.039999999105930328369140625) * f37) + vec3(f38)) / vec3(f37 + f38);
    vec3 f40 = f7 * f7;
    bvec3 f41 = lessThan(f7, vec3(0.0));
    vec3 f42 = vec3(f41.x ? f40.x : vec3(0.0).x, f41.y ? f40.y : vec3(0.0).y, f41.z ? f40.z : vec3(0.0).z);
    vec3 f43 = f40 - f42;
    float f44 = f43.x;
    float f45 = f43.y;
    float f46 = f43.z;
    float f47 = f42.x;
    float f48 = f42.y;
    float f49 = f42.z;
    vec3 f50 = -CB0[16].xyz;
    float f51 = dot(f7, f50) * ((1.0 - ((step(f29.x, f30) * clamp(CB0[29].z + (CB0[29].w * abs(f30 - 0.5)), 0.0, 1.0)) * f29.y)) * f27.y);
    vec3 f52 = normalize(f17 + f50);
    float f53 = clamp(f51, 0.0, 1.0);
    float f54 = f18 * f18;
    float f55 = max(0.001000000047497451305389404296875, dot(f7, f52));
    float f56 = dot(f50, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (vec3(0.039999999105930328369140625) * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    vec3 f63 = (((((vec3((f6.z * 2.0) * f16) + (((vec3(1.0) - (f39 * f19)) * ((((((((CB0[40].xyz * f44) + (CB0[42].xyz * f45)) + (CB0[44].xyz * f46)) + (CB0[41].xyz * f47)) + (CB0[43].xyz * f48)) + (CB0[45].xyz * f49)) * CB0[30].w) + ((((((((CB0[34].xyz * f44) + (CB0[36].xyz * f45)) + (CB0[38].xyz * f46)) + (CB0[35].xyz * f47)) + (CB0[37].xyz * f48)) + (CB0[39].xyz * f49)) * CB0[30].w) * f28))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f28)) * 1.0)) + ((((vec3(1.0) - (f60 * f19)) * CB0[15].xyz) * f53) + (CB0[17].xyz * clamp(-f51, 0.0, 1.0)))) + (f26.xyz * (f26.w * 120.0))) * (f15 * f15)) + (((mix(f35, textureLod(PrefilteredEnvTexture, f33, f32).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f31.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f28)) * f39) * f19) + (((f60 * (((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25))) * f53)) * CB0[15].xyz) * (f16 * VARYING0.w)));
    vec4 f64 = vec4(0.0);
    f64.x = f63.x;
    vec4 f65 = f64;
    f65.y = f63.y;
    vec4 f66 = f65;
    f66.z = f63.z;
    vec4 f67 = f66;
    f67.w = 1.0;
    float f68 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f69 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[18].y, f68) * 5.0).xyz;
    bvec3 f70 = bvec3(!(CB0[18].w == 0.0));
    vec3 f71 = mix(vec3(f70.x ? CB0[19].xyz.x : f69.x, f70.y ? CB0[19].xyz.y : f69.y, f70.z ? CB0[19].xyz.z : f69.z), f67.xyz, vec3(f68));
    vec4 f72 = f67;
    f72.x = f71.x;
    vec4 f73 = f72;
    f73.y = f71.y;
    vec4 f74 = f73;
    f74.z = f71.z;
    vec3 f75 = sqrt(clamp(f74.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f76 = f74;
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    vec4 f78 = f77;
    f78.z = f75.z;
    _entryPointOutput = f78;
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
