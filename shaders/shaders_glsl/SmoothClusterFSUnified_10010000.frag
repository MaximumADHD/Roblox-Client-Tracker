#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <ExtraData.h>
uniform vec4 CB0[61];
uniform vec4 CB3[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING8;

void main()
{
    vec4 f0 = ((texture2D(AlbedoMapTexture, (fract(VARYING1.xy) * CB3[0].xy) + VARYING2.xy).yxzw * VARYING0.x) + (texture2D(AlbedoMapTexture, (fract(VARYING1.zw) * CB3[0].xy) + VARYING2.zw).yxzw * VARYING0.y)) + (texture2D(AlbedoMapTexture, (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw).yxzw * VARYING0.z);
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
    vec4 f17 = mix(texture3D(LightMapTexture, f15), vec4(0.0), f16);
    vec4 f18 = mix(texture3D(LightGridSkylightTexture, f15), vec4(1.0), f16);
    vec3 f19 = (min((f17.xyz * (f17.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f18.x)), vec3(CB0[21].w)) + (VARYING6 * f18.y)) * (f13.xyz * f13.xyz);
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec4 f23 = f22;
    f23.w = 1.0;
    vec3 f24 = mix(CB0[19].xyz, f23.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f25 = f23;
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    vec3 f28 = sqrt(clamp(f27.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f29 = f27;
    f29.x = f28.x;
    vec4 f30 = f29;
    f30.y = f28.y;
    vec4 f31 = f30;
    f31.z = f28.z;
    gl_FragData[0] = f31;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
