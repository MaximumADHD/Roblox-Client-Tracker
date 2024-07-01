#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
    vec3 f5 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f6 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f7 = VARYING3.yzx - (VARYING3.yzx * f6);
    vec4 f8 = vec4(clamp(f6, 0.0, 1.0));
    vec4 f9 = mix(texture3D(LightMapTexture, f7), vec4(0.0), f8);
    vec4 f10 = mix(texture3D(LightGridSkylightTexture, f7), vec4(1.0), f8);
    vec4 f11 = texture2D(ShadowMapTexture, f5.xy);
    float f12 = f5.z;
    float f13 = (1.0 - ((step(f11.x, f12) * clamp(CB0[29].z + (CB0[29].w * abs(f12 - 0.5)), 0.0, 1.0)) * f11.y)) * f10.y;
    vec3 f14 = (((VARYING5.xyz * f13) + min((f9.xyz * (f9.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f10.x)), vec3(CB0[21].w))) * f4.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f4.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f13));
    vec4 f15 = vec4(0.0);
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    vec4 f18 = f17;
    f18.w = 1.0;
    vec3 f19 = mix(CB0[19].xyz, f18.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING4.xyz)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f20 = f18;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec3 f23 = sqrt(clamp(f22.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f24 = f22;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    vec4 f27 = f26;
    f27.w = 1.0;
    gl_FragData[0] = f27;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
