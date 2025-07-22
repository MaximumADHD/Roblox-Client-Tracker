#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
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
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec3 f1 = mix(vec3(1.0), VARYING2.xyz, vec3(f0.w)) * f0.xyz;
    vec4 f2 = vec4(0.0);
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    vec4 f5 = f4;
    f5.w = VARYING2.w;
    vec3 f6 = f5.xyz * f5.xyz;
    vec4 f7 = f5;
    f7.x = f6.x;
    vec4 f8 = f7;
    f8.y = f6.y;
    vec4 f9 = f8;
    f9.z = f6.z;
    float f10 = length(VARYING4.xyz);
    vec3 f11 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f12 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f13 = VARYING3.yzx - (VARYING3.yzx * f12);
    vec4 f14 = vec4(clamp(f12, 0.0, 1.0));
    vec4 f15 = mix(texture(LightMapTexture, f13), vec4(0.0), f14);
    vec4 f16 = mix(texture(LightGridSkylightTexture, f13), vec4(1.0), f14);
    vec4 f17 = texture(ShadowMapTexture, f11.xy);
    float f18 = f11.z;
    float f19 = (1.0 - ((step(f17.x, f18) * clamp(CB0[29].z + (CB0[29].w * abs(f18 - 0.5)), 0.0, 1.0)) * f17.y)) * f16.y;
    vec3 f20 = (((VARYING5.xyz * f19) + min((f15.xyz * (f15.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f16.x)), vec3(CB0[21].w))) * f9.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f9.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f19));
    vec4 f21 = vec4(0.0);
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    vec4 f24 = f23;
    f24.w = VARYING2.w;
    float f25 = clamp(exp2((CB0[18].z * f10) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f26 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f10)), 0.0).xyz, max(CB0[18].y, f25) * 5.0).xyz;
    bvec3 f27 = bvec3(!(CB0[18].w == 0.0));
    vec3 f28 = mix(vec3(f27.x ? CB0[19].xyz.x : f26.x, f27.y ? CB0[19].xyz.y : f26.y, f27.z ? CB0[19].xyz.z : f26.z), f24.xyz, vec3(f25));
    vec4 f29 = f24;
    f29.x = f28.x;
    vec4 f30 = f29;
    f30.y = f28.y;
    vec4 f31 = f30;
    f31.z = f28.z;
    vec3 f32 = sqrt(clamp(f31.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f33 = f31;
    f33.x = f32.x;
    vec4 f34 = f33;
    f34.y = f32.y;
    vec4 f35 = f34;
    f35.z = f32.z;
    vec4 f36 = f35;
    f36.w = VARYING2.w;
    _entryPointOutput = f36;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
