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
    float f2 = f1.x;
    float f3 = f1.y;
    float f4 = VARYING8.x * f0.x;
    float f5 = (VARYING8.y * f2) - (VARYING8.z * f3);
    float f6 = (VARYING8.z * f2) + (VARYING8.y * f3);
    float f7 = f4 - f6;
    vec3 f8 = vec4(vec3(f7, f4, f7) + (vec3(f5, f6, f5) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f9 = mix(f8, f8 * VARYING8.xyz, vec3(VARYING8.w));
    vec4 f10 = vec4(0.0);
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    float f13 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING4.yzx - (VARYING4.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture(LightGridSkylightTexture, f14), vec4(1.0), f15);
    vec4 f18 = texture(ShadowMapTexture, VARYING5.xy);
    vec3 f19 = (min((f16.xyz * (f16.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f17.x)), vec3(CB0[16].w)) + (VARYING6 * ((1.0 - ((step(f18.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f18.y)) * f17.y))) * (f12.xyz * f12.xyz);
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec4 f23 = f22;
    f23.w = 1.0;
    float f24 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f25 = textureLod(PrefilteredEnvTexture, vec4(-VARYING7, 0.0).xyz, max(CB0[13].y, f24) * 5.0).xyz;
    bvec3 f26 = bvec3(!(CB0[13].w == 0.0));
    vec3 f27 = mix(vec3(f26.x ? CB0[14].xyz.x : f25.x, f26.y ? CB0[14].xyz.y : f25.y, f26.z ? CB0[14].xyz.z : f25.z), f23.xyz, vec3(f24));
    vec4 f28 = f23;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec3 f31 = sqrt(clamp(f30.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f32 = f30;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    _entryPointOutput = f34;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$AlbedoMapTexture=s0
