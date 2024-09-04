#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform samplerCube EnvironmentMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec3 f0 = texture2D(DiffuseMapTexture, VARYING0).xyz * VARYING2.xyz;
    vec4 f1 = vec4(0.0);
    f1.x = f0.x;
    vec4 f2 = f1;
    f2.y = f0.y;
    vec4 f3 = f2;
    f3.z = f0.z;
    vec4 f4 = f3;
    f4.w = VARYING2.w;
    vec3 f5 = f4.xyz * f4.xyz;
    vec4 f6 = f4;
    f6.x = f5.x;
    vec4 f7 = f6;
    f7.y = f5.y;
    vec4 f8 = f7;
    f8.z = f5.z;
    float f9 = length(VARYING4.xyz);
    vec3 f10 = textureCube(EnvironmentMapTexture, reflect(-(VARYING4.xyz / vec3(f9)), normalize(VARYING5.xyz))).xyz;
    vec3 f11 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f12 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f13 = VARYING3.yzx - (VARYING3.yzx * f12);
    vec4 f14 = vec4(clamp(f12, 0.0, 1.0));
    vec4 f15 = mix(texture3D(LightMapTexture, f13), vec4(0.0), f14);
    vec4 f16 = mix(texture3D(LightGridSkylightTexture, f13), vec4(1.0), f14);
    float f17 = f16.x;
    vec4 f18 = texture2D(ShadowMapTexture, f11.xy);
    float f19 = f11.z;
    float f20 = (1.0 - ((step(f18.x, f19) * clamp(CB0[29].z + (CB0[29].w * abs(f19 - 0.5)), 0.0, 1.0)) * f18.y)) * f16.y;
    vec3 f21 = (((VARYING6.xyz * f20) + min((f15.xyz * (f15.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f17)), vec3(CB0[21].w))) * ((mix(vec3(1.0), (f10 * f10) * CB0[20].x, vec3(f17)) * VARYING7.w) + (f8.xyz * (VARYING2.w - VARYING7.w)))) + (CB0[15].xyz * ((VARYING6.w * f20) * 0.100000001490116119384765625));
    vec4 f22 = vec4(0.0);
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec4 f25 = f24;
    f25.w = VARYING2.w;
    float f26 = clamp(exp2((CB0[18].z * f9) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f27 = mix(CB0[19].xyz, f25.xyz, vec3(f26));
    vec4 f28 = f25;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec3 f31 = sqrt(clamp(f30.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f32 = f30;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    float f35 = 1.0 - ((1.0 - VARYING2.w) * f26);
    vec4 f36 = f34;
    f36.w = f35;
    vec4 f37 = f36;
    f37.w = f35;
    gl_FragData[0] = f37;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$EnvironmentMapTexture=s2
