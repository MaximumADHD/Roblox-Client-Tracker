#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
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
    vec4 f2 = texture(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f3 = normalize(VARYING5.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f4 = -CB0[11].xyz;
    float f5 = dot(f3, f4);
    vec3 f6 = f2.xyz;
    vec3 f7 = f6 * f6;
    vec4 f8 = f2;
    f8.x = f7.x;
    vec4 f9 = f8;
    f9.y = f7.y;
    vec4 f10 = f9;
    f10.z = f7.z;
    vec3 f11 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f12 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f13 = VARYING3.yzx - (VARYING3.yzx * f12);
    vec4 f14 = texture(LightMapTexture, f13);
    vec4 f15 = texture(LightGridSkylightTexture, f13);
    vec4 f16 = vec4(clamp(f12, 0.0, 1.0));
    vec4 f17 = mix(f14, vec4(0.0), f16);
    vec4 f18 = mix(f15, vec4(1.0), f16);
    float f19 = f18.x;
    float f20 = f18.y;
    vec3 f21 = f11 - CB0[41].xyz;
    vec3 f22 = f11 - CB0[42].xyz;
    vec3 f23 = f11 - CB0[43].xyz;
    vec4 f24 = vec4(f11, 1.0) * mat4(CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f21, f21) < CB0[41].w) ? 0 : ((dot(f22, f22) < CB0[42].w) ? 1 : ((dot(f23, f23) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f25 = textureLod(ShadowAtlasTexture, f24.xy, 0.0);
    vec2 f26 = vec2(0.0);
    f26.x = CB0[46].z;
    vec2 f27 = f26;
    f27.y = CB0[46].w;
    float f28 = (2.0 * f24.z) - 1.0;
    float f29 = exp(CB0[46].z * f28);
    float f30 = -exp((-CB0[46].w) * f28);
    vec2 f31 = (f27 * CB0[47].y) * vec2(f29, f30);
    vec2 f32 = f31 * f31;
    float f33 = f25.x;
    float f34 = max(f25.y - (f33 * f33), f32.x);
    float f35 = f29 - f33;
    float f36 = f25.z;
    float f37 = max(f25.w - (f36 * f36), f32.y);
    float f38 = f30 - f36;
    float f39 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    float f40 = max(VARYING5.w, 0.04500000178813934326171875);
    vec3 f41 = reflect(-f1, f3);
    float f42 = f40 * 5.0;
    vec3 f43 = vec4(f41, f42).xyz;
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
    vec4 f46 = texture(PrecomputedBRDFTexture, vec2(f40, max(9.9999997473787516355514526367188e-05, dot(f3, f1))));
    float f47 = VARYING6.w * f39;
    vec3 f48 = mix(vec3(0.039999999105930328369140625), f10.xyz, vec3(f47));
    vec3 f49 = normalize(f4 + f1);
    float f50 = clamp((f5 * CB0[9].w) * (((f5 * CB0[47].x) > 0.0) ? mix(min((f29 <= f33) ? 1.0 : clamp(((f34 / (f34 + (f35 * f35))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f30 <= f36) ? 1.0 : clamp(((f37 / (f37 + (f38 * f38))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f20, clamp((length(f11 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f20), 0.0, 1.0);
    float f51 = f40 * f40;
    float f52 = max(0.001000000047497451305389404296875, dot(f3, f49));
    float f53 = dot(f4, f49);
    float f54 = 1.0 - f53;
    float f55 = f54 * f54;
    float f56 = (f55 * f55) * f54;
    vec3 f57 = vec3(f56) + (f48 * (1.0 - f56));
    float f58 = f51 * f51;
    float f59 = (((f52 * f58) - f52) * f52) + 1.0;
    float f60 = 1.0 - f47;
    float f61 = f39 * f60;
    vec3 f62 = vec3(f60);
    float f63 = f46.x;
    float f64 = f46.y;
    vec3 f65 = ((f48 * f63) + vec3(f64)) / vec3(f63 + f64);
    vec3 f66 = f3 * f3;
    bvec3 f67 = lessThan(f3, vec3(0.0));
    vec3 f68 = vec3(f67.x ? f66.x : vec3(0.0).x, f67.y ? f66.y : vec3(0.0).y, f67.z ? f66.z : vec3(0.0).z);
    vec3 f69 = f66 - f68;
    float f70 = f69.x;
    float f71 = f69.y;
    float f72 = f69.z;
    float f73 = f68.x;
    float f74 = f68.y;
    float f75 = f68.z;
    vec3 f76 = (((((((f62 - (f57 * f61)) * CB0[10].xyz) * f50) + ((f17.xyz * (f17.w * 120.0)) * 1.0)) + ((f62 - (f65 * f61)) * (((((((CB0[35].xyz * f70) + (CB0[37].xyz * f71)) + (CB0[39].xyz * f72)) + (CB0[36].xyz * f73)) + (CB0[38].xyz * f74)) + (CB0[40].xyz * f75)) + (((((((CB0[29].xyz * f70) + (CB0[31].xyz * f71)) + (CB0[33].xyz * f72)) + (CB0[30].xyz * f73)) + (CB0[32].xyz * f74)) + (CB0[34].xyz * f75)) * f19)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f19))) * f10.xyz) + ((((f57 * (((f58 + (f58 * f58)) / (((f59 * f59) * ((f53 * 3.0) + 0.5)) * ((f52 * 0.75) + 0.25))) * f50)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f45, textureLod(PrefilteredEnvTexture, f43, f42).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f41.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f19)) * f65) * f39));
    vec4 f77 = vec4(0.0);
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec4 f80 = f79;
    f80.w = 1.0;
    float f81 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f82 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f81) * 5.0).xyz;
    bvec3 f83 = bvec3(!(CB0[13].w == 0.0));
    vec3 f84 = mix(vec3(f83.x ? CB0[14].xyz.x : f82.x, f83.y ? CB0[14].xyz.y : f82.y, f83.z ? CB0[14].xyz.z : f82.z), f80.xyz, vec3(f81));
    vec4 f85 = f80;
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec3 f88 = sqrt(clamp(f87.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f89 = f87;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    vec4 f92 = f91;
    f92.w = 1.0;
    _entryPointOutput = f92;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
