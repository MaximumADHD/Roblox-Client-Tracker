#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
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
    vec3 f0 = (texture2D(DiffuseMapTexture, VARYING0) * VARYING2).xyz;
    float f1 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f2 = VARYING3.yzx - (VARYING3.yzx * f1);
    vec4 f3 = vec4(clamp(f1, 0.0, 1.0));
    vec4 f4 = mix(texture3D(LightMapTexture, f2), vec4(0.0), f3);
    vec4 f5 = mix(texture3D(LightGridSkylightTexture, f2), vec4(1.0), f3);
    vec4 f6 = texture2D(ShadowMapTexture, VARYING6.xy);
    float f7 = (1.0 - ((step(f6.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f6.y)) * f5.y;
    vec3 f8 = (f0 * f0).xyz;
    vec3 f9 = (((VARYING5.xyz * f7) + min((f4.xyz * (f4.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f5.x)), vec3(CB0[16].w))) * f8) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f8, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f7));
    vec4 f10 = vec4(f9.x, f9.y, f9.z, vec4(0.0).w);
    f10.w = 1.0;
    vec3 f11 = sqrt(clamp(mix(CB0[14].xyz, f10.xyz, vec3(clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f12 = vec4(f11.x, f11.y, f11.z, f10.w);
    f12.w = 1.0;
    gl_FragData[0] = f12;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
