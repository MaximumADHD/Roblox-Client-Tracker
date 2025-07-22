#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
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
    vec3 f10 = reflect(-(VARYING4.xyz / vec3(f9)), normalize(VARYING5.xyz));
    vec3 f11 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f10;
    bvec3 f12 = bvec3(!(CB0[58].x == 2.0));
    vec3 f13 = textureCube(EnvironmentMapTexture, vec3(f12.x ? f11.x : f10.x, f12.y ? f11.y : f10.y, f12.z ? f11.z : f10.z)).xyz;
    vec3 f14 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture3D(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture3D(LightGridSkylightTexture, f16), vec4(1.0), f17);
    float f20 = f19.x;
    vec4 f21 = texture2D(ShadowMapTexture, f14.xy);
    float f22 = f14.z;
    float f23 = (1.0 - ((step(f21.x, f22) * clamp(CB0[29].z + (CB0[29].w * abs(f22 - 0.5)), 0.0, 1.0)) * f21.y)) * f19.y;
    vec3 f24 = (((VARYING6.xyz * f23) + min((f18.xyz * (f18.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f20)), vec3(CB0[21].w))) * ((mix(vec3(1.0), (f13 * f13) * CB0[20].x, vec3(f20)) * VARYING7.w) + (f8.xyz * (VARYING2.w - VARYING7.w)))) + (CB0[15].xyz * ((VARYING6.w * f23) * 0.100000001490116119384765625));
    vec4 f25 = vec4(0.0);
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    vec4 f28 = f27;
    f28.w = VARYING2.w;
    float f29 = clamp(exp2((CB0[18].z * f9) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f30 = mix(CB0[19].xyz, f28.xyz, vec3(f29));
    vec4 f31 = f28;
    f31.x = f30.x;
    vec4 f32 = f31;
    f32.y = f30.y;
    vec4 f33 = f32;
    f33.z = f30.z;
    vec3 f34 = sqrt(clamp(f33.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f35 = f33;
    f35.x = f34.x;
    vec4 f36 = f35;
    f36.y = f34.y;
    vec4 f37 = f36;
    f37.z = f34.z;
    float f38 = 1.0 - ((1.0 - VARYING2.w) * f29);
    vec4 f39 = f37;
    f39.w = f38;
    vec4 f40 = f39;
    f40.w = f38;
    gl_FragData[0] = f40;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$EnvironmentMapTexture=s2
