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
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec4 f2 = texture(DiffuseMapTexture, VARYING0);
    vec4 f3 = f2 * VARYING2;
    vec3 f4 = normalize(VARYING5.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f5 = f3.xyz;
    vec3 f6 = f5 * f5;
    vec4 f7 = f3;
    f7.x = f6.x;
    vec4 f8 = f7;
    f8.y = f6.y;
    vec4 f9 = f8;
    f9.z = f6.z;
    vec3 f10 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f11 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING3.yzx - (VARYING3.yzx * f11);
    vec4 f13 = texture(LightMapTexture, f12);
    vec4 f14 = texture(LightGridSkylightTexture, f12);
    vec4 f15 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f16 = mix(f13, vec4(0.0), f15);
    vec4 f17 = mix(f14, vec4(1.0), f15);
    float f18 = f17.x;
    vec4 f19 = texture(ShadowMapTexture, f10.xy);
    float f20 = f10.z;
    float f21 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    float f22 = 0.08900000154972076416015625 + (VARYING5.w * 0.9110000133514404296875);
    vec3 f23 = reflect(-f1, f4);
    float f24 = VARYING6.w * f21;
    vec3 f25 = mix(vec3(0.039999999105930328369140625), f9.xyz, vec3(f24));
    vec3 f26 = -CB0[11].xyz;
    float f27 = (dot(f4, f26) * CB0[9].w) * ((1.0 - ((step(f19.x, f20) * clamp(CB0[24].z + (CB0[24].w * abs(f20 - 0.5)), 0.0, 1.0)) * f19.y)) * f17.y);
    vec3 f28 = normalize(f1 - CB0[11].xyz);
    float f29 = clamp(f27, 0.0, 1.0);
    float f30 = f22 * f22;
    float f31 = max(0.001000000047497451305389404296875, dot(f4, f28));
    float f32 = dot(f26, f28);
    float f33 = 1.0 - f32;
    float f34 = f33 * f33;
    float f35 = (f34 * f34) * f33;
    vec3 f36 = vec3(f35) + (f25 * (1.0 - f35));
    float f37 = f30 * f30;
    float f38 = (((f31 * f37) - f31) * f31) + 1.0;
    float f39 = 1.0 - f24;
    float f40 = f21 * f39;
    vec3 f41 = vec3(f39);
    float f42 = f22 * 5.0;
    vec3 f43 = vec4(f23, f42).xyz;
    vec3 f44 = textureLod(PrefilteredEnvIndoorTexture, f43, f42).xyz;
    vec3 f45;
    if (CB0[27].w == 0.0)
    {
        f45 = f44;
    }
    else
    {
        f45 = mix(f44, textureLod(PrefilteredEnvBlendTargetTexture, f43, f42).xyz, vec3(CB0[27].w));
    }
    vec4 f46 = texture(PrecomputedBRDFTexture, vec2(f22, max(9.9999997473787516355514526367188e-05, dot(f4, f1))));
    float f47 = f46.x;
    float f48 = f46.y;
    vec3 f49 = ((f25 * f47) + vec3(f48)) / vec3(f47 + f48);
    vec3 f50 = f4 * f4;
    bvec3 f51 = lessThan(f4, vec3(0.0));
    vec3 f52 = vec3(f51.x ? f50.x : vec3(0.0).x, f51.y ? f50.y : vec3(0.0).y, f51.z ? f50.z : vec3(0.0).z);
    vec3 f53 = f50 - f52;
    float f54 = f53.x;
    float f55 = f53.y;
    float f56 = f53.z;
    float f57 = f52.x;
    float f58 = f52.y;
    float f59 = f52.z;
    vec3 f60 = ((((((((f41 - (f36 * f40)) * CB0[10].xyz) * f29) + (CB0[12].xyz * (f39 * clamp(-f27, 0.0, 1.0)))) + ((f16.xyz * (f16.w * 120.0)) * 1.0)) + ((f41 - (f49 * f40)) * (((((((CB0[35].xyz * f54) + (CB0[37].xyz * f55)) + (CB0[39].xyz * f56)) + (CB0[36].xyz * f57)) + (CB0[38].xyz * f58)) + (CB0[40].xyz * f59)) + (((((((CB0[29].xyz * f54) + (CB0[31].xyz * f55)) + (CB0[33].xyz * f56)) + (CB0[30].xyz * f57)) + (CB0[32].xyz * f58)) + (CB0[34].xyz * f59)) * f18)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f18))) * f9.xyz) + ((((f36 * (((f37 + (f37 * f37)) / (((f38 * f38) * ((f32 * 3.0) + 0.5)) * ((f31 * 0.75) + 0.25))) * f29)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f45, textureLod(PrefilteredEnvTexture, f43, f42).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f23.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f18)) * f49) * f21));
    vec4 f61 = vec4(0.0);
    f61.x = f60.x;
    vec4 f62 = f61;
    f62.y = f60.y;
    vec4 f63 = f62;
    f63.z = f60.z;
    float f64 = f3.w;
    vec4 f65 = f63;
    f65.w = f64;
    float f66 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f67 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f66) * 5.0).xyz;
    bvec3 f68 = bvec3(!(CB0[13].w == 0.0));
    vec3 f69 = mix(vec3(f68.x ? CB0[14].xyz.x : f67.x, f68.y ? CB0[14].xyz.y : f67.y, f68.z ? CB0[14].xyz.z : f67.z), f65.xyz, vec3(f66));
    vec4 f70 = f65;
    f70.x = f69.x;
    vec4 f71 = f70;
    f71.y = f69.y;
    vec4 f72 = f71;
    f72.z = f69.z;
    vec3 f73 = sqrt(clamp(f72.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f74 = f72;
    f74.x = f73.x;
    vec4 f75 = f74;
    f75.y = f73.y;
    vec4 f76 = f75;
    f76.z = f73.z;
    vec4 f77 = f76;
    f77.w = f64;
    _entryPointOutput = f77;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
