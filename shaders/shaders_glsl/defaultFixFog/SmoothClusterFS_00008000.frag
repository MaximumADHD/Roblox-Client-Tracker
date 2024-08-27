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

void main()
{
    vec4 f0 = ((texture2D(AlbedoMapTexture, (fract(VARYING1.xy) * CB3[0].xy) + VARYING2.xy).yxzw * VARYING0.x) + (texture2D(AlbedoMapTexture, (fract(VARYING1.zw) * CB3[0].xy) + VARYING2.zw).yxzw * VARYING0.y)) + (texture2D(AlbedoMapTexture, (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw).yxzw * VARYING0.z);
    vec2 f1 = f0.yz - vec2(0.5);
    float f2 = f0.x;
    float f3 = f2 - f1.y;
    vec3 f4 = vec4(vec3(f3, f2, f3) + (vec3(f1.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f5 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING4.yzx - (VARYING4.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture3D(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture3D(LightGridSkylightTexture, f6), vec4(1.0), f7);
    vec4 f10 = texture2D(ShadowMapTexture, VARYING5.xy);
    vec3 f11 = (min((f8.xyz * (f8.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f9.x)), vec3(CB0[21].w)) + (VARYING6 * ((1.0 - ((step(f10.x, VARYING5.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f10.y)) * f9.y))) * (f4 * f4);
    vec4 f12 = vec4(0.0);
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = f11.z;
    vec4 f15 = f14;
    f15.w = 1.0;
    vec3 f16 = normalize(-VARYING7);
    vec3 f17 = f16 * f16;
    bvec3 f18 = lessThan(f16, vec3(0.0));
    vec3 f19 = vec3(f18.x ? f17.x : vec3(0.0).x, f18.y ? f17.y : vec3(0.0).y, f18.z ? f17.z : vec3(0.0).z);
    vec3 f20 = f17 - f19;
    vec3 f21 = (((((CB0[34].xyz * f20.x) + (CB0[36].xyz * f20.y)) + (CB0[38].xyz * f20.z)) + (CB0[35].xyz * f19.x)) + (CB0[37].xyz * f19.y)) + (CB0[39].xyz * f19.z);
    bvec3 f22 = bvec3(!(CB0[18].w == 0.0));
    vec3 f23 = mix(vec3(f22.x ? CB0[19].xyz.x : f21.x, f22.y ? CB0[19].xyz.y : f21.y, f22.z ? CB0[19].xyz.z : f21.z), f15.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f24 = f15;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    vec3 f27 = sqrt(clamp(f26.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f28 = f26;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    gl_FragData[0] = f30;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
