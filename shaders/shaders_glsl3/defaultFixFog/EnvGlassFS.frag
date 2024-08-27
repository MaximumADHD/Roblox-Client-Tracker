#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = VARYING2.xyz * VARYING2.xyz;
    vec4 f1 = VARYING2;
    f1.x = f0.x;
    vec4 f2 = f1;
    f2.y = f0.y;
    vec4 f3 = f2;
    f3.z = f0.z;
    float f4 = length(VARYING4.xyz);
    vec3 f5 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f6 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f7 = VARYING3.yzx - (VARYING3.yzx * f6);
    vec4 f8 = vec4(clamp(f6, 0.0, 1.0));
    vec4 f9 = mix(texture(LightMapTexture, f7), vec4(0.0), f8);
    vec4 f10 = mix(texture(LightGridSkylightTexture, f7), vec4(1.0), f8);
    vec4 f11 = texture(ShadowMapTexture, f5.xy);
    float f12 = f5.z;
    float f13 = (1.0 - ((step(f11.x, f12) * clamp(CB0[29].z + (CB0[29].w * abs(f12 - 0.5)), 0.0, 1.0)) * f11.y)) * f10.y;
    vec3 f14 = (((VARYING5.xyz * f13) + min((f9.xyz * (f9.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f10.x)), vec3(CB0[21].w))) * f3.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f3.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f13));
    vec4 f15 = vec4(0.0);
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    vec4 f18 = f17;
    f18.w = VARYING2.w;
    float f19 = clamp(exp2((CB0[18].z * f4) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f20 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f4)), 0.0).xyz, max(CB0[18].y, f19) * 5.0).xyz;
    bvec3 f21 = bvec3(!(CB0[18].w == 0.0));
    vec3 f22 = mix(vec3(f21.x ? CB0[19].xyz.x : f20.x, f21.y ? CB0[19].xyz.y : f20.y, f21.z ? CB0[19].xyz.z : f20.z), f18.xyz, vec3(f19));
    vec4 f23 = f18;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    vec3 f26 = max(vec3(0.0), f25.xyz);
    vec4 f27 = f25;
    f27.x = f26.x;
    vec4 f28 = f27;
    f28.y = f26.y;
    vec4 f29 = f28;
    f29.z = f26.z;
    _entryPointOutput = f29;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
