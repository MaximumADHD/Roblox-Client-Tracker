#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
    float f5 = texture2D(GBufferDepthTexture, f4.xy / vec2(f1)).x * 500.0;
    float f6 = length(VARYING4.xyz);
    vec4 f7 = texture2D(DiffuseMapTexture, VARYING0);
    float f8 = f7.x;
    float f9 = (f8 > 0.0) ? ((1.0 - clamp(abs(f8 - CB0[19].w) * 13.0, 0.0, 1.0)) * f7.w) : 0.0;
    float f10 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), VARYING4.xyz / vec3(f6))) * 2.0, 0.0, 1.0), (f5 > 499.0) ? 0.0 : (1.0 - clamp((f5 - f1) * 3.0, 0.0, 1.0))), f9);
    float f11 = VARYING2.w * max(mix(f9, 1.0, f10) * f10, VARYING1);
    vec4 f12 = vec4(VARYING2.xyz * VARYING2.xyz, f11);
    float f13 = clamp(exp2((CB0[18].z * f6) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f14 = -VARYING4.xyz;
    vec3 f15 = f14 * f14;
    bvec3 f16 = lessThan(f14, vec3(0.0));
    vec3 f17 = vec3(f16.x ? f15.x : vec3(0.0).x, f16.y ? f15.y : vec3(0.0).y, f16.z ? f15.z : vec3(0.0).z);
    vec3 f18 = f15 - f17;
    vec3 f19 = (((((CB0[34].xyz * f18.x) + (CB0[36].xyz * f18.y)) + (CB0[38].xyz * f18.z)) + (CB0[35].xyz * f17.x)) + (CB0[37].xyz * f17.y)) + (CB0[39].xyz * f17.z);
    bvec3 f20 = bvec3(!(CB0[18].w == 0.0));
    vec3 f21 = mix(vec3(f20.x ? CB0[19].xyz.x : f19.x, f20.y ? CB0[19].xyz.y : f19.y, f20.z ? CB0[19].xyz.z : f19.z), f12.xyz, vec3(f13));
    float f22 = f13 * f11;
    vec4 f23 = f12;
    f23.x = f21.x;
    vec4 f24 = f23;
    f24.y = f21.y;
    vec4 f25 = f24;
    f25.z = f21.z;
    vec4 f26 = f25;
    f26.w = f22;
    vec3 f27 = sqrt(clamp(f26.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f28 = f26;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec4 f31 = f30;
    f31.w = f22;
    gl_FragData[0] = f31;
}

//$$GBufferDepthTexture=s10
//$$DiffuseMapTexture=s3
