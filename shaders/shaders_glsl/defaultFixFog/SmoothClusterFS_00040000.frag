#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <ExtraData.h>
uniform vec4 CB0[58];
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
varying vec3 VARYING7;
varying vec4 VARYING8;

void main()
{
    vec4 f0 = ((texture2D(AlbedoMapTexture, (fract(VARYING1.xy) * CB3[0].xy) + VARYING2.xy) * VARYING0.x) + (texture2D(AlbedoMapTexture, (fract(VARYING1.zw) * CB3[0].xy) + VARYING2.zw) * VARYING0.y)) + (texture2D(AlbedoMapTexture, (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw) * VARYING0.z);
    vec3 f1 = f0.xyz;
    vec3 f2 = mix(f1, f1 * VARYING8.xyz, vec3(VARYING8.w * f0.w));
    float f3 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f4 = VARYING4.yzx - (VARYING4.yzx * f3);
    vec4 f5 = vec4(clamp(f3, 0.0, 1.0));
    vec4 f6 = mix(texture3D(LightMapTexture, f4), vec4(0.0), f5);
    vec4 f7 = mix(texture3D(LightGridSkylightTexture, f4), vec4(1.0), f5);
    vec4 f8 = texture2D(ShadowMapTexture, VARYING5.xy);
    vec3 f9 = (min((f6.xyz * (f6.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f7.x)), vec3(CB0[21].w)) + (VARYING6 * ((1.0 - ((step(f8.x, VARYING5.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f8.y)) * f7.y))) * (f2 * f2);
    vec4 f10 = vec4(0.0);
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    vec4 f13 = f12;
    f13.w = 1.0;
    vec3 f14 = normalize(-VARYING7);
    vec3 f15 = f14 * f14;
    bvec3 f16 = lessThan(f14, vec3(0.0));
    vec3 f17 = vec3(f16.x ? f15.x : vec3(0.0).x, f16.y ? f15.y : vec3(0.0).y, f16.z ? f15.z : vec3(0.0).z);
    vec3 f18 = f15 - f17;
    vec3 f19 = (((((CB0[34].xyz * f18.x) + (CB0[36].xyz * f18.y)) + (CB0[38].xyz * f18.z)) + (CB0[35].xyz * f17.x)) + (CB0[37].xyz * f17.y)) + (CB0[39].xyz * f17.z);
    bvec3 f20 = bvec3(!(CB0[18].w == 0.0));
    vec3 f21 = mix(vec3(f20.x ? CB0[19].xyz.x : f19.x, f20.y ? CB0[19].xyz.y : f19.y, f20.z ? CB0[19].xyz.z : f19.z), f13.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f22 = f13;
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

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
