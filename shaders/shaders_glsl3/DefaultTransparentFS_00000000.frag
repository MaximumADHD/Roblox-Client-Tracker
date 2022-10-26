#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec4 f1 = texture(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f2 = f1.xyz;
    vec3 f3 = f2 * f2;
    vec4 f4 = f1;
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    vec3 f7 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f8 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f9 = VARYING3.yzx - (VARYING3.yzx * f8);
    vec4 f10 = vec4(clamp(f8, 0.0, 1.0));
    vec4 f11 = mix(texture(LightMapTexture, f9), vec4(0.0), f10);
    vec4 f12 = mix(texture(LightGridSkylightTexture, f9), vec4(1.0), f10);
    vec4 f13 = texture(ShadowMapTexture, f7.xy);
    float f14 = f7.z;
    float f15 = (1.0 - ((step(f13.x, f14) * clamp(CB0[29].z + (CB0[29].w * abs(f14 - 0.5)), 0.0, 1.0)) * f13.y)) * f12.y;
    vec3 f16 = (((VARYING5.xyz * f15) + min((f11.xyz * (f11.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f12.x)), vec3(CB0[21].w))) * f6.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f6.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f15));
    vec4 f17 = vec4(0.0);
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    float f20 = f1.w;
    vec4 f21 = f19;
    f21.w = f20;
    float f22 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f23 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f0)), 0.0).xyz, max(CB0[18].y, f22) * 5.0).xyz;
    bvec3 f24 = bvec3(!(CB0[18].w == 0.0));
    vec3 f25 = mix(vec3(f24.x ? CB0[19].xyz.x : f23.x, f24.y ? CB0[19].xyz.y : f23.y, f24.z ? CB0[19].xyz.z : f23.z), f21.xyz, vec3(f22));
    vec4 f26 = f21;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    vec3 f29 = sqrt(clamp(f28.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f30 = f28;
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    vec4 f33 = f32;
    f33.w = f20;
    _entryPointOutput = f33;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
