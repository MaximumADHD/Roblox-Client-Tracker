#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform sampler2D GBufferDepthTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying float VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING4;
varying vec4 VARYING5;

void main()
{
    vec4 f0 = vec4(CB0[11].xyz - VARYING4.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float f1 = f0.w;
    vec2 f2 = (f0.xy * 0.5) + vec2(0.5 * f1);
    vec4 f3 = vec4(0.0);
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    float f5 = texture2D(GBufferDepthTexture, clamp((f4.xy / vec2(f1)) * CB0[50].zw, vec2(0.0), CB0[50].zw - (CB0[50].xy * 0.5))).x * 500.0;
    float f6 = length(VARYING4.xyz);
    vec4 f7 = texture2D(DiffuseMapTexture, VARYING0);
    float f8 = f7.x;
    float f9 = (f8 > 0.0) ? ((1.0 - clamp(abs(f8 - CB0[19].w) * 13.0, 0.0, 1.0)) * f7.w) : 0.0;
    float f10 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), VARYING4.xyz / vec3(f6))) * 2.0, 0.0, 1.0), (f5 > 499.0) ? 0.0 : (1.0 - clamp((f5 - f1) * 3.0, 0.0, 1.0))), f9);
    float f11 = VARYING2.w * max(mix(f9, 1.0, f10) * f10, VARYING1);
    vec4 f12 = vec4(VARYING2.xyz * VARYING2.xyz, f11);
    float f13 = clamp(exp2((CB0[18].z * f6) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f14 = mix(CB0[19].xyz, f12.xyz, vec3(f13));
    float f15 = f13 * f11;
    vec4 f16 = f12;
    f16.x = f14.x;
    vec4 f17 = f16;
    f17.y = f14.y;
    vec4 f18 = f17;
    f18.z = f14.z;
    vec4 f19 = f18;
    f19.w = f15;
    vec3 f20 = sqrt(clamp(f19.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f21 = f19;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    vec4 f24 = f23;
    f24.w = f15;
    gl_FragData[0] = f24;
}

//$$GBufferDepthTexture=s10
//$$DiffuseMapTexture=s3
