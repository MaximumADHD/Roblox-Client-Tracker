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
in vec3 VARYING1;
in vec4 VARYING2;
in vec3 VARYING4;
in vec2 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0;
    do
    {
        vec2 f1 = (VARYING5 * vec2(0.03125)) + CB5[0].zw;
        vec4 f2 = texture(TranslationMapTexture, vec4(f1, 0.0, 6.5).xy, 6.5);
        if (f2.w < 0.0)
        {
            f0 = vec4(1.0, 1.0, 0.0, 1.0);
            break;
        }
        vec2 f3 = (f1 * f2.z) + f2.xy;
        vec4 f4 = texture(AlbedoMapTexture, f3);
        vec3 f5 = f4.xyz;
        vec4 f6 = texture(NormalMapTexture, f3);
        vec3 f7 = (f6.xyz * 2.0) - vec3(1.0);
        vec4 f8 = texture(SpecularMapTexture, f3);
        float f9 = clamp(1.0 - (VARYING2.w * CB0[28].y), 0.0, 1.0);
        vec3 f10 = normalize(VARYING4);
        float f11 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
        float f12 = f8.x;
        vec3 f13 = mix(vec3(0.039999999105930328369140625), f5, vec3(f12));
        float f14 = CB0[31].w * f9;
        vec3 f15 = reflect(-f10, f7);
        vec3 f16 = VARYING2.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
        float f17 = clamp(dot(step(CB0[24].xyz, abs(VARYING1 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
        vec3 f18 = VARYING1.yzx - (VARYING1.yzx * f17);
        vec4 f19 = texture(LightMapTexture, f18);
        vec4 f20 = texture(LightGridSkylightTexture, f18);
        vec4 f21 = vec4(clamp(f17, 0.0, 1.0));
        vec4 f22 = mix(f19, vec4(0.0), f21);
        vec4 f23 = mix(f20, vec4(1.0), f21);
        float f24 = f23.x;
        vec4 f25 = texture(ShadowMapTexture, f16.xy);
        float f26 = f16.z;
        vec3 f27 = -CB0[16].xyz;
        float f28 = dot(f7, f27) * ((1.0 - ((step(f25.x, f26) * clamp(CB0[29].z + (CB0[29].w * abs(f26 - 0.5)), 0.0, 1.0)) * f25.y)) * f23.y);
        vec3 f29 = normalize(f10 + f27);
        float f30 = clamp(f28, 0.0, 1.0);
        float f31 = f11 * f11;
        float f32 = max(0.001000000047497451305389404296875, dot(f7, f29));
        float f33 = dot(f27, f29);
        float f34 = 1.0 - f33;
        float f35 = f34 * f34;
        float f36 = (f35 * f35) * f34;
        vec3 f37 = vec3(f36) + (f13 * (1.0 - f36));
        float f38 = f31 * f31;
        float f39 = (((f32 * f38) - f32) * f32) + 1.0;
        float f40 = 1.0 - f12;
        float f41 = f14 * f40;
        vec3 f42 = vec3(f40);
        float f43 = f11 * 5.0;
        vec3 f44 = vec4(f15, f43).xyz;
        vec3 f45 = textureLod(PrefilteredEnvIndoorTexture, f44, f43).xyz;
        vec3 f46;
        if (CB0[32].w == 0.0)
        {
            f46 = f45;
        }
        else
        {
            f46 = mix(f45, textureLod(PrefilteredEnvBlendTargetTexture, f44, f43).xyz, vec3(CB0[32].w));
        }
        vec4 f47 = texture(PrecomputedBRDFTexture, vec2(f11, max(9.9999997473787516355514526367188e-05, dot(f7, f10))));
        float f48 = f47.x;
        float f49 = f47.y;
        vec3 f50 = ((f13 * f48) + vec3(f49)) / vec3(f48 + f49);
        vec3 f51 = f7 * f7;
        bvec3 f52 = lessThan(f7, vec3(0.0));
        vec3 f53 = vec3(f52.x ? f51.x : vec3(0.0).x, f52.y ? f51.y : vec3(0.0).y, f52.z ? f51.z : vec3(0.0).z);
        vec3 f54 = f51 - f53;
        float f55 = f54.x;
        float f56 = f54.y;
        float f57 = f54.z;
        float f58 = f53.x;
        float f59 = f53.y;
        float f60 = f53.z;
        vec3 f61 = ((((((f22.xyz * (f22.w * 120.0)) + ((((f42 - (f37 * f41)) * CB0[15].xyz) * f30) + (CB0[17].xyz * (f40 * clamp(-f28, 0.0, 1.0))))) + (((f42 - (f50 * f41)) * (((((((CB0[40].xyz * f55) + (CB0[42].xyz * f56)) + (CB0[44].xyz * f57)) + (CB0[41].xyz * f58)) + (CB0[43].xyz * f59)) + (CB0[45].xyz * f60)) + (((((((CB0[34].xyz * f55) + (CB0[36].xyz * f56)) + (CB0[38].xyz * f57)) + (CB0[35].xyz * f58)) + (CB0[37].xyz * f59)) + (CB0[39].xyz * f60)) * f24))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f24)) * 1.0)) + vec3((f8.z * 2.0) * f9)) * f5) + (((((f37 * (((f38 + (f38 * f38)) / (((f39 * f39) * ((f33 * 3.0) + 0.5)) * ((f32 * 0.75) + 0.25))) * f30)) * CB0[15].xyz) * 1.0) * (f9 * VARYING0.w)) + ((mix(f46, textureLod(PrefilteredEnvTexture, f44, f43).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f15.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f24)) * f50) * f14));
        vec4 f62 = vec4(0.0);
        f62.x = f61.x;
        vec4 f63 = f62;
        f63.y = f61.y;
        vec4 f64 = f63;
        f64.z = f61.z;
        vec4 f65 = f64;
        f65.w = 1.0;
        float f66 = clamp(exp2((CB0[18].z * VARYING2.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
        vec3 f67 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4, 0.0).xyz, max(CB0[18].y, f66) * 5.0).xyz;
        bvec3 f68 = bvec3(!(CB0[18].w == 0.0));
        vec3 f69 = mix(vec3(f68.x ? CB0[19].xyz.x : f67.x, f68.y ? CB0[19].xyz.y : f67.y, f68.z ? CB0[19].xyz.z : f67.z), f65.xyz, vec3(f66));
        vec4 f70 = f65;
        f70.x = f69.x;
        vec4 f71 = f70;
        f71.y = f69.y;
        vec4 f72 = f71;
        f72.z = f69.z;
        vec3 f73 = sqrt(clamp(f72.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
        vec4 f74 = f72;
        f74.x = f73.x;
        vec4 f75 = f74;
        f75.y = f73.y;
        vec4 f76 = f75;
        f76.z = f73.z;
        f0 = f76;
        break;
    } while(false);
    _entryPointOutput = f0;
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
