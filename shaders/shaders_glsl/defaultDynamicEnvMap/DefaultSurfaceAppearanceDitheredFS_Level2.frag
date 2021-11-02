#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D Tc2DiffuseMapTexture;

varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    vec4 f1 = texture2D(Tc2DiffuseMapTexture, VARYING1);
    float f2 = f1.w;
    if (smoothstep(0.0, 1.0, f2) < (fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))) * CB0[47].z))
    {
        discard;
    }
    vec4 f3 = vec4(mix(vec4(f0.xyz * VARYING2.xyz, f2).xyz, f1.xyz, vec3(f2)), 0.0);
    vec4 f4 = vec4(f1.xyz, 0.0);
    bvec4 f5 = bvec4(!(CB3[0].x == 0.0));
    vec3 f6 = vec4(vec4(f5.x ? f3.x : f4.x, f5.y ? f3.y : f4.y, f5.z ? f3.z : f4.z, f5.w ? f3.w : f4.w).xyz, VARYING2.w).xyz;
    vec3 f7 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f8 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f9 = VARYING3.yzx - (VARYING3.yzx * f8);
    vec4 f10 = vec4(clamp(f8, 0.0, 1.0));
    vec4 f11 = mix(texture3D(LightMapTexture, f9), vec4(0.0), f10);
    vec4 f12 = mix(texture3D(LightGridSkylightTexture, f9), vec4(1.0), f10);
    vec4 f13 = texture2D(ShadowMapTexture, f7.xy);
    float f14 = f7.z;
    float f15 = (1.0 - ((step(f13.x, f14) * clamp(CB0[24].z + (CB0[24].w * abs(f14 - 0.5)), 0.0, 1.0)) * f13.y)) * f12.y;
    vec3 f16 = (f6 * f6).xyz;
    vec3 f17 = (((VARYING5.xyz * f15) + min((f11.xyz * (f11.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f12.x)), vec3(CB0[16].w))) * f16) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f16, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f15));
    vec4 f18 = vec4(f17.x, f17.y, f17.z, vec4(0.0).w);
    f18.w = VARYING2.w;
    vec3 f19 = sqrt(clamp(mix(CB0[14].xyz, f18.xyz, vec3(clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f20 = vec4(f19.x, f19.y, f19.z, f18.w);
    f20.w = VARYING2.w;
    gl_FragData[0] = f20;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$Tc2DiffuseMapTexture=s0
