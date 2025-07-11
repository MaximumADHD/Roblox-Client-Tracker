#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[61];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform samplerCube EnvMapTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec3 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = clamp(dot(step(CB0[24].xyz, abs(VARYING5 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture3D(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture3D(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = f3.xyz * (f3.w * 120.0);
    float f6 = f4.x;
    vec2 f7 = (((texture2D(NormalMap1Texture, VARYING2) * VARYING0.x) + (texture2D(NormalMap1Texture, VARYING3) * VARYING0.y)) + (texture2D(NormalMap1Texture, VARYING4) * VARYING0.z)).wy * 2.0;
    vec2 f8 = f7 - vec2(1.0);
    vec3 f9 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f10 = mix(VARYING6.xyz, vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f9) * f8.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f9) * f8.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f7, f8), 0.0, 1.0)))), 0.0).xyz, vec3(0.25));
    vec3 f11 = VARYING7.xyz / vec3(sqrt(dot(VARYING7.xyz, VARYING7.xyz)));
    vec3 f12 = reflect(-f11, f10);
    vec3 f13 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f12;
    bvec3 f14 = bvec3(!(CB0[58].x == 2.0));
    vec3 f15 = textureCube(EnvMapTexture, vec3(f14.x ? f13.x : f12.x, f14.y ? f13.y : f12.y, f14.z ? f13.z : f12.z)).xyz;
    vec3 f16 = mix((min(f5 + (CB0[13].xyz + (CB0[14].xyz * f6)), vec3(CB0[21].w)) + (CB0[15].xyz * f4.y)) * CB3[1].xyz, (((f15 * f15) * CB0[20].x) * f6) + (f5 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f10, f11))), 0.0, 1.0) + 0.300000011920928955078125) * CB3[2].z));
    vec4 f17 = vec4(0.0);
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    vec4 f20 = f19;
    f20.w = 1.0;
    vec3 f21 = mix(CB0[19].xyz, f20.xyz, vec3(VARYING6.w));
    vec4 f22 = f20;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec3 f25 = sqrt(clamp(f24.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f26 = f24;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    gl_FragData[0] = f28;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$EnvMapTexture=s3
