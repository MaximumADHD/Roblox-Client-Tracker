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
uniform samplerCube PrefilteredEnvBlendTargetTexture;
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
    vec4 f6 = texture(WangTileMapTexture, f5 * vec2(0.0078125));
    vec2 f7 = f5 * 0.25;
    vec2 f8 = dFdx(f7);
    vec2 f9 = dFdy(f7);
    vec4 f10 = vec4(f8, f9);
    vec2 f11 = (f6.xy * 0.99609375) + (fract(f5) * 0.25);
    vec2 f12 = f10.xy;
    vec2 f13 = f10.zw;
    vec4 f14 = textureGrad(DiffuseMapTexture, f11, f12, f13);
    vec2 f15 = textureGrad(NormalMapTexture, f11, f12, f13).wy * 2.0;
    vec2 f16 = f15 - vec2(1.0);
    float f17 = sqrt(clamp(1.0 + dot(vec2(1.0) - f15, f16), 0.0, 1.0));
    vec4 f18 = texture(NormalDetailMapTexture, f4 * CB2[0].w);
    vec2 f19 = (vec3(f16, f17).xy + (vec3((f18.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f3;
    float f20 = f19.x;
    vec4 f21 = texture(StudsMapTexture, f2);
    vec4 f22 = textureGrad(SpecularMapTexture, f11, f12, f13);
    float f23 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f24 = VARYING6.xyz * f23;
    vec3 f25 = VARYING5.xyz * f23;
    vec3 f26 = normalize(((f24 * f20) + (cross(f25, f24) * f19.y)) + (f25 * f17));
    vec3 f27 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f14.w + CB2[2].w, 0.0, 1.0))) * f14.xyz) * (1.0 + (f20 * CB2[0].z))) * (f21.x * 2.0), VARYING2.w).xyz;
    vec3 f28 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f29 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f30 = VARYING3.yzx - (VARYING3.yzx * f29);
    vec4 f31 = texture(LightMapTexture, f30);
    vec4 f32 = texture(LightGridSkylightTexture, f30);
    vec4 f33 = vec4(clamp(f29, 0.0, 1.0));
    vec4 f34 = mix(f31, vec4(0.0), f33);
    vec4 f35 = mix(f32, vec4(1.0), f33);
    float f36 = f35.x;
    vec4 f37 = texture(ShadowMapTexture, f28.xy);
    float f38 = f28.z;
    vec3 f39 = (f27 * f27).xyz;
    float f40 = CB0[26].w * f3;
    float f41 = max(f22.y, 0.04500000178813934326171875);
    vec3 f42 = reflect(-f1, f26);
    float f43 = f41 * 5.0;
    vec3 f44 = vec4(f42, f43).xyz;
    vec3 f45 = textureLod(PrefilteredEnvIndoorTexture, f44, f43).xyz;
    vec3 f46;
    if (CB0[27].w == 0.0)
    {
        f46 = f45;
    }
    else
    {
        f46 = mix(f45, textureLod(PrefilteredEnvBlendTargetTexture, f44, f43).xyz, vec3(CB0[27].w));
    }
    vec4 f47 = texture(PrecomputedBRDFTexture, vec2(f41, max(9.9999997473787516355514526367188e-05, dot(f26, f1))));
    float f48 = f22.x * f40;
    vec3 f49 = mix(vec3(0.039999999105930328369140625), f39, vec3(f48));
    vec3 f50 = -CB0[11].xyz;
    float f51 = dot(f26, f50) * ((1.0 - ((step(f37.x, f38) * clamp(CB0[24].z + (CB0[24].w * abs(f38 - 0.5)), 0.0, 1.0)) * f37.y)) * f35.y);
    vec3 f52 = normalize(f50 + f1);
    float f53 = clamp(f51, 0.0, 1.0);
    float f54 = f41 * f41;
    float f55 = max(0.001000000047497451305389404296875, dot(f26, f52));
    float f56 = dot(f50, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (f49 * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    float f63 = 1.0 - f48;
    float f64 = f40 * f63;
    vec3 f65 = vec3(f63);
    float f66 = f47.x;
    float f67 = f47.y;
    vec3 f68 = ((f49 * f66) + vec3(f67)) / vec3(f66 + f67);
    vec3 f69 = f26 * f26;
    bvec3 f70 = lessThan(f26, vec3(0.0));
    vec3 f71 = vec3(f70.x ? f69.x : vec3(0.0).x, f70.y ? f69.y : vec3(0.0).y, f70.z ? f69.z : vec3(0.0).z);
    vec3 f72 = f69 - f71;
    float f73 = f72.x;
    float f74 = f72.y;
    float f75 = f72.z;
    float f76 = f71.x;
    float f77 = f71.y;
    float f78 = f71.z;
    vec3 f79 = ((((((((f65 - (f60 * f64)) * CB0[10].xyz) * f53) + (CB0[12].xyz * (f63 * clamp(-f51, 0.0, 1.0)))) + ((f34.xyz * (f34.w * 120.0)).xyz * 1.0)) + ((f65 - (f68 * f64)) * (((((((CB0[35].xyz * f73) + (CB0[37].xyz * f74)) + (CB0[39].xyz * f75)) + (CB0[36].xyz * f76)) + (CB0[38].xyz * f77)) + (CB0[40].xyz * f78)) + (((((((CB0[29].xyz * f73) + (CB0[31].xyz * f74)) + (CB0[33].xyz * f75)) + (CB0[30].xyz * f76)) + (CB0[32].xyz * f77)) + (CB0[34].xyz * f78)) * f36)))) + ((CB0[27].xyz + (CB0[28].xyz * f36)) * 1.0)) * f39) + (((f60 * (((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25))) * f53)) * CB0[10].xyz) + ((mix(f46, textureLod(PrefilteredEnvTexture, f44, f43).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f42.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f36)) * f68) * f40));
    vec4 f80 = vec4(f79.x, f79.y, f79.z, vec4(0.0).w);
    f80.w = VARYING2.w;
    float f81 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f82 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f81) * 5.0).xyz;
    bvec3 f83 = bvec3(CB0[13].w != 0.0);
    vec3 f84 = sqrt(clamp(mix(vec3(f83.x ? CB0[14].xyz.x : f82.x, f83.y ? CB0[14].xyz.y : f82.y, f83.z ? CB0[14].xyz.z : f82.z), f80.xyz, vec3(f81)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f85 = vec4(f84.x, f84.y, f84.z, f80.w);
    f85.w = VARYING2.w;
    _entryPointOutput = f85;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
