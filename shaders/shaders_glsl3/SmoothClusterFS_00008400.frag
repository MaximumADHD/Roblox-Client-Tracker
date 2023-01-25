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
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = ((texture(AlbedoMapTexture, vec3(VARYING1.xy, VARYING2.x)).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, vec3(VARYING1.zw, VARYING2.z)).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f1 = f0.yz - vec2(0.5);
    float f2 = f0.x;
    float f3 = f2 - f1.y;
    vec3 f4 = vec4(vec3(f3, f2, f3) + (vec3(f1.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f5 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING4.yzx - (VARYING4.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture(LightGridSkylightTexture, f6), vec4(1.0), f7);
    vec4 f10 = texture(ShadowMapTexture, VARYING5.xy);
    vec3 f11 = (min((f8.xyz * (f8.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f9.x)), vec3(CB0[21].w)) + (VARYING6 * ((1.0 - ((step(f10.x, VARYING5.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f10.y)) * f9.y))) * (f4 * f4);
    vec4 f12 = vec4(0.0);
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = f11.z;
    vec4 f15 = f14;
    f15.w = 1.0;
    float f16 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f17 = textureLod(PrefilteredEnvTexture, vec4(-VARYING7, 0.0).xyz, max(CB0[18].y, f16) * 5.0).xyz;
    bvec3 f18 = bvec3(!(CB0[18].w == 0.0));
    vec3 f19 = mix(vec3(f18.x ? CB0[19].xyz.x : f17.x, f18.y ? CB0[19].xyz.y : f17.y, f18.z ? CB0[19].xyz.z : f17.z), f15.xyz, vec3(f16));
    vec4 f20 = f15;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec3 f23 = sqrt(clamp(f22.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f24 = f22;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    _entryPointOutput = f26;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$AlbedoMapTexture=s0
