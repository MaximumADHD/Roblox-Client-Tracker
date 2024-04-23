#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f1 = f0.xyz;
    vec3 f2 = f1 * f1;
    vec4 f3 = f0;
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    float f6 = length(VARYING4.xyz);
    vec3 f7 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f8 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f9 = VARYING3.yzx - (VARYING3.yzx * f8);
    vec4 f10 = vec4(clamp(f8, 0.0, 1.0));
    vec4 f11 = mix(texture3D(LightMapTexture, f9), vec4(0.0), f10);
    vec4 f12 = mix(texture3D(LightGridSkylightTexture, f9), vec4(1.0), f10);
    vec4 f13 = texture2D(ShadowMapTexture, f7.xy);
    float f14 = f7.z;
    float f15 = (1.0 - ((step(f13.x, f14) * clamp(CB0[29].z + (CB0[29].w * abs(f14 - 0.5)), 0.0, 1.0)) * f13.y)) * f12.y;
    vec3 f16 = (((VARYING5.xyz * f15) + min((f11.xyz * (f11.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f12.x)), vec3(CB0[21].w))) * f5.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f5.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f15));
    vec4 f17 = vec4(0.0);
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    float f20 = f0.w;
    vec4 f21 = f19;
    f21.w = f20;
    vec3 f22 = -(VARYING4.xyz / vec3(f6));
    vec3 f23 = f22 * f22;
    bvec3 f24 = lessThan(f22, vec3(0.0));
    vec3 f25 = vec3(f24.x ? f23.x : vec3(0.0).x, f24.y ? f23.y : vec3(0.0).y, f24.z ? f23.z : vec3(0.0).z);
    vec3 f26 = f23 - f25;
    vec3 f27 = (((((CB0[34].xyz * f26.x) + (CB0[36].xyz * f26.y)) + (CB0[38].xyz * f26.z)) + (CB0[35].xyz * f25.x)) + (CB0[37].xyz * f25.y)) + (CB0[39].xyz * f25.z);
    bvec3 f28 = bvec3(!(CB0[18].w == 0.0));
    vec3 f29 = mix(vec3(f28.x ? CB0[19].xyz.x : f27.x, f28.y ? CB0[19].xyz.y : f27.y, f28.z ? CB0[19].xyz.z : f27.z), f21.xyz, vec3(clamp(exp2((CB0[18].z * f6) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f30 = f21;
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    vec3 f33 = sqrt(clamp(f32.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f34 = f32;
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    vec4 f37 = f36;
    f37.w = f20;
    gl_FragData[0] = f37;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
