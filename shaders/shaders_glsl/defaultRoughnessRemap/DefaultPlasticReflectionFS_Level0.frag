#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D StudsMapTexture;
uniform samplerCube EnvironmentMapTexture;

varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec2 f1 = VARYING1;
    f1.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    vec4 f2 = vec4((VARYING2.xyz * texture2D(StudsMapTexture, f1).x) * 2.0, VARYING2.w);
    vec3 f3 = f2.xyz;
    vec3 f4 = f3 * f3;
    vec4 f5 = f2;
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    vec3 f8 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f9 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING3.yzx - (VARYING3.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture3D(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture3D(LightGridSkylightTexture, f10), vec4(1.0), f11);
    vec4 f14 = texture2D(ShadowMapTexture, f8.xy);
    float f15 = f8.z;
    float f16 = (1.0 - ((step(f14.x, f15) * clamp(CB0[24].z + (CB0[24].w * abs(f15 - 0.5)), 0.0, 1.0)) * f14.y)) * f13.y;
    vec3 f17 = textureCube(EnvironmentMapTexture, reflect(-(VARYING4.xyz / vec3(f0)), normalize(VARYING5.xyz))).xyz;
    vec3 f18 = (((VARYING6.xyz * f16) + min((f12.xyz * (f12.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f13.x)), vec3(CB0[16].w))) * mix(f7.xyz, (f17 * f17) * CB0[15].x, vec3(VARYING7.w))) + (CB0[10].xyz * ((VARYING6.w * f16) * 0.100000001490116119384765625));
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    vec4 f22 = f21;
    f22.w = VARYING2.w;
    vec3 f23 = mix(CB0[14].xyz, f22.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f24 = f22;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    vec3 f27 = sqrt(clamp(f26.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f28 = f26;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec4 f31 = f30;
    f31.w = VARYING2.w;
    gl_FragData[0] = f31;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$StudsMapTexture=s0
//$$EnvironmentMapTexture=s2
