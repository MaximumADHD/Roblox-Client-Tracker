#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[47];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    vec4 f2 = vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w);
    vec4 f3 = vec4(f0.xyz, VARYING2.w * f1);
    bvec4 f4 = bvec4(CB3[0].x != 0.0);
    vec4 f5 = vec4(f4.x ? f2.x : f3.x, f4.y ? f2.y : f3.y, f4.z ? f2.z : f3.z, f4.w ? f2.w : f3.w);
    vec3 f6 = f5.xyz;
    float f7 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f8 = VARYING3.yzx - (VARYING3.yzx * f7);
    vec4 f9 = vec4(clamp(f7, 0.0, 1.0));
    vec4 f10 = mix(texture3D(LightMapTexture, f8), vec4(0.0), f9);
    vec4 f11 = mix(texture3D(LightGridSkylightTexture, f8), vec4(1.0), f9);
    vec4 f12 = texture2D(ShadowMapTexture, VARYING6.xy);
    float f13 = (1.0 - ((step(f12.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f12.y)) * f11.y;
    vec3 f14 = (f6 * f6).xyz;
    vec3 f15 = (((VARYING5.xyz * f13) + min((f10.xyz * (f10.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f11.x)), vec3(CB0[16].w))) * f14) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f14, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f13));
    float f16 = f5.w;
    vec4 f17 = vec4(f15.x, f15.y, f15.z, vec4(0.0).w);
    f17.w = f16;
    vec3 f18 = sqrt(clamp(mix(CB0[14].xyz, f17.xyz, vec3(clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f19 = vec4(f18.x, f18.y, f18.z, f17.w);
    f19.w = f16;
    gl_FragData[0] = f19;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
