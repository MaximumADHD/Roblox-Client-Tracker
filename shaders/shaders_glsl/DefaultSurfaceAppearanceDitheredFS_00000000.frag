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

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    if (f1 < (0.5 * CB0[53].z))
    {
        discard;
    }
    vec4 f2 = mix(vec4(f0.xyz, VARYING2.w * f1), vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w), vec4(CB3[0].x));
    vec3 f3 = f2.xyz;
    vec3 f4 = f3 * f3;
    vec4 f5 = f2;
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    vec3 f8 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f9 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING3.yzx - (VARYING3.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture3D(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture3D(LightGridSkylightTexture, f10), vec4(1.0), f11);
    vec4 f14 = texture2D(ShadowMapTexture, f8.xy);
    float f15 = f8.z;
    float f16 = (1.0 - ((step(f14.x, f15) * clamp(CB0[29].z + (CB0[29].w * abs(f15 - 0.5)), 0.0, 1.0)) * f14.y)) * f13.y;
    vec3 f17 = (((VARYING5.xyz * f16) + min((f12.xyz * (f12.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f13.x)), vec3(CB0[21].w))) * f7.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f7.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f16));
    vec4 f18 = vec4(0.0);
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    float f21 = f2.w;
    vec4 f22 = f20;
    f22.w = f21;
    vec3 f23 = mix(CB0[19].xyz, f22.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING4.xyz)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f24 = f22;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    vec3 f27 = sqrt(clamp(f26.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f28 = f26;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec4 f31 = f30;
    f31.w = f21;
    gl_FragData[0] = f31;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
