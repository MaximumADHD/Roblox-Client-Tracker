#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SCExtraData.h>
uniform vec4 CB0[57];
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
    vec4 f0 = (fract(VARYING1) * CB3[0].xy.xyxy) + VARYING2;
    vec4 f1 = ((texture2D(AlbedoMapTexture, f0.xy).yxzw * VARYING0.x) + (texture2D(AlbedoMapTexture, f0.zw).yxzw * VARYING0.y)) + (texture2D(AlbedoMapTexture, (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw).yxzw * VARYING0.z);
    vec2 f2 = f1.yz - vec2(0.5);
    float f3 = f2.x;
    float f4 = f2.y;
    float f5 = VARYING8.x * f1.x;
    float f6 = (VARYING8.y * f3) - (VARYING8.z * f4);
    float f7 = (VARYING8.z * f3) + (VARYING8.y * f4);
    float f8 = f5 - f7;
    float f9 = f1.w;
    vec3 f10 = vec4(vec3(f8, f5, f8) + (vec3(f6, f7, f6) * vec3(1.0, 1.0, -1.0)), f9).xyz;
    vec3 f11 = mix(f10, f10 * VARYING8.xyz, vec3(VARYING8.w * f9));
    vec4 f12 = vec4(0.0);
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = f11.z;
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING4.yzx - (VARYING4.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture3D(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture3D(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec4 f20 = texture2D(ShadowMapTexture, VARYING5.xy);
    vec3 f21 = (min((f18.xyz * (f18.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f19.x)), vec3(CB0[21].w)) + (VARYING6 * ((1.0 - ((step(f20.x, VARYING5.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f20.y)) * f19.y))) * (f14.xyz * f14.xyz);
    vec4 f22 = vec4(0.0);
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec4 f25 = f24;
    f25.w = 1.0;
    vec3 f26 = normalize(-VARYING7);
    vec3 f27 = f26 * f26;
    bvec3 f28 = lessThan(f26, vec3(0.0));
    vec3 f29 = vec3(f28.x ? f27.x : vec3(0.0).x, f28.y ? f27.y : vec3(0.0).y, f28.z ? f27.z : vec3(0.0).z);
    vec3 f30 = f27 - f29;
    vec3 f31 = (((((CB0[34].xyz * f30.x) + (CB0[36].xyz * f30.y)) + (CB0[38].xyz * f30.z)) + (CB0[35].xyz * f29.x)) + (CB0[37].xyz * f29.y)) + (CB0[39].xyz * f29.z);
    bvec3 f32 = bvec3(!(CB0[18].w == 0.0));
    vec3 f33 = mix(vec3(f32.x ? CB0[19].xyz.x : f31.x, f32.y ? CB0[19].xyz.y : f31.y, f32.z ? CB0[19].xyz.z : f31.z), f25.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f34 = f25;
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    vec3 f37 = sqrt(clamp(f36.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f38 = f36;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    gl_FragData[0] = f40;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
