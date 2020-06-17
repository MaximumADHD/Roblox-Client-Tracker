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
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    vec2 f3 = f2 * 4.0;
    vec2 f4 = f3 * 0.25;
    vec4 f5 = vec4(dFdx(f4), dFdy(f4));
    vec2 f6 = (texture(WangTileMapTexture, f3 * vec2(0.0078125)).xy * 0.99609375) + (fract(f3) * 0.25);
    vec2 f7 = f5.xy;
    vec2 f8 = f5.zw;
    vec4 f9 = textureGrad(DiffuseMapTexture, f6, f7, f8);
    vec2 f10 = textureGrad(NormalMapTexture, f6, f7, f8).wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0));
    vec2 f13 = (vec3(f11, f12).xy + (vec3((texture(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f14 = f13.x;
    vec4 f15 = textureGrad(SpecularMapTexture, f6, f7, f8);
    vec3 f16 = normalize(((VARYING6.xyz * f14) + (cross(VARYING5.xyz, VARYING6.xyz) * f13.y)) + (VARYING5.xyz * f12));
    vec3 f17 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f9.w + CB2[2].w, 0.0, 1.0))) * f9.xyz) * (1.0 + (f14 * CB2[0].z))) * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    vec3 f18 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f19 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING3.yzx - (VARYING3.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture(LightGridSkylightTexture, f20), vec4(1.0), f21);
    vec3 f24 = (f22.xyz * (f22.w * 120.0)).xyz;
    float f25 = f23.x;
    vec4 f26 = texture(ShadowMapTexture, f18.xy);
    float f27 = f18.z;
    float f28 = length(VARYING4.xyz);
    vec3 f29 = VARYING4.xyz / vec3(f28);
    vec3 f30 = (f17 * f17).xyz;
    float f31 = CB0[26].w * f1;
    float f32 = max(f15.y, 0.04500000178813934326171875);
    vec3 f33 = reflect(-f29, f16);
    float f34 = f32 * 5.0;
    vec3 f35 = vec4(f33, f34).xyz;
    vec4 f36 = texture(PrecomputedBRDFTexture, vec2(f32, max(9.9999997473787516355514526367188e-05, dot(f16, f29))));
    float f37 = f15.x * f31;
    vec3 f38 = mix(vec3(0.039999999105930328369140625), f30, vec3(f37));
    vec3 f39 = -CB0[11].xyz;
    float f40 = dot(f16, f39) * ((1.0 - ((step(f26.x, f27) * clamp(CB0[24].z + (CB0[24].w * abs(f27 - 0.5)), 0.0, 1.0)) * f26.y)) * f23.y);
    vec3 f41 = normalize(f39 + f29);
    float f42 = clamp(f40, 0.0, 1.0);
    float f43 = f32 * f32;
    float f44 = max(0.001000000047497451305389404296875, dot(f16, f41));
    float f45 = dot(f39, f41);
    float f46 = 1.0 - f45;
    float f47 = f46 * f46;
    float f48 = (f47 * f47) * f46;
    vec3 f49 = vec3(f48) + (f38 * (1.0 - f48));
    float f50 = f43 * f43;
    float f51 = (((f44 * f50) - f44) * f44) + 1.0;
    float f52 = 1.0 - f37;
    float f53 = f31 * f52;
    vec3 f54 = vec3(f52);
    float f55 = f36.x;
    float f56 = f36.y;
    vec3 f57 = ((f38 * f55) + vec3(f56)) / vec3(f55 + f56);
    vec3 f58 = f54 - (f57 * f53);
    vec3 f59 = f16 * f16;
    bvec3 f60 = lessThan(f16, vec3(0.0));
    vec3 f61 = vec3(f60.x ? f59.x : vec3(0.0).x, f60.y ? f59.y : vec3(0.0).y, f60.z ? f59.z : vec3(0.0).z);
    vec3 f62 = f59 - f61;
    float f63 = f62.x;
    float f64 = f62.y;
    float f65 = f62.z;
    float f66 = f61.x;
    float f67 = f61.y;
    float f68 = f61.z;
    vec3 f69 = (mix(textureLod(PrefilteredEnvIndoorTexture, f35, f34).xyz * f24, textureLod(PrefilteredEnvTexture, f35, f34).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f33.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f25)) * f57) * f31;
    vec3 f70 = ((((((((f54 - (f49 * f53)) * CB0[10].xyz) * f42) + (CB0[12].xyz * (f52 * clamp(-f40, 0.0, 1.0)))) + (f58 * (((((((CB0[35].xyz * f63) + (CB0[37].xyz * f64)) + (CB0[39].xyz * f65)) + (CB0[36].xyz * f66)) + (CB0[38].xyz * f67)) + (CB0[40].xyz * f68)) + (((((((CB0[29].xyz * f63) + (CB0[31].xyz * f64)) + (CB0[33].xyz * f65)) + (CB0[30].xyz * f66)) + (CB0[32].xyz * f67)) + (CB0[34].xyz * f68)) * f25)))) + (CB0[27].xyz + (CB0[28].xyz * f25))) * f30) + (((f49 * (((f50 + (f50 * f50)) / (((f51 * f51) * ((f45 * 3.0) + 0.5)) * ((f44 * 0.75) + 0.25))) * f42)) * CB0[10].xyz) + f69)) + (f24 * mix(f30, f69 * (1.0 / (max(max(f69.x, f69.y), f69.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f58) * (f31 * (1.0 - f25))));
    vec4 f71 = vec4(f70.x, f70.y, f70.z, vec4(0.0).w);
    f71.w = VARYING2.w;
    float f72 = clamp(exp2((CB0[13].z * f28) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
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
