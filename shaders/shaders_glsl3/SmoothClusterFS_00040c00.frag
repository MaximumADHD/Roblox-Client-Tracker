#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
    vec4 f0 = ((texture(AlbedoMapTexture, vec3(VARYING1.xy, VARYING2.x)) * VARYING0.x) + (texture(AlbedoMapTexture, vec3(VARYING1.zw, VARYING2.z)) * VARYING0.y)) + (texture(AlbedoMapTexture, vec3(VARYING3.xyz)) * VARYING0.z);
    vec3 f1 = f0.xyz;
    vec3 f2 = mix(f1, f1 * VARYING8.xyz, vec3(VARYING8.w * f0.w));
    float f3 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f4 = VARYING4.yzx - (VARYING4.yzx * f3);
    vec4 f5 = vec4(clamp(f3, 0.0, 1.0));
    vec4 f6 = mix(texture(LightMapTexture, f4), vec4(0.0), f5);
    vec4 f7 = mix(texture(LightGridSkylightTexture, f4), vec4(1.0), f5);
    vec4 f8 = texture(ShadowMapTexture, VARYING5.xy);
    vec3 f9 = (min((f6.xyz * (f6.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f7.x)), vec3(CB0[21].w)) + (VARYING6 * ((1.0 - ((step(f8.x, VARYING5.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f8.y)) * f7.y))) * (f2 * f2);
    vec4 f10 = vec4(0.0);
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    vec4 f13 = f12;
    f13.w = 1.0;
    float f14 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f15 = textureLod(PrefilteredEnvTexture, vec4(-VARYING7, 0.0).xyz, max(CB0[18].y, f14) * 5.0).xyz;
    bvec3 f16 = bvec3(!(CB0[18].w == 0.0));
    vec3 f17 = mix(vec3(f16.x ? CB0[19].xyz.x : f15.x, f16.y ? CB0[19].xyz.y : f15.y, f16.z ? CB0[19].xyz.z : f15.z), f13.xyz, vec3(f14));
    vec4 f18 = f13;
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    _entryPointOutput = f20;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$AlbedoMapTexture=s0
