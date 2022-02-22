#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
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

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec4 f1 = ((texture2D(AlbedoMapTexture, f0.xy).yxzw * VARYING0.x) + (texture2D(AlbedoMapTexture, f0.zw).yxzw * VARYING0.y)) + (texture2D(AlbedoMapTexture, (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw).yxzw * VARYING0.z);
    vec2 f2 = f1.yz - vec2(0.5);
    float f3 = f1.x;
    float f4 = f3 - f2.y;
    vec3 f5 = vec4(vec3(f4, f3, f4) + (vec3(f2.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f6 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f7 = VARYING4.yzx - (VARYING4.yzx * f6);
    vec4 f8 = vec4(clamp(f6, 0.0, 1.0));
    vec4 f9 = mix(texture3D(LightMapTexture, f7), vec4(0.0), f8);
    vec4 f10 = mix(texture3D(LightGridSkylightTexture, f7), vec4(1.0), f8);
    vec4 f11 = texture2D(ShadowMapTexture, VARYING5.xy);
    vec3 f12 = (min((f9.xyz * (f9.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f10.x)), vec3(CB0[16].w)) + (VARYING6 * ((1.0 - ((step(f11.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f11.y)) * f10.y))) * (f5 * f5);
    vec4 f13 = vec4(0.0);
    f13.x = f12.x;
    vec4 f14 = f13;
    f14.y = f12.y;
    vec4 f15 = f14;
    f15.z = f12.z;
    vec4 f16 = f15;
    f16.w = 1.0;
    vec3 f17 = mix(CB0[14].xyz, f16.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f18 = f16;
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    vec3 f21 = sqrt(clamp(f20.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f22 = f20;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    gl_FragData[0] = f24;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
