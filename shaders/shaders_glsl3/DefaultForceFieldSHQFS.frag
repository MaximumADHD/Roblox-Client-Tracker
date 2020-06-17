#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float f1 = f0.w;
    float f2 = texture(GBufferDepthTexture, ((f0.xy * 0.5) + vec2(0.5 * f1)).xy / vec2(f1)).x * 500.0;
    float f3 = length(VARYING4.xyz);
    vec4 f4 = texture(DiffuseMapTexture, VARYING0);
    float f5 = f4.x;
    float f6 = (f5 > 0.0) ? ((1.0 - clamp(abs(f5 - CB0[14].w) * 13.0, 0.0, 1.0)) * f4.w) : 0.0;
    float f7 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), VARYING4.xyz / vec3(f3))) * 2.0, 0.0, 1.0), (f2 > 499.0) ? 0.0 : (1.0 - clamp((f2 - f1) * 3.0, 0.0, 1.0))), f6);
    float f8 = VARYING2.w * max(mix(f6, 1.0, f7) * f7, VARYING1.x);
    vec4 f9 = vec4(VARYING2.xyz * VARYING2.xyz, f8);
    float f10 = clamp(exp2((CB0[13].z * f3) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f11 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f10) * 5.0).xyz;
    bvec3 f12 = bvec3(CB0[13].w != 0.0);
    vec3 f13 = mix(vec3(f12.x ? CB0[14].xyz.x : f11.x, f12.y ? CB0[14].xyz.y : f11.y, f12.z ? CB0[14].xyz.z : f11.z), f9.xyz, vec3(f10));
    float f14 = f10 * f8;
    vec4 f15 = vec4(f13.x, f13.y, f13.z, f9.w);
    f15.w = f14;
    vec3 f16 = sqrt(clamp(f15.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f17 = vec4(f16.x, f16.y, f16.z, f15.w);
    f17.w = f14;
    _entryPointOutput = f17;
}

//$$PrefilteredEnvTexture=s15
//$$GBufferDepthTexture=s10
//$$DiffuseMapTexture=s3
