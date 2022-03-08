#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D DiffuseMapTexture;

centroid in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float f1 = f0.w;
    vec2 f2 = (f0.xy * 0.5) + vec2(0.5 * f1);
    vec4 f3 = vec4(0.0);
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    float f5 = texture(GBufferDepthTexture, f4.xy / vec2(f1)).x * 500.0;
    float f6 = length(VARYING4.xyz);
    vec4 f7 = texture(DiffuseMapTexture, VARYING0);
    float f8 = f7.x;
    float f9 = (f8 > 0.0) ? ((1.0 - clamp(abs(f8 - CB0[14].w) * 13.0, 0.0, 1.0)) * f7.w) : 0.0;
    float f10 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), VARYING4.xyz / vec3(f6))) * 2.0, 0.0, 1.0), (f5 > 499.0) ? 0.0 : (1.0 - clamp((f5 - f1) * 3.0, 0.0, 1.0))), f9);
    float f11 = VARYING2.w * max(mix(f9, 1.0, f10) * f10, VARYING1.x);
    vec4 f12 = vec4(VARYING2.xyz * VARYING2.xyz, f11);
    float f13 = clamp(exp2((CB0[13].z * f6) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f14 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f13) * 5.0).xyz;
    bvec3 f15 = bvec3(!(CB0[13].w == 0.0));
    vec3 f16 = mix(vec3(f15.x ? CB0[14].xyz.x : f14.x, f15.y ? CB0[14].xyz.y : f14.y, f15.z ? CB0[14].xyz.z : f14.z), f12.xyz, vec3(f13));
    float f17 = f13 * f11;
    vec4 f18 = f12;
    f18.x = f16.x;
    vec4 f19 = f18;
    f19.y = f16.y;
    vec4 f20 = f19;
    f20.z = f16.z;
    vec4 f21 = f20;
    f21.w = f17;
    vec3 f22 = sqrt(clamp(f21.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f23 = f21;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    vec4 f26 = f25;
    f26.w = f17;
    _entryPointOutput = f26;
}

//$$PrefilteredEnvTexture=s15
//$$GBufferDepthTexture=s10
//$$DiffuseMapTexture=s3
