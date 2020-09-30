#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <SAParams.h>
uniform vec4 CB0[52];
uniform vec4 CB8[24];
uniform vec4 CB3[1];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
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
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f3 = texture(DiffuseMapTexture, VARYING0);
    float f4 = f3.w;
    float f5 = fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    if (smoothstep(0.0, 1.0, f4) < (f5 + ((fract(CB0[46].z) - f5) * clamp((0.001000000047497451305389404296875 * floor(CB0[46].z)) * VARYING4.w, 0.0, 1.0))))
    {
        discard;
    }
    vec4 f6 = vec4(mix(VARYING2.xyz, f3.xyz, vec3(f4)), VARYING2.w);
    vec4 f7 = vec4(f3.xyz, VARYING2.w * f4);
    bvec4 f8 = bvec4(CB3[0].x != 0.0);
    vec4 f9 = vec4(f8.x ? f6.x : f7.x, f8.y ? f6.y : f7.y, f8.z ? f6.z : f7.z, f8.w ? f6.w : f7.w);
    vec2 f10 = texture(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0));
    vec2 f13 = vec3(f11, f12).xy * f2;
    vec4 f14 = texture(SpecularMapTexture, VARYING0);
    vec3 f15 = normalize(((VARYING6.xyz * f13.x) + ((cross(VARYING5.xyz, VARYING6.xyz) * VARYING6.w) * f13.y)) + (VARYING5.xyz * f12));
    vec3 f16 = -CB0[11].xyz;
    float f17 = dot(f15, f16);
    vec3 f18 = f9.xyz;
    vec3 f19 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f20 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING3.yzx - (VARYING3.yzx * f20);
    vec4 f22 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f23 = mix(texture(LightMapTexture, f21), vec4(0.0), f22);
    vec4 f24 = mix(texture(LightGridSkylightTexture, f21), vec4(1.0), f22);
    vec3 f25 = (f23.xyz * (f23.w * 120.0)).xyz;
    float f26 = f24.x;
    float f27 = f24.y;
    vec3 f28 = f19 - CB0[41].xyz;
    vec3 f29 = f19 - CB0[42].xyz;
    vec3 f30 = f19 - CB0[43].xyz;
    vec4 f31 = vec4(f19, 1.0) * mat4(CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f32 = textureLod(ShadowAtlasTexture, f31.xy, 0.0);
    vec2 f33 = vec2(0.0);
    f33.x = CB0[45].z;
    vec2 f34 = f33;
    f34.y = CB0[45].w;
    float f35 = (2.0 * f31.z) - 1.0;
    float f36 = exp(CB0[45].z * f35);
    float f37 = -exp((-CB0[45].w) * f35);
    vec2 f38 = (f34 * CB0[46].y) * vec2(f36, f37);
    vec2 f39 = f38 * f38;
    float f40 = f32.x;
    float f41 = max(f32.y - (f40 * f40), f39.x);
    float f42 = f36 - f40;
    float f43 = f32.z;
    float f44 = max(f32.w - (f43 * f43), f39.y);
    float f45 = f37 - f43;
    vec3 f46 = (f18 * f18).xyz;
    float f47 = CB0[26].w * f2;
    float f48 = max(f14.y, 0.04500000178813934326171875);
    vec3 f49 = reflect(-f1, f15);
    float f50 = f48 * 5.0;
    vec3 f51 = vec4(f49, f50).xyz;
    vec4 f52 = texture(PrecomputedBRDFTexture, vec2(f48, max(9.9999997473787516355514526367188e-05, dot(f15, f1))));
    float f53 = f14.x * f47;
    vec3 f54 = mix(vec3(0.039999999105930328369140625), f46, vec3(f53));
    vec3 f55 = normalize(f16 + f1);
    float f56 = clamp(f17 * ((f17 > 0.0) ? mix(f27, mix(min((f36 <= f40) ? 1.0 : clamp(((f41 / (f41 + (f42 * f42))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f37 <= f43) ? 1.0 : clamp(((f44 / (f44 + (f45 * f45))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f27, clamp((length(f19 - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0), 0.0, 1.0);
    float f57 = f48 * f48;
    float f58 = max(0.001000000047497451305389404296875, dot(f15, f55));
    float f59 = dot(f16, f55);
    float f60 = 1.0 - f59;
    float f61 = f60 * f60;
    float f62 = (f61 * f61) * f60;
    vec3 f63 = vec3(f62) + (f54 * (1.0 - f62));
    float f64 = f57 * f57;
    float f65 = (((f58 * f64) - f58) * f58) + 1.0;
    float f66 = 1.0 - f53;
    float f67 = f47 * f66;
    vec3 f68 = vec3(f66);
    float f69 = f52.x;
    float f70 = f52.y;
    vec3 f71 = ((f54 * f69) + vec3(f70)) / vec3(f69 + f70);
    vec3 f72 = f68 - (f71 * f67);
    vec3 f73 = f15 * f15;
    bvec3 f74 = lessThan(f15, vec3(0.0));
    vec3 f75 = vec3(f74.x ? f73.x : vec3(0.0).x, f74.y ? f73.y : vec3(0.0).y, f74.z ? f73.z : vec3(0.0).z);
    vec3 f76 = f73 - f75;
    float f77 = f76.x;
    float f78 = f76.y;
    float f79 = f76.z;
    float f80 = f75.x;
    float f81 = f75.y;
    float f82 = f75.z;
    vec3 f83 = (mix(textureLod(PrefilteredEnvIndoorTexture, f51, f50).xyz * f25, textureLod(PrefilteredEnvTexture, f51, f50).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f49.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f26)) * f71) * f47;
    vec3 f84 = (((((((f68 - (f63 * f67)) * CB0[10].xyz) * f56) + (f72 * (((((((CB0[35].xyz * f77) + (CB0[37].xyz * f78)) + (CB0[39].xyz * f79)) + (CB0[36].xyz * f80)) + (CB0[38].xyz * f81)) + (CB0[40].xyz * f82)) + (((((((CB0[29].xyz * f77) + (CB0[31].xyz * f78)) + (CB0[33].xyz * f79)) + (CB0[30].xyz * f80)) + (CB0[32].xyz * f81)) + (CB0[34].xyz * f82)) * f26)))) + (CB0[27].xyz + (CB0[28].xyz * f26))) * f46) + (((f63 * (((f64 + (f64 * f64)) / (((f65 * f65) * ((f59 * 3.0) + 0.5)) * ((f58 * 0.75) + 0.25))) * f56)) * CB0[10].xyz) + f83)) + (f25 * mix(f46, f83 * (1.0 / (max(max(f83.x, f83.y), f83.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f72) * (f47 * (1.0 - f26))));
    float f85 = f9.w;
    vec4 f86 = vec4(f84.x, f84.y, f84.z, vec4(0.0).w);
    f86.w = f85;
    float f87 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f88 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f87) * 5.0).xyz;
    bvec3 f89 = bvec3(CB0[13].w != 0.0);
    vec3 f90 = sqrt(clamp(mix(vec3(f89.x ? CB0[14].xyz.x : f88.x, f89.y ? CB0[14].xyz.y : f88.y, f89.z ? CB0[14].xyz.z : f88.z), f86.xyz, vec3(f87)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * f5));
    vec4 f91 = vec4(f90.x, f90.y, f90.z, f86.w);
    f91.w = f85;
    _entryPointOutput = f91;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
