#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform sampler2D ShadowMapTexture;
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
    vec4 f0 = texture(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f1 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f2 = f0.xyz;
    vec3 f3 = f2 * f2;
    vec4 f4 = f0;
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    float f7 = length(VARYING3.xyz);
    vec3 f8 = VARYING3.xyz / vec3(f7);
    float f9 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f10 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f11 = -f8;
    vec3 f12 = reflect(f11, f1);
    float f13 = VARYING5.w * f9;
    vec3 f14 = mix(vec3(0.039999999105930328369140625), f6.xyz, vec3(f13));
    vec3 f15 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f16 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING2.yzx - (VARYING2.yzx * f16);
    vec4 f18 = texture(LightMapTexture, f17);
    vec4 f19 = texture(LightGridSkylightTexture, f17);
    vec4 f20 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f21 = mix(f18, vec4(0.0), f20);
    vec4 f22 = mix(f19, vec4(1.0), f20);
    float f23 = f22.x;
    vec4 f24 = texture(ShadowMapTexture, f15.xy);
    float f25 = f15.z;
    float f26 = f10 * 5.0;
    vec3 f27 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f12;
    bvec3 f28 = bvec3(!(CB0[58].x == 2.0));
    vec3 f29 = vec4(f12, f26).xyz;
    vec3 f30 = textureLod(PrefilteredEnvIndoorTexture, f29, f26).xyz;
    vec3 f31;
    if (CB0[32].w == 0.0)
    {
        f31 = f30;
    }
    else
    {
        f31 = mix(f30, textureLod(PrefilteredEnvBlendTargetTexture, f29, f26).xyz, vec3(CB0[32].w));
    }
    vec4 f32 = texture(PrecomputedBRDFTexture, vec2(f10, max(9.9999997473787516355514526367188e-05, dot(f1, f8))));
    float f33 = f32.x;
    float f34 = f32.y;
    vec3 f35 = ((f14 * f33) + vec3(f34)) / vec3(f33 + f34);
    float f36 = 1.0 - f13;
    float f37 = f9 * f36;
    vec3 f38 = vec3(f36);
    vec3 f39 = f1 * f1;
    bvec3 f40 = lessThan(f1, vec3(0.0));
    vec3 f41 = vec3(f40.x ? f39.x : vec3(0.0).x, f40.y ? f39.y : vec3(0.0).y, f40.z ? f39.z : vec3(0.0).z);
    vec3 f42 = f39 - f41;
    float f43 = f42.x;
    float f44 = f42.y;
    float f45 = f42.z;
    float f46 = f41.x;
    float f47 = f41.y;
    float f48 = f41.z;
    vec3 f49 = -CB0[16].xyz;
    float f50 = dot(f1, f49) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[29].z + (CB0[29].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f22.y);
    vec3 f51 = normalize(f8 + f49);
    float f52 = clamp(f50, 0.0, 1.0);
    float f53 = f10 * f10;
    float f54 = max(0.001000000047497451305389404296875, dot(f1, f51));
    float f55 = dot(f49, f51);
    float f56 = 1.0 - f55;
    float f57 = f56 * f56;
    float f58 = (f57 * f57) * f56;
    vec3 f59 = vec3(f58) + (f14 * (1.0 - f58));
    float f60 = f53 * f53;
    float f61 = (((f54 * f60) - f54) * f54) + 1.0;
    vec3 f62 = (((((((f38 - (f35 * f37)) * (((((((CB0[40].xyz * f43) + (CB0[42].xyz * f44)) + (CB0[44].xyz * f45)) + (CB0[41].xyz * f46)) + (CB0[43].xyz * f47)) + (CB0[45].xyz * f48)) + (((((((CB0[34].xyz * f43) + (CB0[36].xyz * f44)) + (CB0[38].xyz * f45)) + (CB0[35].xyz * f46)) + (CB0[37].xyz * f47)) + (CB0[39].xyz * f48)) * f23))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f23)) * 1.0)) + ((((f38 - (f59 * f37)) * CB0[15].xyz) * f52) + (CB0[17].xyz * (f36 * clamp(-f50, 0.0, 1.0))))) + (f21.xyz * (f21.w * 120.0))) * f6.xyz) + (((mix(f31, textureLod(PrefilteredEnvTexture, vec4(vec3(f28.x ? f27.x : f12.x, f28.y ? f27.y : f12.y, f28.z ? f27.z : f12.z), f26).xyz, f26).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f12.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f23)) * f35) * f9) + (((f59 * (((f60 + (f60 * f60)) / (((f61 * f61) * ((f55 * 3.0) + 0.5)) * ((f54 * 0.75) + 0.25))) * f52)) * CB0[15].xyz) * 1.0));
    vec4 f63 = vec4(0.0);
    f63.x = f62.x;
    vec4 f64 = f63;
    f64.y = f62.y;
    vec4 f65 = f64;
    f65.z = f62.z;
    vec4 f66 = f65;
    f66.w = 1.0;
    float f67 = clamp(exp2((CB0[18].z * f7) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f68 = textureLod(PrefilteredEnvTexture, vec4(f11, 0.0).xyz, max(CB0[18].y, f67) * 5.0).xyz;
    bvec3 f69 = bvec3(!(CB0[18].w == 0.0));
    vec3 f70 = mix(vec3(f69.x ? CB0[19].xyz.x : f68.x, f69.y ? CB0[19].xyz.y : f68.y, f69.z ? CB0[19].xyz.z : f68.z), f66.xyz, vec3(f67));
    vec4 f71 = f66;
    f71.x = f70.x;
    vec4 f72 = f71;
    f72.y = f70.y;
    vec4 f73 = f72;
    f73.z = f70.z;
    vec3 f74 = sqrt(clamp(f73.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f75 = f73;
    f75.x = f74.x;
    vec4 f76 = f75;
    f76.y = f74.y;
    vec4 f77 = f76;
    f77.z = f74.z;
    vec4 f78 = f77;
    f78.w = 1.0;
    _entryPointOutput = f78;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
