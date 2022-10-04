#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
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
    float f0 = length(VARYING3.xyz);
    vec3 f1 = VARYING3.xyz / vec3(f0);
    vec4 f2 = texture(DiffuseMapTexture, VARYING0);
    vec4 f3 = f2 * VARYING1;
    vec3 f4 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f5 = -CB0[16].xyz;
    float f6 = dot(f4, f5);
    vec3 f7 = f3.xyz;
    vec3 f8 = f7 * f7;
    vec4 f9 = f3;
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    float f12 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f13 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f14 = reflect(-f1, f4);
    float f15 = VARYING5.w * f12;
    vec3 f16 = mix(vec3(0.039999999105930328369140625), f11.xyz, vec3(f15));
    vec3 f17 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f18 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING2.yzx - (VARYING2.yzx * f18);
    vec4 f20 = texture(LightMapTexture, f19);
    vec4 f21 = texture(LightGridSkylightTexture, f19);
    vec4 f22 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f23 = mix(f20, vec4(0.0), f22);
    vec4 f24 = mix(f21, vec4(1.0), f22);
    float f25 = f24.x;
    float f26 = f24.y;
    vec3 f27 = f17 - CB0[46].xyz;
    vec3 f28 = f17 - CB0[47].xyz;
    vec3 f29 = f17 - CB0[48].xyz;
    vec4 f30 = vec4(f17, 1.0) * mat4(CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f31 = textureLod(ShadowAtlasTexture, f30.xy, 0.0);
    vec2 f32 = vec2(0.0);
    f32.x = CB0[51].z;
    vec2 f33 = f32;
    f33.y = CB0[51].w;
    float f34 = (2.0 * f30.z) - 1.0;
    float f35 = exp(CB0[51].z * f34);
    float f36 = -exp((-CB0[51].w) * f34);
    vec2 f37 = (f33 * CB0[52].y) * vec2(f35, f36);
    vec2 f38 = f37 * f37;
    float f39 = f31.x;
    float f40 = max(f31.y - (f39 * f39), f38.x);
    float f41 = f35 - f39;
    float f42 = f31.z;
    float f43 = max(f31.w - (f42 * f42), f38.y);
    float f44 = f36 - f42;
    vec3 f45 = normalize(f1 - CB0[16].xyz);
    float f46 = clamp((f6 * CB0[14].w) * (((f6 * CB0[52].x) > 0.0) ? mix(min((f35 <= f39) ? 1.0 : clamp(((f40 / (f40 + (f41 * f41))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f36 <= f42) ? 1.0 : clamp(((f43 / (f43 + (f44 * f44))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f26, clamp((length(f17 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f26), 0.0, 1.0);
    float f47 = f13 * f13;
    float f48 = max(0.001000000047497451305389404296875, dot(f4, f45));
    float f49 = dot(f5, f45);
    float f50 = 1.0 - f49;
    float f51 = f50 * f50;
    float f52 = (f51 * f51) * f50;
    vec3 f53 = vec3(f52) + (f16 * (1.0 - f52));
    float f54 = f47 * f47;
    float f55 = (((f48 * f54) - f48) * f48) + 1.0;
    float f56 = 1.0 - f15;
    float f57 = f12 * f56;
    vec3 f58 = vec3(f56);
    float f59 = f13 * 5.0;
    vec3 f60 = vec4(f14, f59).xyz;
    vec3 f61 = textureLod(PrefilteredEnvIndoorTexture, f60, f59).xyz;
    vec3 f62;
    if (CB0[32].w == 0.0)
    {
        f62 = f61;
    }
    else
    {
        f62 = mix(f61, textureLod(PrefilteredEnvBlendTargetTexture, f60, f59).xyz, vec3(CB0[32].w));
    }
    vec4 f63 = texture(PrecomputedBRDFTexture, vec2(f13, max(9.9999997473787516355514526367188e-05, dot(f4, f1))));
    float f64 = f63.x;
    float f65 = f63.y;
    vec3 f66 = ((f16 * f64) + vec3(f65)) / vec3(f64 + f65);
    vec3 f67 = f4 * f4;
    bvec3 f68 = lessThan(f4, vec3(0.0));
    vec3 f69 = vec3(f68.x ? f67.x : vec3(0.0).x, f68.y ? f67.y : vec3(0.0).y, f68.z ? f67.z : vec3(0.0).z);
    vec3 f70 = f67 - f69;
    float f71 = f70.x;
    float f72 = f70.y;
    float f73 = f70.z;
    float f74 = f69.x;
    float f75 = f69.y;
    float f76 = f69.z;
    vec3 f77 = ((((((f23.xyz * (f23.w * 120.0)) * 1.0) + (((f58 - (f53 * f57)) * CB0[15].xyz) * f46)) + ((f58 - (f66 * f57)) * (((((((CB0[40].xyz * f71) + (CB0[42].xyz * f72)) + (CB0[44].xyz * f73)) + (CB0[41].xyz * f74)) + (CB0[43].xyz * f75)) + (CB0[45].xyz * f76)) + (((((((CB0[34].xyz * f71) + (CB0[36].xyz * f72)) + (CB0[38].xyz * f73)) + (CB0[35].xyz * f74)) + (CB0[37].xyz * f75)) + (CB0[39].xyz * f76)) * f25)))) + ((CB0[32].xyz + (CB0[33].xyz * (f25 * (2.0 - CB0[14].w)))) * 1.0)) * f11.xyz) + ((((f53 * (min((f54 + (f54 * f54)) / (((f55 * f55) * ((f49 * 3.0) + 0.5)) * ((f48 * 0.75) + 0.25)), 65504.0) * f46)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f62, textureLod(PrefilteredEnvTexture, f60, f59).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f14.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f25)) * f66) * f12));
    vec4 f78 = vec4(0.0);
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    float f81 = f3.w;
    vec4 f82 = f80;
    f82.w = f81;
    float f83 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f84 = textureLod(PrefilteredEnvTexture, vec4(-VARYING3.xyz, 0.0).xyz, max(CB0[18].y, f83) * 5.0).xyz;
    bvec3 f85 = bvec3(!(CB0[18].w == 0.0));
    vec3 f86 = mix(vec3(f85.x ? CB0[19].xyz.x : f84.x, f85.y ? CB0[19].xyz.y : f84.y, f85.z ? CB0[19].xyz.z : f84.z), f82.xyz, vec3(f83));
    vec4 f87 = f82;
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec4 f89 = f88;
    f89.z = f86.z;
    vec3 f90 = sqrt(clamp(f89.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f91 = f89;
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec4 f94 = f93;
    f94.w = f81;
    _entryPointOutput = f94;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
