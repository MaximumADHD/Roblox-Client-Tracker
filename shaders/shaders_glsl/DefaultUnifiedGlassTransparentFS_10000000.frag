#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
    float f11 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING3.yzx - (VARYING3.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture3D(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture3D(LightGridSkylightTexture, f12), vec4(1.0), f13);
    float f16 = f15.x;
    float f17 = f15.y;
    vec3 f18 = (((VARYING6.xyz * f17) + min((f14.xyz * (f14.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f16)), vec3(CB0[21].w))) * ((mix(vec3(1.0), (f10 * f10) * CB0[20].x, vec3(f16)) * VARYING7.w) + (f8.xyz * (VARYING2.w - VARYING7.w)))) + (CB0[15].xyz * ((VARYING6.w * f17) * 0.100000001490116119384765625));
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    vec4 f22 = f21;
    f22.w = VARYING2.w;
    float f23 = clamp(exp2((CB0[18].z * f9) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f24 = mix(CB0[19].xyz, f22.xyz, vec3(f23));
    vec4 f25 = f22;
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    vec3 f28 = sqrt(clamp(f27.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f29 = f27;
    f29.x = f28.x;
    vec4 f30 = f29;
    f30.y = f28.y;
    vec4 f31 = f30;
    f31.z = f28.z;
    float f32 = 1.0 - ((1.0 - VARYING2.w) * f23);
    vec4 f33 = f31;
    f33.w = f32;
    vec4 f34 = f33;
    f34.w = f32;
    gl_FragData[0] = f34;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$EnvironmentMapTexture=s2
