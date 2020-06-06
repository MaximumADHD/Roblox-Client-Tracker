#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
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
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = ((texture(AlbedoMapTexture, vec3(VARYING1.xy, VARYING2.x)).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, vec3(VARYING1.zw, VARYING2.z)).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f1 = f0.yz - vec2(0.5);
    float f2 = f0.x;
    float f3 = f2 - f1.y;
    vec3 f4 = vec4(vec3(f3, f2, f3) + (vec3(f1.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f5 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING4.yzx - (VARYING4.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture(LightGridSkylightTexture, f6), vec4(1.0), f7);
    vec4 f10 = texture(ShadowMapTexture, VARYING5.xy);
    vec3 f11 = (min((f8.xyz * (f8.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f9.x)), vec3(CB0[16].w)) + (VARYING6 * ((1.0 - ((step(f10.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f10.y)) * f9.y))) * (f4 * f4).xyz;
    vec4 f12 = vec4(f11.x, f11.y, f11.z, vec4(0.0).w);
    f12.w = 1.0;
    float f13 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f14 = textureLod(PrefilteredEnvTexture, vec4(-VARYING7, 0.0).xyz, max(CB0[13].y, f13) * 5.0).xyz;
    bvec3 f15 = bvec3(CB0[13].w != 0.0);
    vec3 f16 = sqrt(clamp(mix(vec3(f15.x ? CB0[14].xyz.x : f14.x, f15.y ? CB0[14].xyz.y : f14.y, f15.z ? CB0[14].xyz.z : f14.z), f12.xyz, vec3(f13)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f16.x, f16.y, f16.z, f12.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$AlbedoMapTexture=s0
