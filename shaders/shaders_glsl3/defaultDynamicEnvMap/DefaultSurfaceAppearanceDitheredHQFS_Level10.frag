#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <SAParams.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB3[1];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D Tc2DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f3 = texture(DiffuseMapTexture, VARYING0);
    vec4 f4 = texture(Tc2DiffuseMapTexture, VARYING1);
    vec4 f5 = mix(f3, f4, vec4(f4.w));
    float f6 = f5.w;
    float f7 = fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    if (smoothstep(0.0, 1.0, f6) < (f7 * CB0[47].z))
    {
        discard;
    }
    vec4 f8 = vec4(mix(VARYING2.xyz, f5.xyz, vec3(f6)), VARYING2.w);
    vec4 f9 = vec4(f5.xyz, VARYING2.w * f6);
    bvec4 f10 = bvec4(CB3[0].x != 0.0);
    vec4 f11 = vec4(f10.x ? f8.x : f9.x, f10.y ? f8.y : f9.y, f10.z ? f8.z : f9.z, f10.w ? f8.w : f9.w);
    vec4 f12 = texture(NormalMapTexture, VARYING1);
    vec2 f13 = f12.wy * 2.0;
    vec2 f14 = f13 - vec2(1.0);
    float f15 = sqrt(clamp(1.0 + dot(vec2(1.0) - f13, f14), 0.0, 1.0));
    vec2 f16 = vec3(f14, f15).xy * f2;
    vec4 f17 = texture(SpecularMapTexture, VARYING1);
    float f18 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f19 = VARYING6.xyz * f18;
    vec3 f20 = VARYING5.xyz * f18;
    vec3 f21 = normalize(((f19 * f16.x) + ((cross(f20, f19) * VARYING6.w) * f16.y)) + (f20 * f15));
    vec3 f22 = -CB0[11].xyz;
    float f23 = dot(f21, f22);
    vec3 f24 = f11.xyz;
    vec3 f25 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f26 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f27 = VARYING3.yzx - (VARYING3.yzx * f26);
    vec4 f28 = texture(LightMapTexture, f27);
    vec4 f29 = texture(LightGridSkylightTexture, f27);
    vec4 f30 = vec4(clamp(f26, 0.0, 1.0));
    vec4 f31 = mix(f28, vec4(0.0), f30);
    vec4 f32 = mix(f29, vec4(1.0), f30);
    float f33 = f32.x;
    float f34 = f32.y;
    vec3 f35 = f25 - CB0[41].xyz;
    vec3 f36 = f25 - CB0[42].xyz;
    vec3 f37 = f25 - CB0[43].xyz;
    vec4 f38 = vec4(f25, 1.0) * mat4(CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f39 = textureLod(ShadowAtlasTexture, f38.xy, 0.0);
    vec2 f40 = vec2(0.0);
    f40.x = CB0[46].z;
    vec2 f41 = f40;
    f41.y = CB0[46].w;
    float f42 = (2.0 * f38.z) - 1.0;
    float f43 = exp(CB0[46].z * f42);
    float f44 = -exp((-CB0[46].w) * f42);
    vec2 f45 = (f41 * CB0[47].y) * vec2(f43, f44);
    vec2 f46 = f45 * f45;
    float f47 = f39.x;
    float f48 = max(f39.y - (f47 * f47), f46.x);
    float f49 = f43 - f47;
    float f50 = f39.z;
    float f51 = max(f39.w - (f50 * f50), f46.y);
    float f52 = f44 - f50;
    vec3 f53 = (f24 * f24).xyz;
    float f54 = CB0[26].w * f2;
    float f55 = max(f17.y, 0.04500000178813934326171875);
    vec3 f56 = reflect(-f1, f21);
    float f57 = f55 * 5.0;
    vec3 f58 = vec4(f56, f57).xyz;
    vec3 f59 = textureLod(PrefilteredEnvIndoorTexture, f58, f57).xyz;
    vec3 f60;
    if (CB0[27].w == 0.0)
    {
        f60 = f59;
    }
    else
    {
        f60 = mix(f59, textureLod(PrefilteredEnvBlendTargetTexture, f58, f57).xyz, vec3(CB0[27].w));
    }
    vec4 f61 = texture(PrecomputedBRDFTexture, vec2(f55, max(9.9999997473787516355514526367188e-05, dot(f21, f1))));
    float f62 = f17.x * f54;
    vec3 f63 = mix(vec3(0.039999999105930328369140625), f53, vec3(f62));
    vec3 f64 = normalize(f22 + f1);
    float f65 = clamp(f23 * ((f23 > 0.0) ? mix(f34, mix(min((f43 <= f47) ? 1.0 : clamp(((f48 / (f48 + (f49 * f49))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f44 <= f50) ? 1.0 : clamp(((f51 / (f51 + (f52 * f52))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f34, clamp((length(f25 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)), CB0[47].x) : 0.0), 0.0, 1.0);
    float f66 = f55 * f55;
    float f67 = max(0.001000000047497451305389404296875, dot(f21, f64));
    float f68 = dot(f22, f64);
    float f69 = 1.0 - f68;
    float f70 = f69 * f69;
    float f71 = (f70 * f70) * f69;
    vec3 f72 = vec3(f71) + (f63 * (1.0 - f71));
    float f73 = f66 * f66;
    float f74 = (((f67 * f73) - f67) * f67) + 1.0;
    float f75 = 1.0 - f62;
    float f76 = f54 * f75;
    vec3 f77 = vec3(f75);
    float f78 = f61.x;
    float f79 = f61.y;
    vec3 f80 = ((f63 * f78) + vec3(f79)) / vec3(f78 + f79);
    vec3 f81 = f21 * f21;
    bvec3 f82 = lessThan(f21, vec3(0.0));
    vec3 f83 = vec3(f82.x ? f81.x : vec3(0.0).x, f82.y ? f81.y : vec3(0.0).y, f82.z ? f81.z : vec3(0.0).z);
    vec3 f84 = f81 - f83;
    float f85 = f84.x;
    float f86 = f84.y;
    float f87 = f84.z;
    float f88 = f83.x;
    float f89 = f83.y;
    float f90 = f83.z;
    vec3 f91 = (((((((f77 - (f72 * f76)) * CB0[10].xyz) * f65) + ((f31.xyz * (f31.w * 120.0)).xyz * 1.0)) + ((f77 - (f80 * f76)) * (((((((CB0[35].xyz * f85) + (CB0[37].xyz * f86)) + (CB0[39].xyz * f87)) + (CB0[36].xyz * f88)) + (CB0[38].xyz * f89)) + (CB0[40].xyz * f90)) + (((((((CB0[29].xyz * f85) + (CB0[31].xyz * f86)) + (CB0[33].xyz * f87)) + (CB0[30].xyz * f88)) + (CB0[32].xyz * f89)) + (CB0[34].xyz * f90)) * f33)))) + ((CB0[27].xyz + (CB0[28].xyz * f33)) * 1.0)) * f53) + (((f72 * (((f73 + (f73 * f73)) / (((f74 * f74) * ((f68 * 3.0) + 0.5)) * ((f67 * 0.75) + 0.25))) * f65)) * CB0[10].xyz) + ((mix(f60, textureLod(PrefilteredEnvTexture, f58, f57).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f56.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f33)) * f80) * f54));
    float f92 = f11.w;
    vec4 f93 = vec4(f91.x, f91.y, f91.z, vec4(0.0).w);
    f93.w = f92;
    float f94 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f95 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f94) * 5.0).xyz;
    bvec3 f96 = bvec3(CB0[13].w != 0.0);
    vec3 f97 = sqrt(clamp(mix(vec3(f96.x ? CB0[14].xyz.x : f95.x, f96.y ? CB0[14].xyz.y : f95.y, f96.z ? CB0[14].xyz.z : f95.z), f93.xyz, vec3(f94)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * f7));
    vec4 f98 = vec4(f97.x, f97.y, f97.z, f93.w);
    f98.w = f92;
    _entryPointOutput = f98;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$Tc2DiffuseMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
