#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[58];
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
    vec3 f12 = -f11;
    vec3 f13 = textureCube(EnvMapTexture, reflect(f12, f10)).xyz;
    vec3 f14 = mix((min(f5 + (CB0[13].xyz + (CB0[14].xyz * f6)), vec3(CB0[21].w)) + (CB0[15].xyz * f4.y)) * CB3[1].xyz, (((f13 * f13) * CB0[20].x) * f6) + (f5 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f10, f11))), 0.0, 1.0) + 0.300000011920928955078125) * CB3[2].z));
    vec4 f15 = vec4(0.0);
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    vec4 f18 = f17;
    f18.w = 1.0;
    vec3 f19 = f12 * f12;
    bvec3 f20 = lessThan(f12, vec3(0.0));
    vec3 f21 = vec3(f20.x ? f19.x : vec3(0.0).x, f20.y ? f19.y : vec3(0.0).y, f20.z ? f19.z : vec3(0.0).z);
    vec3 f22 = f19 - f21;
    vec3 f23 = (((((CB0[34].xyz * f22.x) + (CB0[36].xyz * f22.y)) + (CB0[38].xyz * f22.z)) + (CB0[35].xyz * f21.x)) + (CB0[37].xyz * f21.y)) + (CB0[39].xyz * f21.z);
    bvec3 f24 = bvec3(!(CB0[18].w == 0.0));
    vec3 f25 = mix(vec3(f24.x ? CB0[19].xyz.x : f23.x, f24.y ? CB0[19].xyz.y : f23.y, f24.z ? CB0[19].xyz.z : f23.z), f18.xyz, vec3(VARYING6.w));
    vec4 f26 = f18;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    vec3 f29 = sqrt(clamp(f28.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f30 = f28;
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    gl_FragData[0] = f32;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$EnvMapTexture=s3
