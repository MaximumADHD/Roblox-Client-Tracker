#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 CB5[1];
uniform sampler2D ShadowMapTexture;
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
in vec3 VARYING3;
in vec4 VARYING4;
in vec2 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (VARYING5 * vec2(0.03125)) + CB5[0].zw;
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
        f4 = VARYING4.xyz * VARYING4.xyz;
        f3 = VARYING2;
    }
    else
    {
        vec2 f6 = (f0 * f2.z) + f2.xy;
        f5 = texture(SpecularMapTexture, f6).xyz;
        f4 = texture(AlbedoMapTexture, f6).xyz;
        f3 = (texture(NormalMapTexture, f6).xyz * 2.0) - vec3(1.0);
    }
    float f7 = clamp(1.0 - (VARYING1.w * CB0[28].y), 0.0, 1.0);
    vec3 f8 = normalize(VARYING3);
    float f9 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    vec3 f10 = mix(vec3(0.039999999105930328369140625), f4, vec3(f5.x));
    float f11 = CB0[31].w * f7;
    vec3 f12 = reflect(-f8, f3);
    vec3 f13 = VARYING1.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f14 = clamp(dot(step(CB0[24].xyz, abs(VARYING0.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f15 = VARYING0.yzx - (VARYING0.yzx * f14);
    vec4 f16 = texture(LightMapTexture, f15);
    vec4 f17 = texture(LightGridSkylightTexture, f15);
    vec4 f18 = vec4(clamp(f14, 0.0, 1.0));
    vec4 f19 = mix(f16, vec4(0.0), f18);
    vec4 f20 = mix(f17, vec4(1.0), f18);
    float f21 = f20.x;
    vec4 f22 = texture(ShadowMapTexture, f13.xy);
    float f23 = f13.z;
    vec3 f24 = -CB0[16].xyz;
    float f25 = dot(f3, f24) * ((1.0 - ((step(f22.x, f23) * clamp(CB0[29].z + (CB0[29].w * abs(f23 - 0.5)), 0.0, 1.0)) * f22.y)) * f20.y);
    vec3 f26 = normalize(f8 + f24);
    float f27 = clamp(f25, 0.0, 1.0);
    float f28 = f9 * f9;
    float f29 = max(0.001000000047497451305389404296875, dot(f3, f26));
    float f30 = dot(f24, f26);
    float f31 = 1.0 - f30;
    float f32 = f31 * f31;
    float f33 = (f32 * f32) * f31;
    vec3 f34 = vec3(f33) + (f10 * (1.0 - f33));
    float f35 = f28 * f28;
    float f36 = (((f29 * f35) - f29) * f29) + 1.0;
    float f37 = 1.0 - f5.x;
    float f38 = f11 * f37;
    vec3 f39 = vec3(f37);
    float f40 = f9 * 5.0;
    vec3 f41 = vec4(f12, f40).xyz;
    vec3 f42 = textureLod(PrefilteredEnvIndoorTexture, f41, f40).xyz;
    vec3 f43;
    if (CB0[32].w == 0.0)
    {
        f43 = f42;
    }
    else
    {
        f43 = mix(f42, textureLod(PrefilteredEnvBlendTargetTexture, f41, f40).xyz, vec3(CB0[32].w));
    }
    vec4 f44 = texture(PrecomputedBRDFTexture, vec2(f9, max(9.9999997473787516355514526367188e-05, dot(f3, f8))));
    float f45 = f44.x;
    float f46 = f44.y;
    vec3 f47 = ((f10 * f45) + vec3(f46)) / vec3(f45 + f46);
    vec3 f48 = f3 * f3;
    bvec3 f49 = lessThan(f3, vec3(0.0));
    vec3 f50 = vec3(f49.x ? f48.x : vec3(0.0).x, f49.y ? f48.y : vec3(0.0).y, f49.z ? f48.z : vec3(0.0).z);
    vec3 f51 = f48 - f50;
    float f52 = f51.x;
    float f53 = f51.y;
    float f54 = f51.z;
    float f55 = f50.x;
    float f56 = f50.y;
    float f57 = f50.z;
    vec3 f58 = ((((((f19.xyz * (f19.w * 120.0)) + ((((f39 - (f34 * f38)) * CB0[15].xyz) * f27) + (CB0[17].xyz * (f37 * clamp(-f25, 0.0, 1.0))))) + (((f39 - (f47 * f38)) * (((((((CB0[40].xyz * f52) + (CB0[42].xyz * f53)) + (CB0[44].xyz * f54)) + (CB0[41].xyz * f55)) + (CB0[43].xyz * f56)) + (CB0[45].xyz * f57)) + (((((((CB0[34].xyz * f52) + (CB0[36].xyz * f53)) + (CB0[38].xyz * f54)) + (CB0[35].xyz * f55)) + (CB0[37].xyz * f56)) + (CB0[39].xyz * f57)) * f21))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f21)) * 1.0)) + vec3((f5.z * 2.0) * f7)) * f4) + (((((f34 * (((f35 + (f35 * f35)) / (((f36 * f36) * ((f30 * 3.0) + 0.5)) * ((f29 * 0.75) + 0.25))) * f27)) * CB0[15].xyz) * 1.0) * f7) + ((mix(f43, textureLod(PrefilteredEnvTexture, f41, f40).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f12.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f21)) * f47) * f11));
    vec4 f59 = vec4(0.0);
    f59.x = f58.x;
    vec4 f60 = f59;
    f60.y = f58.y;
    vec4 f61 = f60;
    f61.z = f58.z;
    vec4 f62 = f61;
    f62.w = 1.0;
    float f63 = clamp(exp2((CB0[18].z * VARYING1.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f64 = textureLod(PrefilteredEnvTexture, vec4(-VARYING3, 0.0).xyz, max(CB0[18].y, f63) * 5.0).xyz;
    bvec3 f65 = bvec3(!(CB0[18].w == 0.0));
    vec3 f66 = mix(vec3(f65.x ? CB0[19].xyz.x : f64.x, f65.y ? CB0[19].xyz.y : f64.y, f65.z ? CB0[19].xyz.z : f64.z), f62.xyz, vec3(f63));
    vec4 f67 = f62;
    f67.x = f66.x;
    vec4 f68 = f67;
    f68.y = f66.y;
    vec4 f69 = f68;
    f69.z = f66.z;
    vec3 f70 = sqrt(clamp(f69.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f71 = f69;
    f71.x = f70.x;
    vec4 f72 = f71;
    f72.y = f70.y;
    vec4 f73 = f72;
    f73.z = f70.z;
    _entryPointOutput = f73;
}

//$$ShadowMapTexture=s1
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
