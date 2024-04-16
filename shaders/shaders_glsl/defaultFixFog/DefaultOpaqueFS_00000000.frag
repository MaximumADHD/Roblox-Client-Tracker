#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
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
    vec3 f0 = (texture2D(DiffuseMapTexture, VARYING0) * VARYING2).xyz;
    vec3 f1 = f0 * f0;
    vec4 f2 = vec4(0.0);
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    float f5 = length(VARYING4.xyz);
    vec3 f6 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f7 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f8 = VARYING3.yzx - (VARYING3.yzx * f7);
    vec4 f9 = vec4(clamp(f7, 0.0, 1.0));
    vec4 f10 = mix(texture3D(LightMapTexture, f8), vec4(0.0), f9);
    vec4 f11 = mix(texture3D(LightGridSkylightTexture, f8), vec4(1.0), f9);
    vec4 f12 = texture2D(ShadowMapTexture, f6.xy);
    float f13 = f6.z;
    float f14 = (1.0 - ((step(f12.x, f13) * clamp(CB0[29].z + (CB0[29].w * abs(f13 - 0.5)), 0.0, 1.0)) * f12.y)) * f11.y;
    vec3 f15 = (((VARYING5.xyz * f14) + min((f10.xyz * (f10.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f11.x)), vec3(CB0[21].w))) * f4.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f4.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f14));
    vec4 f16 = vec4(0.0);
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    vec4 f19 = f18;
    f19.w = 1.0;
    vec3 f20 = -(VARYING4.xyz / vec3(f5));
    vec3 f21 = f20 * f20;
    bvec3 f22 = lessThan(f20, vec3(0.0));
    vec3 f23 = vec3(f22.x ? f21.x : vec3(0.0).x, f22.y ? f21.y : vec3(0.0).y, f22.z ? f21.z : vec3(0.0).z);
    vec3 f24 = f21 - f23;
    vec3 f25 = (((((CB0[34].xyz * f24.x) + (CB0[36].xyz * f24.y)) + (CB0[38].xyz * f24.z)) + (CB0[35].xyz * f23.x)) + (CB0[37].xyz * f23.y)) + (CB0[39].xyz * f23.z);
    bvec3 f26 = bvec3(!(CB0[18].w == 0.0));
    vec3 f27 = mix(vec3(f26.x ? CB0[19].xyz.x : f25.x, f26.y ? CB0[19].xyz.y : f25.y, f26.z ? CB0[19].xyz.z : f25.z), f19.xyz, vec3(clamp(exp2((CB0[18].z * f5) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f28 = f19;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec3 f31 = sqrt(clamp(f30.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f32 = f30;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    vec4 f35 = f34;
    f35.w = 1.0;
    gl_FragData[0] = f35;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
