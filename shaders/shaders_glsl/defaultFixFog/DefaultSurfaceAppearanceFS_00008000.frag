#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[58];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec3 VARYING7;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    vec3 f1 = f0.xyz;
    vec3 f2 = mix(f1, f1 * VARYING7, vec3(CB3[0].y));
    float f3 = f2.x;
    vec4 f4 = f0;
    f4.x = f3;
    vec4 f5 = f4;
    f5.y = f2.y;
    vec4 f6 = f5;
    f6.z = f2.z;
    float f7 = f0.w;
    vec4 f8 = mix(vec4(f3, f2.yz, VARYING2.w * f7), vec4(mix(VARYING2.xyz, f6.xyz, vec3(f7)), VARYING2.w), vec4(CB3[0].x));
    vec3 f9 = f8.xyz;
    vec3 f10 = f9 * f9;
    vec4 f11 = f8;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    float f14 = length(VARYING4.xyz);
    vec3 f15 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f16 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture3D(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture3D(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec4 f21 = texture2D(ShadowMapTexture, f15.xy);
    float f22 = f15.z;
    float f23 = (1.0 - ((step(f21.x, f22) * clamp(CB0[29].z + (CB0[29].w * abs(f22 - 0.5)), 0.0, 1.0)) * f21.y)) * f20.y;
    vec3 f24 = (((VARYING5.xyz * f23) + min((f19.xyz * (f19.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f20.x)), vec3(CB0[21].w))) * f13.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f13.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f23));
    vec4 f25 = vec4(0.0);
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    float f28 = f8.w;
    vec4 f29 = f27;
    f29.w = f28;
    vec3 f30 = -(VARYING4.xyz / vec3(f14));
    vec3 f31 = f30 * f30;
    bvec3 f32 = lessThan(f30, vec3(0.0));
    vec3 f33 = vec3(f32.x ? f31.x : vec3(0.0).x, f32.y ? f31.y : vec3(0.0).y, f32.z ? f31.z : vec3(0.0).z);
    vec3 f34 = f31 - f33;
    vec3 f35 = (((((CB0[34].xyz * f34.x) + (CB0[36].xyz * f34.y)) + (CB0[38].xyz * f34.z)) + (CB0[35].xyz * f33.x)) + (CB0[37].xyz * f33.y)) + (CB0[39].xyz * f33.z);
    bvec3 f36 = bvec3(!(CB0[18].w == 0.0));
    vec3 f37 = mix(vec3(f36.x ? CB0[19].xyz.x : f35.x, f36.y ? CB0[19].xyz.y : f35.y, f36.z ? CB0[19].xyz.z : f35.z), f29.xyz, vec3(clamp(exp2((CB0[18].z * f14) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f38 = f29;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    vec3 f41 = sqrt(clamp(f40.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f42 = f40;
    f42.x = f41.x;
    vec4 f43 = f42;
    f43.y = f41.y;
    vec4 f44 = f43;
    f44.z = f41.z;
    vec4 f45 = f44;
    f45.w = f28;
    gl_FragData[0] = f45;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
