#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec3 VARYING7;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = ((texture(AlbedoMapTexture, vec3(VARYING1.xy, VARYING2.x)).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, vec3(VARYING1.zw, VARYING2.z)).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, vec3(VARYING3.xyz)).yxzw * VARYING0.z);
    vec2 f1 = f0.yz - vec2(0.5);
    float f2 = f1.x;
    float f3 = f1.y;
    float f4 = VARYING8.x * f0.x;
    float f5 = (VARYING8.y * f2) - (VARYING8.z * f3);
    float f6 = (VARYING8.z * f2) + (VARYING8.y * f3);
    float f7 = f4 - f6;
    float f8 = f0.w;
    vec3 f9 = vec4(vec3(f7, f4, f7) + (vec3(f5, f6, f5) * vec3(1.0, 1.0, -1.0)), f8).xyz;
    vec3 f10 = mix(f9, f9 * VARYING8.xyz, vec3(VARYING8.w * f8));
    vec4 f11 = vec4(0.0);
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    float f14 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f15 = VARYING4.yzx - (VARYING4.yzx * f14);
    vec4 f16 = vec4(clamp(f14, 0.0, 1.0));
    vec4 f17 = mix(texture(LightMapTexture, f15), vec4(0.0), f16);
    vec4 f18 = mix(texture(LightGridSkylightTexture, f15), vec4(1.0), f16);
    vec4 f19 = texture(ShadowMapTexture, VARYING5.xy);
    vec3 f20 = (min((f17.xyz * (f17.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f18.x)), vec3(CB0[21].w)) + (VARYING6 * ((1.0 - ((step(f19.x, VARYING5.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f19.y)) * f18.y))) * (f13.xyz * f13.xyz);
    vec4 f21 = vec4(0.0);
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    vec4 f24 = f23;
    f24.w = 1.0;
    float f25 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f26 = textureLod(PrefilteredEnvTexture, vec4(-VARYING7, 0.0).xyz, max(CB0[18].y, f25) * 5.0).xyz;
    bvec3 f27 = bvec3(!(CB0[18].w == 0.0));
    vec3 f28 = mix(vec3(f27.x ? CB0[19].xyz.x : f26.x, f27.y ? CB0[19].xyz.y : f26.y, f27.z ? CB0[19].xyz.z : f26.z), f24.xyz, vec3(f25));
    vec4 f29 = f24;
    f29.x = f28.x;
    vec4 f30 = f29;
    f30.y = f28.y;
    vec4 f31 = f30;
    f31.z = f28.z;
    _entryPointOutput = f31;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$AlbedoMapTexture=s0
