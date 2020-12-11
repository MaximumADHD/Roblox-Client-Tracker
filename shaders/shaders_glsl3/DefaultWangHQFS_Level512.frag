#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D WangTileMapTexture;
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
    vec2 f5 = f4 * 4.0;
    vec2 f6 = f5 * 0.25;
    vec4 f7 = vec4(dFdx(f6), dFdy(f6));
    vec2 f8 = (texture(WangTileMapTexture, f5 * vec2(0.0078125)).xy * 0.99609375) + (fract(f5) * 0.25);
    vec2 f9 = f7.xy;
    vec2 f10 = f7.zw;
    vec4 f11 = textureGrad(DiffuseMapTexture, f8, f9, f10);
    vec2 f12 = textureGrad(NormalMapTexture, f8, f9, f10).wy * 2.0;
    vec2 f13 = f12 - vec2(1.0);
    float f14 = sqrt(clamp(1.0 + dot(vec2(1.0) - f12, f13), 0.0, 1.0));
    vec2 f15 = (vec3(f13, f14).xy + (vec3((texture(NormalDetailMapTexture, f4 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f3;
    float f16 = f15.x;
    vec4 f17 = textureGrad(SpecularMapTexture, f8, f9, f10);
    vec3 f18 = normalize(((VARYING6.xyz * f16) + (cross(VARYING5.xyz, VARYING6.xyz) * f15.y)) + (VARYING5.xyz * f14));
    vec3 f19 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f11.w + CB2[2].w, 0.0, 1.0))) * f11.xyz) * (1.0 + (f16 * CB2[0].z))) * (texture(StudsMapTexture, f2).x * 2.0), VARYING2.w).xyz;
    vec3 f20 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f21 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING3.yzx - (VARYING3.yzx * f21);
    vec4 f23 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f24 = mix(texture(LightMapTexture, f22), vec4(0.0), f23);
    vec4 f25 = mix(texture(LightGridSkylightTexture, f22), vec4(1.0), f23);
    float f26 = f25.x;
    vec4 f27 = texture(ShadowMapTexture, f20.xy);
    float f28 = f20.z;
    vec3 f29 = (f19 * f19).xyz;
    float f30 = CB0[26].w * f3;
    float f31 = max(f17.y, 0.04500000178813934326171875);
    vec3 f32 = reflect(-f1, f18);
    float f33 = f31 * 5.0;
    vec3 f34 = vec4(f32, f33).xyz;
    vec4 f35 = texture(PrecomputedBRDFTexture, vec2(f31, max(9.9999997473787516355514526367188e-05, dot(f18, f1))));
    float f36 = f17.x * f30;
    vec3 f37 = mix(vec3(0.039999999105930328369140625), f29, vec3(f36));
    vec3 f38 = -CB0[11].xyz;
    float f39 = dot(f18, f38) * ((1.0 - ((step(f27.x, f28) * clamp(CB0[24].z + (CB0[24].w * abs(f28 - 0.5)), 0.0, 1.0)) * f27.y)) * f25.y);
    vec3 f40 = normalize(f38 + f1);
    float f41 = clamp(f39, 0.0, 1.0);
    float f42 = f31 * f31;
    float f43 = max(0.001000000047497451305389404296875, dot(f18, f40));
    float f44 = dot(f38, f40);
    float f45 = 1.0 - f44;
    float f46 = f45 * f45;
    float f47 = (f46 * f46) * f45;
    vec3 f48 = vec3(f47) + (f37 * (1.0 - f47));
    float f49 = f42 * f42;
    float f50 = (((f43 * f49) - f43) * f43) + 1.0;
    float f51 = 1.0 - f36;
    float f52 = f30 * f51;
    vec3 f53 = vec3(f51);
    float f54 = f35.x;
    float f55 = f35.y;
    vec3 f56 = ((f37 * f54) + vec3(f55)) / vec3(f54 + f55);
    vec3 f57 = f53 - (f56 * f52);
    vec3 f58 = f18 * f18;
    bvec3 f59 = lessThan(f18, vec3(0.0));
    vec3 f60 = vec3(f59.x ? f58.x : vec3(0.0).x, f59.y ? f58.y : vec3(0.0).y, f59.z ? f58.z : vec3(0.0).z);
    vec3 f61 = f58 - f60;
    float f62 = f61.x;
    float f63 = f61.y;
    float f64 = f61.z;
    float f65 = f60.x;
    float f66 = f60.y;
    float f67 = f60.z;
    vec3 f68 = ((((((CB0[35].xyz * f62) + (CB0[37].xyz * f63)) + (CB0[39].xyz * f64)) + (CB0[36].xyz * f65)) + (CB0[38].xyz * f66)) + (CB0[40].xyz * f67)) + (((((((CB0[29].xyz * f62) + (CB0[31].xyz * f63)) + (CB0[33].xyz * f64)) + (CB0[30].xyz * f65)) + (CB0[32].xyz * f66)) + (CB0[34].xyz * f67)) * f26);
    vec3 f69 = (mix(textureLod(PrefilteredEnvIndoorTexture, f34, f33).xyz, textureLod(PrefilteredEnvTexture, f34, f33).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f32.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f26)) * f56) * f30;
    vec3 f70 = ((((((((f53 - (f48 * f52)) * CB0[10].xyz) * f41) + (CB0[12].xyz * (f51 * clamp(-f39, 0.0, 1.0)))) + ((f57 * f68) * CB0[25].w)) + ((CB0[27].xyz + (CB0[28].xyz * f26)) * 1.0)) * f29) + (((f48 * (((f49 + (f49 * f49)) / (((f50 * f50) * ((f44 * 3.0) + 0.5)) * ((f43 * 0.75) + 0.25))) * f41)) * CB0[10].xyz) + f69)) + (((f24.xyz * (f24.w * 120.0)).xyz * mix(f29, f69 * (1.0 / (max(max(f68.x, f68.y), f68.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f57) * (f30 * (1.0 - f26)))) * 1.0);
    vec4 f71 = vec4(f70.x, f70.y, f70.z, vec4(0.0).w);
    f71.w = VARYING2.w;
    float f72 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f73 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f72) * 5.0).xyz;
    bvec3 f74 = bvec3(CB0[13].w != 0.0);
    vec3 f75 = sqrt(clamp(mix(vec3(f74.x ? CB0[14].xyz.x : f73.x, f74.y ? CB0[14].xyz.y : f73.y, f74.z ? CB0[14].xyz.z : f73.z), f71.xyz, vec3(f72)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f76 = vec4(f75.x, f75.y, f75.z, f71.w);
    f76.w = VARYING2.w;
    _entryPointOutput = f76;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
