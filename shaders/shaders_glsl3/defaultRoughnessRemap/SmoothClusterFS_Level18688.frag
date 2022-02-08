#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
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
    vec4 f0 = ((texture(AlbedoMapTexture, vec3(VARYING1.xy, VARYING2.x)).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, vec3(VARYING1.zw, VARYING2.z)).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f1 = f0.yz - vec2(0.5);
    float f2 = VARYING8.x * f0.x;
    float f3 = f1.x;
    float f4 = f1.y;
    float f5 = (VARYING8.y * f3) - (VARYING8.z * f4);
    float f6 = (VARYING8.z * f3) + (VARYING8.y * f4);
    float f7 = f2 - f6;
    vec3 f8 = vec4(vec3(f7, f2, f7) + (vec3(f5, f6, f5) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f9 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING4.yzx - (VARYING4.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture(LightGridSkylightTexture, f10), vec4(1.0), f11);
    vec4 f14 = texture(ShadowMapTexture, VARYING5.xy);
    vec3 f15 = (min((f12.xyz * (f12.w * 120.0)).xyz + (CB0[27].xyz + (CB0[28].xyz * f13.x)), vec3(CB0[16].w)) + (VARYING6 * ((1.0 - ((step(f14.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f14.y)) * f13.y))) * (f8 * f8).xyz;
    vec4 f16 = vec4(f15.x, f15.y, f15.z, vec4(0.0).w);
    f16.w = 1.0;
    float f17 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f18 = textureLod(PrefilteredEnvTexture, vec4(-VARYING7, 0.0).xyz, max(CB0[13].y, f17) * 5.0).xyz;
    bvec3 f19 = bvec3(!(CB0[13].w == 0.0));
    vec3 f20 = mix(vec3(f19.x ? CB0[14].xyz.x : f18.x, f19.y ? CB0[14].xyz.y : f18.y, f19.z ? CB0[14].xyz.z : f18.z), f16.xyz, vec3(f17));
    _entryPointOutput = vec4(f20.x, f20.y, f20.z, f16.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$AlbedoMapTexture=s0
