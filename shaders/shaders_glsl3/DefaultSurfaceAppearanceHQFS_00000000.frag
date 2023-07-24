#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[57];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    vec4 f2 = mix(vec4(f0.xyz, VARYING2.w * f1), vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w), vec4(CB3[0].x));
    vec4 f3 = texture(NormalMapTexture, VARYING0);
    vec2 f4 = f3.wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    vec3 f6 = mix(vec3(0.0, 0.0, 1.0), vec3(f5, sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f7 = texture(SpecularMapTexture, VARYING0);
    float f8 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f9 = VARYING6.xyz * f8;
    vec3 f10 = VARYING5.xyz * f8;
    vec3 f11 = normalize(((f9 * f6.x) + ((cross(f10, f9) * VARYING6.w) * f6.y)) + (f10 * f6.z));
    vec3 f12 = f2.xyz;
    vec3 f13 = f12 * f12;
    vec4 f14 = f2;
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    float f17 = length(VARYING4.xyz);
    vec3 f18 = VARYING4.xyz / vec3(f17);
    float f19 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f20 = 0.08900000154972076416015625 + (f7.y * 0.9110000133514404296875);
    vec3 f21 = -f18;
    vec3 f22 = reflect(f21, f11);
    float f23 = f7.x * f19;
    vec3 f24 = mix(vec3(0.039999999105930328369140625), f16.xyz, vec3(f23));
    vec3 f25 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f26 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f27 = VARYING3.yzx - (VARYING3.yzx * f26);
    vec4 f28 = texture(LightMapTexture, f27);
    vec4 f29 = texture(LightGridSkylightTexture, f27);
    vec4 f30 = vec4(clamp(f26, 0.0, 1.0));
    vec4 f31 = mix(f28, vec4(0.0), f30);
    vec4 f32 = mix(f29, vec4(1.0), f30);
    float f33 = f32.x;
    vec4 f34 = texture(ShadowMapTexture, f25.xy);
    float f35 = f25.z;
    vec3 f36 = -CB0[16].xyz;
    float f37 = dot(f11, f36) * ((1.0 - ((step(f34.x, f35) * clamp(CB0[29].z + (CB0[29].w * abs(f35 - 0.5)), 0.0, 1.0)) * f34.y)) * f32.y);
    vec3 f38 = normalize(f18 + f36);
    float f39 = clamp(f37, 0.0, 1.0);
    float f40 = f20 * f20;
    float f41 = max(0.001000000047497451305389404296875, dot(f11, f38));
    float f42 = dot(f36, f38);
    float f43 = 1.0 - f42;
    float f44 = f43 * f43;
    float f45 = (f44 * f44) * f43;
    vec3 f46 = vec3(f45) + (f24 * (1.0 - f45));
    float f47 = f40 * f40;
    float f48 = (((f41 * f47) - f41) * f41) + 1.0;
    float f49 = 1.0 - f23;
    float f50 = f19 * f49;
    vec3 f51 = vec3(f49);
    float f52 = f20 * 5.0;
    vec3 f53 = vec4(f22, f52).xyz;
    vec3 f54 = textureLod(PrefilteredEnvIndoorTexture, f53, f52).xyz;
    vec3 f55;
    if (CB0[32].w == 0.0)
    {
        f55 = f54;
    }
    else
    {
        f55 = mix(f54, textureLod(PrefilteredEnvBlendTargetTexture, f53, f52).xyz, vec3(CB0[32].w));
    }
    vec4 f56 = texture(PrecomputedBRDFTexture, vec2(f20, max(9.9999997473787516355514526367188e-05, dot(f11, f18))));
    float f57 = f56.x;
    float f58 = f56.y;
    vec3 f59 = ((f24 * f57) + vec3(f58)) / vec3(f57 + f58);
    vec3 f60 = f11 * f11;
    bvec3 f61 = lessThan(f11, vec3(0.0));
    vec3 f62 = vec3(f61.x ? f60.x : vec3(0.0).x, f61.y ? f60.y : vec3(0.0).y, f61.z ? f60.z : vec3(0.0).z);
    vec3 f63 = f60 - f62;
    float f64 = f63.x;
    float f65 = f63.y;
    float f66 = f63.z;
    float f67 = f62.x;
    float f68 = f62.y;
    float f69 = f62.z;
    vec3 f70 = (((((f31.xyz * (f31.w * 120.0)) + ((((f51 - (f46 * f50)) * CB0[15].xyz) * f39) + (CB0[17].xyz * (f49 * clamp(-f37, 0.0, 1.0))))) + (((f51 - (f59 * f50)) * (((((((CB0[40].xyz * f64) + (CB0[42].xyz * f65)) + (CB0[44].xyz * f66)) + (CB0[41].xyz * f67)) + (CB0[43].xyz * f68)) + (CB0[45].xyz * f69)) + (((((((CB0[34].xyz * f64) + (CB0[36].xyz * f65)) + (CB0[38].xyz * f66)) + (CB0[35].xyz * f67)) + (CB0[37].xyz * f68)) + (CB0[39].xyz * f69)) * f33))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f33)) * 1.0)) * f16.xyz) + ((((f46 * (((f47 + (f47 * f47)) / (((f48 * f48) * ((f42 * 3.0) + 0.5)) * ((f41 * 0.75) + 0.25))) * f39)) * CB0[15].xyz) * 1.0) + ((mix(f55, textureLod(PrefilteredEnvTexture, f53, f52).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f22.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f33)) * f59) * f19));
    vec4 f71 = vec4(0.0);
    f71.x = f70.x;
    vec4 f72 = f71;
    f72.y = f70.y;
    vec4 f73 = f72;
    f73.z = f70.z;
    float f74 = f2.w;
    vec4 f75 = f73;
    f75.w = f74;
    float f76 = clamp(exp2((CB0[18].z * f17) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f77 = textureLod(PrefilteredEnvTexture, vec4(f21, 0.0).xyz, max(CB0[18].y, f76) * 5.0).xyz;
    bvec3 f78 = bvec3(!(CB0[18].w == 0.0));
    vec3 f79 = mix(vec3(f78.x ? CB0[19].xyz.x : f77.x, f78.y ? CB0[19].xyz.y : f77.y, f78.z ? CB0[19].xyz.z : f77.z), f75.xyz, vec3(f76));
    vec4 f80 = f75;
    f80.x = f79.x;
    vec4 f81 = f80;
    f81.y = f79.y;
    vec4 f82 = f81;
    f82.z = f79.z;
    vec3 f83 = sqrt(clamp(f82.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f84 = f82;
    f84.x = f83.x;
    vec4 f85 = f84;
    f85.y = f83.y;
    vec4 f86 = f85;
    f86.z = f83.z;
    vec4 f87 = f86;
    f87.w = f74;
    _entryPointOutput = f87;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
