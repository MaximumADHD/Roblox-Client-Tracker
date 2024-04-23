#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[57];
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

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    vec4 f2 = mix(vec4(f0.xyz, VARYING2.w * f1), vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w), vec4(CB3[0].x));
    vec3 f3 = f2.xyz;
    vec3 f4 = f3 * f3;
    vec4 f5 = f2;
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    float f8 = length(VARYING4.xyz);
    vec3 f9 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f10 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f11 = VARYING3.yzx - (VARYING3.yzx * f10);
    vec4 f12 = vec4(clamp(f10, 0.0, 1.0));
    vec4 f13 = mix(texture3D(LightMapTexture, f11), vec4(0.0), f12);
    vec4 f14 = mix(texture3D(LightGridSkylightTexture, f11), vec4(1.0), f12);
    vec4 f15 = texture2D(ShadowMapTexture, f9.xy);
    float f16 = f9.z;
    float f17 = (1.0 - ((step(f15.x, f16) * clamp(CB0[29].z + (CB0[29].w * abs(f16 - 0.5)), 0.0, 1.0)) * f15.y)) * f14.y;
    vec3 f18 = (((VARYING5.xyz * f17) + min((f13.xyz * (f13.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f14.x)), vec3(CB0[21].w))) * f7.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f7.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f17));
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = f2.w;
    vec4 f23 = f21;
    f23.w = f22;
    vec3 f24 = -(VARYING4.xyz / vec3(f8));
    vec3 f25 = f24 * f24;
    bvec3 f26 = lessThan(f24, vec3(0.0));
    vec3 f27 = vec3(f26.x ? f25.x : vec3(0.0).x, f26.y ? f25.y : vec3(0.0).y, f26.z ? f25.z : vec3(0.0).z);
    vec3 f28 = f25 - f27;
    vec3 f29 = (((((CB0[34].xyz * f28.x) + (CB0[36].xyz * f28.y)) + (CB0[38].xyz * f28.z)) + (CB0[35].xyz * f27.x)) + (CB0[37].xyz * f27.y)) + (CB0[39].xyz * f27.z);
    bvec3 f30 = bvec3(!(CB0[18].w == 0.0));
    vec3 f31 = mix(vec3(f30.x ? CB0[19].xyz.x : f29.x, f30.y ? CB0[19].xyz.y : f29.y, f30.z ? CB0[19].xyz.z : f29.z), f23.xyz, vec3(clamp(exp2((CB0[18].z * f8) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f32 = f23;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    vec3 f35 = sqrt(clamp(f34.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f36 = f34;
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    vec4 f38 = f37;
    f38.z = f35.z;
    vec4 f39 = f38;
    f39.w = f22;
    gl_FragData[0] = f39;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
