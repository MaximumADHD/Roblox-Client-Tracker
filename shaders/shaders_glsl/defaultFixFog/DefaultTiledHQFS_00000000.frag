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
    vec2 f0 = VARYING0 * CB2[0].x;
    vec4 f1 = texture2D(DiffuseMapTexture, f0);
    vec2 f2 = texture2D(NormalMapTexture, f0).wy * 2.0;
    vec2 f3 = f2 - vec2(1.0);
    float f4 = sqrt(clamp(1.0 + dot(vec2(1.0) - f2, f3), 0.0, 1.0));
    vec3 f5 = vec3(f3, f4);
    vec2 f6 = f5.xy + (vec3((texture2D(NormalDetailMapTexture, f0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f7 = f5;
    f7.x = f6.x;
    vec3 f8 = f7;
    f8.y = f6.y;
    vec2 f9 = f8.xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    float f10 = f9.x;
    vec4 f11 = texture2D(SpecularMapTexture, f0);
    vec4 f12 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f1.w, CB2[3].w))) * f1.xyz) * (1.0 + (f10 * 0.20000000298023223876953125)), VARYING2.w);
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f10) + (cross(f15, f14) * f9.y)) + (f15 * f4));
    vec3 f17 = f12.xyz;
    vec3 f18 = f17 * f17;
    vec4 f19 = f12;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = length(VARYING4.xyz);
    vec3 f23 = VARYING4.xyz / vec3(f22);
    float f24 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f25 = 0.08900000154972076416015625 + (f11.y * 0.9110000133514404296875);
    float f26 = f11.x * f24;
    vec3 f27 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f28 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f29 = VARYING3.yzx - (VARYING3.yzx * f28);
    vec4 f30 = vec4(clamp(f28, 0.0, 1.0));
    vec4 f31 = mix(texture3D(LightMapTexture, f29), vec4(0.0), f30);
    vec4 f32 = mix(texture3D(LightGridSkylightTexture, f29), vec4(1.0), f30);
    vec4 f33 = texture2D(ShadowMapTexture, f27.xy);
    float f34 = f27.z;
    vec3 f35 = -CB0[16].xyz;
    float f36 = dot(f16, f35) * ((1.0 - ((step(f33.x, f34) * clamp(CB0[29].z + (CB0[29].w * abs(f34 - 0.5)), 0.0, 1.0)) * f33.y)) * f32.y);
    vec3 f37 = normalize(f23 + f35);
    float f38 = clamp(f36, 0.0, 1.0);
    float f39 = f25 * f25;
    float f40 = max(0.001000000047497451305389404296875, dot(f16, f37));
    float f41 = dot(f35, f37);
    float f42 = 1.0 - f41;
    float f43 = f42 * f42;
    float f44 = (f43 * f43) * f42;
    vec3 f45 = vec3(f44) + (mix(vec3(0.039999999105930328369140625), f21.xyz, vec3(f26)) * (1.0 - f44));
    float f46 = f39 * f39;
    float f47 = (((f40 * f46) - f40) * f40) + 1.0;
    float f48 = 1.0 - f26;
    vec3 f49 = ((((((vec3(f48) - (f45 * (f24 * f48))) * CB0[15].xyz) * f38) + (CB0[17].xyz * (f48 * clamp(-f36, 0.0, 1.0)))) + (min((f31.xyz * (f31.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f32.x)), vec3(CB0[21].w)) * 1.0)) * f21.xyz) + (((f45 * (((f46 + (f46 * f46)) / (((f47 * f47) * ((f41 * 3.0) + 0.5)) * ((f40 * 0.75) + 0.25))) * f38)) * CB0[15].xyz) * 1.0);
    vec4 f50 = vec4(0.0);
    f50.x = f49.x;
    vec4 f51 = f50;
    f51.y = f49.y;
    vec4 f52 = f51;
    f52.z = f49.z;
    vec4 f53 = f52;
    f53.w = VARYING2.w;
    vec3 f54 = -f23;
    vec3 f55 = f54 * f54;
    bvec3 f56 = lessThan(f54, vec3(0.0));
    vec3 f57 = vec3(f56.x ? f55.x : vec3(0.0).x, f56.y ? f55.y : vec3(0.0).y, f56.z ? f55.z : vec3(0.0).z);
    vec3 f58 = f55 - f57;
    vec3 f59 = (((((CB0[34].xyz * f58.x) + (CB0[36].xyz * f58.y)) + (CB0[38].xyz * f58.z)) + (CB0[35].xyz * f57.x)) + (CB0[37].xyz * f57.y)) + (CB0[39].xyz * f57.z);
    bvec3 f60 = bvec3(!(CB0[18].w == 0.0));
    vec3 f61 = mix(vec3(f60.x ? CB0[19].xyz.x : f59.x, f60.y ? CB0[19].xyz.y : f59.y, f60.z ? CB0[19].xyz.z : f59.z), f53.xyz, vec3(clamp(exp2((CB0[18].z * f22) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f62 = f53;
    f62.x = f61.x;
    vec4 f63 = f62;
    f63.y = f61.y;
    vec4 f64 = f63;
    f64.z = f61.z;
    vec3 f65 = sqrt(clamp(f64.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f66 = f64;
    f66.x = f65.x;
    vec4 f67 = f66;
    f67.y = f65.y;
    vec4 f68 = f67;
    f68.z = f65.z;
    vec4 f69 = f68;
    f69.w = VARYING2.w;
    gl_FragData[0] = f69;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
