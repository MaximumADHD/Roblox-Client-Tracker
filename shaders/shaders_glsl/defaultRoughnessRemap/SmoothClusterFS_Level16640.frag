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
varying vec4 VARYING8;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec4 f1 = texture2D(AlbedoMapTexture, f0.xy);
    vec4 f2 = texture2D(AlbedoMapTexture, f0.zw);
    vec4 f3 = texture2D(AlbedoMapTexture, (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw);
    vec4 f4 = ((f1.yxzw * VARYING0.x) + (f2.yxzw * VARYING0.y)) + (f3.yxzw * VARYING0.z);
    vec2 f5 = f4.yz - vec2(0.5);
    float f6 = f5.x;
    vec4 f7 = f4;
    f7.y = f6;
    float f8 = f5.y;
    vec4 f9 = f7;
    f9.z = f8;
    vec4 f10;
    if (VARYING8.w < 1.0)
    {
        vec3 f11 = vec3(0.0);
        f11.x = VARYING8.x * f4.x;
        vec3 f12 = f11;
        f12.y = (VARYING8.y * f6) - (VARYING8.z * f8);
        vec3 f13 = f12;
        f13.z = (VARYING8.z * f6) + (VARYING8.y * f8);
        vec3 f14 = mix(f13, f9.xyz, vec3(VARYING8.w));
        vec4 f15 = f9;
        f15.x = f14.x;
        vec4 f16 = f15;
        f16.y = f14.y;
        vec4 f17 = f16;
        f17.z = f14.z;
        f10 = f17;
    }
    else
    {
        f10 = f9;
    }
    float f18 = f10.x - f10.z;
    vec3 f19 = vec4(vec3(f18, f10.x, f18) + (vec3(f10.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f20 = mix(f19, f19 * VARYING8.xyz, vec3(VARYING8.w));
    vec4 f21 = vec4(0.0);
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    float f24 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING4.yzx - (VARYING4.yzx * f24);
    vec4 f26 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f27 = mix(texture3D(LightMapTexture, f25), vec4(0.0), f26);
    vec4 f28 = mix(texture3D(LightGridSkylightTexture, f25), vec4(1.0), f26);
    vec4 f29 = texture2D(ShadowMapTexture, VARYING5.xy);
    vec3 f30 = (min((f27.xyz * (f27.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f28.x)), vec3(CB0[16].w)) + (VARYING6 * ((1.0 - ((step(f29.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f29.y)) * f28.y))) * (f23.xyz * f23.xyz);
    vec4 f31 = vec4(0.0);
    f31.x = f30.x;
    vec4 f32 = f31;
    f32.y = f30.y;
    vec4 f33 = f32;
    f33.z = f30.z;
    vec4 f34 = f33;
    f34.w = 1.0;
    vec3 f35 = mix(CB0[14].xyz, f34.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f36 = f34;
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    vec4 f38 = f37;
    f38.z = f35.z;
    vec3 f39 = sqrt(clamp(f38.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f40 = f38;
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    gl_FragData[0] = f42;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
