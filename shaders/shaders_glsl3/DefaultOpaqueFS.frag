#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = (texture(DiffuseMapTexture, VARYING0) * VARYING2).xyz;
    float f1 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f2 = VARYING3.yzx - (VARYING3.yzx * f1);
    vec4 f3 = vec4(clamp(f1, 0.0, 1.0));
    vec4 f4 = mix(texture(LightMapTexture, f2), vec4(0.0), f3);
    vec4 f5 = mix(texture(LightGridSkylightTexture, f2), vec4(1.0), f3);
    vec4 f6 = texture(ShadowMapTexture, VARYING6.xy);
    float f7 = (1.0 - ((step(f6.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f6.y)) * f5.y;
    vec3 f8 = (f0 * f0).xyz;
    vec3 f9 = (((VARYING5.xyz * f7) + min((f4.xyz * (f4.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f5.x)), vec3(CB0[16].w))) * f8) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f8, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f7));
    vec4 f10 = vec4(f9.x, f9.y, f9.z, vec4(0.0).w);
    f10.w = 1.0;
    float f11 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f12 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f11) * 5.0).xyz;
    bvec3 f13 = bvec3(CB0[13].w != 0.0);
    vec3 f14 = sqrt(clamp(mix(vec3(f13.x ? CB0[14].xyz.x : f12.x, f13.y ? CB0[14].xyz.y : f12.y, f13.z ? CB0[14].xyz.z : f12.z), f10.xyz, vec3(f11)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f15 = vec4(f14.x, f14.y, f14.z, f10.w);
    f15.w = 1.0;
    _entryPointOutput = f15;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
