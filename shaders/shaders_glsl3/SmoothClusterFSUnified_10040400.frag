#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
    vec3 f8 = (min((f6.xyz * (f6.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f7.x)), vec3(CB0[21].w)) + (VARYING6 * f7.y)) * (f2 * f2);
    vec4 f9 = vec4(0.0);
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    vec4 f12 = f11;
    f12.w = 1.0;
    float f13 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f14 = textureLod(PrefilteredEnvTexture, vec4(-VARYING7, 0.0).xyz, max(CB0[18].y, f13) * 5.0).xyz;
    bvec3 f15 = bvec3(!(CB0[18].w == 0.0));
    vec3 f16 = mix(vec3(f15.x ? CB0[19].xyz.x : f14.x, f15.y ? CB0[19].xyz.y : f14.y, f15.z ? CB0[19].xyz.z : f14.z), f12.xyz, vec3(f13));
    vec4 f17 = f12;
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    vec3 f20 = sqrt(clamp(f19.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f21 = f19;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    _entryPointOutput = f23;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$AlbedoMapTexture=s0
