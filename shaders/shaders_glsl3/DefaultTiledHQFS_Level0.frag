#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec2 f2 = VARYING1;
    f2.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f3 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f4 = VARYING0 * CB2[0].x;
    vec4 f5 = texture(DiffuseMapTexture, f4);
    vec2 f6 = texture(NormalMapTexture, f4).wy * 2.0;
    vec2 f7 = f6 - vec2(1.0);
    float f8 = sqrt(clamp(1.0 + dot(vec2(1.0) - f6, f7), 0.0, 1.0));
    vec2 f9 = (vec3(f7, f8).xy + (vec3((texture(NormalDetailMapTexture, f4 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f3;
    float f10 = f9.x;
    vec4 f11 = texture(SpecularMapTexture, f4);
    vec3 f12 = normalize(((VARYING6.xyz * f10) + (cross(VARYING5.xyz, VARYING6.xyz) * f9.y)) + (VARYING5.xyz * f8));
    vec3 f13 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f5.w + CB2[2].w, 0.0, 1.0))) * f5.xyz) * (1.0 + (f10 * CB2[0].z))) * (texture(StudsMapTexture, f2).x * 2.0), VARYING2.w).xyz;
    vec3 f14 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f15 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec3 f20 = (f18.xyz * (f18.w * 120.0)).xyz;
    float f21 = f19.x;
    vec4 f22 = texture(ShadowMapTexture, f14.xy);
    float f23 = f14.z;
    vec3 f24 = (f13 * f13).xyz;
    float f25 = CB0[26].w * f3;
    float f26 = max(f11.y, 0.04500000178813934326171875);
    vec3 f27 = reflect(-f1, f12);
    float f28 = f26 * 5.0;
    vec3 f29 = vec4(f27, f28).xyz;
    vec4 f30 = texture(PrecomputedBRDFTexture, vec2(f26, max(9.9999997473787516355514526367188e-05, dot(f12, f1))));
    float f31 = f11.x * f25;
    vec3 f32 = mix(vec3(0.039999999105930328369140625), f24, vec3(f31));
    vec3 f33 = -CB0[11].xyz;
    float f34 = dot(f12, f33) * ((1.0 - ((step(f22.x, f23) * clamp(CB0[24].z + (CB0[24].w * abs(f23 - 0.5)), 0.0, 1.0)) * f22.y)) * f19.y);
    vec3 f35 = normalize(f33 + f1);
    float f36 = clamp(f34, 0.0, 1.0);
    float f37 = f26 * f26;
    float f38 = max(0.001000000047497451305389404296875, dot(f12, f35));
    float f39 = dot(f33, f35);
    float f40 = 1.0 - f39;
    float f41 = f40 * f40;
    float f42 = (f41 * f41) * f40;
    vec3 f43 = vec3(f42) + (f32 * (1.0 - f42));
    float f44 = f37 * f37;
    float f45 = (((f38 * f44) - f38) * f38) + 1.0;
    float f46 = 1.0 - f31;
    float f47 = f25 * f46;
    vec3 f48 = vec3(f46);
    float f49 = f30.x;
    float f50 = f30.y;
    vec3 f51 = ((f32 * f49) + vec3(f50)) / vec3(f49 + f50);
    vec3 f52 = f48 - (f51 * f47);
    vec3 f53 = f12 * f12;
    bvec3 f54 = lessThan(f12, vec3(0.0));
    vec3 f55 = vec3(f54.x ? f53.x : vec3(0.0).x, f54.y ? f53.y : vec3(0.0).y, f54.z ? f53.z : vec3(0.0).z);
    vec3 f56 = f53 - f55;
    float f57 = f56.x;
    float f58 = f56.y;
    float f59 = f56.z;
    float f60 = f55.x;
    float f61 = f55.y;
    float f62 = f55.z;
    vec3 f63 = (mix(textureLod(PrefilteredEnvIndoorTexture, f29, f28).xyz * f20, textureLod(PrefilteredEnvTexture, f29, f28).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f27.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f21)) * f51) * f25;
    vec3 f64 = ((((((((f48 - (f43 * f47)) * CB0[10].xyz) * f36) + (CB0[12].xyz * (f46 * clamp(-f34, 0.0, 1.0)))) + (f52 * (((((((CB0[35].xyz * f57) + (CB0[37].xyz * f58)) + (CB0[39].xyz * f59)) + (CB0[36].xyz * f60)) + (CB0[38].xyz * f61)) + (CB0[40].xyz * f62)) + (((((((CB0[29].xyz * f57) + (CB0[31].xyz * f58)) + (CB0[33].xyz * f59)) + (CB0[30].xyz * f60)) + (CB0[32].xyz * f61)) + (CB0[34].xyz * f62)) * f21)))) + (CB0[27].xyz + (CB0[28].xyz * f21))) * f24) + (((f43 * (((f44 + (f44 * f44)) / (((f45 * f45) * ((f39 * 3.0) + 0.5)) * ((f38 * 0.75) + 0.25))) * f36)) * CB0[10].xyz) + f63)) + (f20 * mix(f24, f63 * (1.0 / (max(max(f63.x, f63.y), f63.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f52) * (f25 * (1.0 - f21))));
    vec4 f65 = vec4(f64.x, f64.y, f64.z, vec4(0.0).w);
    f65.w = VARYING2.w;
    float f66 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f67 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f66) * 5.0).xyz;
    bvec3 f68 = bvec3(CB0[13].w != 0.0);
    vec3 f69 = sqrt(clamp(mix(vec3(f68.x ? CB0[14].xyz.x : f67.x, f68.y ? CB0[14].xyz.y : f67.y, f68.z ? CB0[14].xyz.z : f67.z), f65.xyz, vec3(f66)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f70 = vec4(f69.x, f69.y, f69.z, f65.w);
    f70.w = VARYING2.w;
    _entryPointOutput = f70;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
