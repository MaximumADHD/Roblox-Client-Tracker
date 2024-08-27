#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    vec4 f2 = mix(texture2D(DiffuseMapTexture, f1 * CB2[1].y), texture2D(DiffuseMapTexture, f1), vec4(clamp((f0.x * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec2 f3 = texture2D(NormalMapTexture, f1).wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    float f5 = sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0));
    vec3 f6 = vec3(f4, f5);
    vec2 f7 = f6.xy + (vec3((texture2D(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f8 = f6;
    f8.x = f7.x;
    vec3 f9 = f8;
    f9.y = f7.y;
    vec2 f10 = f9.xy * f0.y;
    float f11 = f10.x;
    vec4 f12 = texture2D(SpecularMapTexture, f1);
    vec4 f13 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f2.w, CB2[3].w))) * f2.xyz) * (1.0 + (f11 * 0.20000000298023223876953125)), VARYING2.w);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f11) + (cross(f16, f15) * f10.y)) + (f16 * f5));
    vec3 f18 = f13.xyz;
    vec3 f19 = f18 * f18;
    vec4 f20 = f13;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    float f23 = length(VARYING4.xyz);
    vec3 f24 = VARYING4.xyz / vec3(f23);
    float f25 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f26 = 0.08900000154972076416015625 + (f12.y * 0.9110000133514404296875);
    float f27 = f12.x * f25;
    vec3 f28 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f29 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f30 = VARYING3.yzx - (VARYING3.yzx * f29);
    vec4 f31 = vec4(clamp(f29, 0.0, 1.0));
    vec4 f32 = mix(texture3D(LightMapTexture, f30), vec4(0.0), f31);
    vec4 f33 = mix(texture3D(LightGridSkylightTexture, f30), vec4(1.0), f31);
    vec4 f34 = texture2D(ShadowMapTexture, f28.xy);
    float f35 = f28.z;
    vec3 f36 = -CB0[16].xyz;
    float f37 = dot(f17, f36) * ((1.0 - ((step(f34.x, f35) * clamp(CB0[29].z + (CB0[29].w * abs(f35 - 0.5)), 0.0, 1.0)) * f34.y)) * f33.y);
    vec3 f38 = normalize(f24 + f36);
    float f39 = clamp(f37, 0.0, 1.0);
    float f40 = f26 * f26;
    float f41 = max(0.001000000047497451305389404296875, dot(f17, f38));
    float f42 = dot(f36, f38);
    float f43 = 1.0 - f42;
    float f44 = f43 * f43;
    float f45 = (f44 * f44) * f43;
    vec3 f46 = vec3(f45) + (mix(vec3(0.039999999105930328369140625), f22.xyz, vec3(f27)) * (1.0 - f45));
    float f47 = f40 * f40;
    float f48 = (((f41 * f47) - f41) * f41) + 1.0;
    float f49 = 1.0 - f27;
    vec3 f50 = ((((((vec3(f49) - (f46 * (f25 * f49))) * CB0[15].xyz) * f39) + (CB0[17].xyz * (f49 * clamp(-f37, 0.0, 1.0)))) + (min((f32.xyz * (f32.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f33.x)), vec3(CB0[21].w)) * 1.0)) * f22.xyz) + (((f46 * (((f47 + (f47 * f47)) / (((f48 * f48) * ((f42 * 3.0) + 0.5)) * ((f41 * 0.75) + 0.25))) * f39)) * CB0[15].xyz) * 1.0);
    vec4 f51 = vec4(0.0);
    f51.x = f50.x;
    vec4 f52 = f51;
    f52.y = f50.y;
    vec4 f53 = f52;
    f53.z = f50.z;
    vec4 f54 = f53;
    f54.w = VARYING2.w;
    vec3 f55 = -f24;
    vec3 f56 = f55 * f55;
    bvec3 f57 = lessThan(f55, vec3(0.0));
    vec3 f58 = vec3(f57.x ? f56.x : vec3(0.0).x, f57.y ? f56.y : vec3(0.0).y, f57.z ? f56.z : vec3(0.0).z);
    vec3 f59 = f56 - f58;
    vec3 f60 = (((((CB0[34].xyz * f59.x) + (CB0[36].xyz * f59.y)) + (CB0[38].xyz * f59.z)) + (CB0[35].xyz * f58.x)) + (CB0[37].xyz * f58.y)) + (CB0[39].xyz * f58.z);
    bvec3 f61 = bvec3(!(CB0[18].w == 0.0));
    vec3 f62 = mix(vec3(f61.x ? CB0[19].xyz.x : f60.x, f61.y ? CB0[19].xyz.y : f60.y, f61.z ? CB0[19].xyz.z : f60.z), f54.xyz, vec3(clamp(exp2((CB0[18].z * f23) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f63 = f54;
    f63.x = f62.x;
    vec4 f64 = f63;
    f64.y = f62.y;
    vec4 f65 = f64;
    f65.z = f62.z;
    vec3 f66 = sqrt(clamp(f65.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f67 = f65;
    f67.x = f66.x;
    vec4 f68 = f67;
    f68.y = f66.y;
    vec4 f69 = f68;
    f69.z = f66.z;
    vec4 f70 = f69;
    f70.w = VARYING2.w;
    gl_FragData[0] = f70;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
