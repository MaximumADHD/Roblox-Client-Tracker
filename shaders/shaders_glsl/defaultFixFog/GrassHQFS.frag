#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <GrassPerFrameParams.h>
uniform vec4 CB0[57];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec3 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;

void main()
{
    float f0 = clamp(dot(step(CB0[24].xyz, abs(VARYING0.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING0.yzx - (VARYING0.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture3D(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture3D(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec4 f5 = texture2D(ShadowMapTexture, VARYING1.xy);
    float f6 = (1.0 - ((step(f5.x, VARYING1.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING1.z - 0.5)), 0.0, 1.0)) * f5.y)) * f4.y;
    vec3 f7 = normalize(-VARYING4);
    vec3 f8 = f7 * f7;
    bvec3 f9 = lessThan(f7, vec3(0.0));
    vec3 f10 = vec3(f9.x ? f8.x : vec3(0.0).x, f9.y ? f8.y : vec3(0.0).y, f9.z ? f8.z : vec3(0.0).z);
    vec3 f11 = f8 - f10;
    vec3 f12 = (((((CB0[34].xyz * f11.x) + (CB0[36].xyz * f11.y)) + (CB0[38].xyz * f11.z)) + (CB0[35].xyz * f10.x)) + (CB0[37].xyz * f10.y)) + (CB0[39].xyz * f10.z);
    bvec3 f13 = bvec3(!(CB0[18].w == 0.0));
    gl_FragData[0] = vec4(sqrt(clamp(mix(vec3(f13.x ? CB0[19].xyz.x : f12.x, f13.y ? CB0[19].xyz.y : f12.y, f13.z ? CB0[19].xyz.z : f12.z), (((min((f3.xyz * (f3.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f4.x)), vec3(CB0[21].w)) * 1.0) + (VARYING2 * f6)) * CB2[0].xyz) + ((((CB2[0].xyz * clamp(VARYING3.z * pow(VARYING3.x, 3.0), 0.0, 1.0)) + vec3(pow(clamp(VARYING3.y, 0.0, 1.0), 12.0) * VARYING3.w)) * f6) * CB0[15].xyz), vec3(VARYING0.w)) * CB0[20].y, vec3(0.0), vec3(1.0))), 1.0);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
