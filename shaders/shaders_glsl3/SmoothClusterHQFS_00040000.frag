#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB4[63];
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
in vec3 VARYING9;
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
    vec3 f11 = (((mix(vec3(1.0), CB4[int(VARYING9.x + 0.5) * 1 + 0].xyz, vec3(f8.w)) * f8.xyz) * VARYING0.x) + ((mix(vec3(1.0), CB4[int(VARYING9.y + 0.5) * 1 + 0].xyz, vec3(f9.w)) * f9.xyz) * VARYING0.y)) + ((mix(vec3(1.0), CB4[int(VARYING9.z + 0.5) * 1 + 0].xyz, vec3(f10.w)) * f10.xyz) * VARYING0.z);
    vec3 f12 = f11 * f11;
    float f13 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f14 = normalize(VARYING8);
    float f15 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f16 = f6.x;
    vec3 f17 = mix(vec3(0.039999999105930328369140625), f12, vec3(f16));
    float f18 = CB0[31].w * f13;
    vec3 f19 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f20 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING4.yzx - (VARYING4.yzx * f20);
    vec4 f22 = texture(LightMapTexture, f21);
    vec4 f23 = texture(LightGridSkylightTexture, f21);
    vec4 f24 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f25 = mix(f22, vec4(0.0), f24);
    vec4 f26 = mix(f23, vec4(1.0), f24);
    float f27 = f26.x;
    vec4 f28 = texture(ShadowMapTexture, f19.xy);
    float f29 = f19.z;
    vec3 f30 = reflect(-f14, f7);
    float f31 = f15 * 5.0;
    vec3 f32 = vec4(f30, f31).xyz;
    vec3 f33 = textureLod(PrefilteredEnvIndoorTexture, f32, f31).xyz;
    vec3 f34;
    if (CB0[32].w == 0.0)
    {
        f34 = f33;
    }
    else
    {
        f34 = mix(f33, textureLod(PrefilteredEnvBlendTargetTexture, f32, f31).xyz, vec3(CB0[32].w));
    }
    vec4 f35 = texture(PrecomputedBRDFTexture, vec2(f15, max(9.9999997473787516355514526367188e-05, dot(f7, f14))));
    float f36 = f35.x;
    float f37 = f35.y;
    vec3 f38 = ((f17 * f36) + vec3(f37)) / vec3(f36 + f37);
    float f39 = 1.0 - f16;
    float f40 = f18 * f39;
    vec3 f41 = vec3(f39);
    vec3 f42 = f7 * f7;
    bvec3 f43 = lessThan(f7, vec3(0.0));
    vec3 f44 = vec3(f43.x ? f42.x : vec3(0.0).x, f43.y ? f42.y : vec3(0.0).y, f43.z ? f42.z : vec3(0.0).z);
    vec3 f45 = f42 - f44;
    float f46 = f45.x;
    float f47 = f45.y;
    float f48 = f45.z;
    float f49 = f44.x;
    float f50 = f44.y;
    float f51 = f44.z;
    vec3 f52 = -CB0[16].xyz;
    float f53 = dot(f7, f52) * ((1.0 - ((step(f28.x, f29) * clamp(CB0[29].z + (CB0[29].w * abs(f29 - 0.5)), 0.0, 1.0)) * f28.y)) * f26.y);
    vec3 f54 = normalize(f14 + f52);
    float f55 = clamp(f53, 0.0, 1.0);
    float f56 = f15 * f15;
    float f57 = max(0.001000000047497451305389404296875, dot(f7, f54));
    float f58 = dot(f52, f54);
    float f59 = 1.0 - f58;
    float f60 = f59 * f59;
    float f61 = (f60 * f60) * f59;
    vec3 f62 = vec3(f61) + (f17 * (1.0 - f61));
    float f63 = f56 * f56;
    float f64 = (((f57 * f63) - f57) * f57) + 1.0;
    vec3 f65 = (((((vec3((f6.z * 2.0) * f13) + (((f41 - (f38 * f40)) * (((((((CB0[40].xyz * f46) + (CB0[42].xyz * f47)) + (CB0[44].xyz * f48)) + (CB0[41].xyz * f49)) + (CB0[43].xyz * f50)) + (CB0[45].xyz * f51)) + (((((((CB0[34].xyz * f46) + (CB0[36].xyz * f47)) + (CB0[38].xyz * f48)) + (CB0[35].xyz * f49)) + (CB0[37].xyz * f50)) + (CB0[39].xyz * f51)) * f27))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f27)) * 1.0)) + ((((f41 - (f62 * f40)) * CB0[15].xyz) * f55) + (CB0[17].xyz * (f39 * clamp(-f53, 0.0, 1.0))))) + (f25.xyz * (f25.w * 120.0))) * f12) + (((mix(f34, textureLod(PrefilteredEnvTexture, f32, f31).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f27)) * f38) * f18) + (((f62 * (((f63 + (f63 * f63)) / (((f64 * f64) * ((f58 * 3.0) + 0.5)) * ((f57 * 0.75) + 0.25))) * f55)) * CB0[15].xyz) * (f13 * VARYING0.w)));
    vec4 f66 = vec4(0.0);
    f66.x = f65.x;
    vec4 f67 = f66;
    f67.y = f65.y;
    vec4 f68 = f67;
    f68.z = f65.z;
    vec4 f69 = f68;
    f69.w = 1.0;
    float f70 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f71 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[18].y, f70) * 5.0).xyz;
    bvec3 f72 = bvec3(!(CB0[18].w == 0.0));
    vec3 f73 = mix(vec3(f72.x ? CB0[19].xyz.x : f71.x, f72.y ? CB0[19].xyz.y : f71.y, f72.z ? CB0[19].xyz.z : f71.z), f69.xyz, vec3(f70));
    vec4 f74 = f69;
    f74.x = f73.x;
    vec4 f75 = f74;
    f75.y = f73.y;
    vec4 f76 = f75;
    f76.z = f73.z;
    vec3 f77 = sqrt(clamp(f76.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f78 = f76;
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    _entryPointOutput = f80;
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
