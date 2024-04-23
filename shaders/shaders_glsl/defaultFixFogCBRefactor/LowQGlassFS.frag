#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
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
    vec3 f10 = -(VARYING4.xyz / vec3(f9));
    vec3 f11 = textureCube(EnvironmentMapTexture, reflect(f10, normalize(VARYING5.xyz))).xyz;
    vec3 f12 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f13 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING3.yzx - (VARYING3.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture3D(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture3D(LightGridSkylightTexture, f14), vec4(1.0), f15);
    float f18 = f17.x;
    vec4 f19 = texture2D(ShadowMapTexture, f12.xy);
    float f20 = f12.z;
    float f21 = (1.0 - ((step(f19.x, f20) * clamp(CB0[29].z + (CB0[29].w * abs(f20 - 0.5)), 0.0, 1.0)) * f19.y)) * f17.y;
    vec3 f22 = (((VARYING6.xyz * f21) + min((f16.xyz * (f16.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f18)), vec3(CB0[21].w))) * ((mix(vec3(1.0), (f11 * f11) * CB0[20].x, vec3(f18)) * VARYING7.w) + (f8.xyz * (VARYING2.w - VARYING7.w)))) + (CB0[15].xyz * ((VARYING6.w * f21) * 0.100000001490116119384765625));
    vec4 f23 = vec4(0.0);
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    vec4 f26 = f25;
    f26.w = VARYING2.w;
    float f27 = clamp(exp2((CB0[18].z * f9) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f28 = f10 * f10;
    bvec3 f29 = lessThan(f10, vec3(0.0));
    vec3 f30 = vec3(f29.x ? f28.x : vec3(0.0).x, f29.y ? f28.y : vec3(0.0).y, f29.z ? f28.z : vec3(0.0).z);
    vec3 f31 = f28 - f30;
    vec3 f32 = (((((CB0[34].xyz * f31.x) + (CB0[36].xyz * f31.y)) + (CB0[38].xyz * f31.z)) + (CB0[35].xyz * f30.x)) + (CB0[37].xyz * f30.y)) + (CB0[39].xyz * f30.z);
    bvec3 f33 = bvec3(!(CB0[18].w == 0.0));
    vec3 f34 = mix(vec3(f33.x ? CB0[19].xyz.x : f32.x, f33.y ? CB0[19].xyz.y : f32.y, f33.z ? CB0[19].xyz.z : f32.z), f26.xyz, vec3(f27));
    vec4 f35 = f26;
    f35.x = f34.x;
    vec4 f36 = f35;
    f36.y = f34.y;
    vec4 f37 = f36;
    f37.z = f34.z;
    vec3 f38 = sqrt(clamp(f37.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f39 = f37;
    f39.x = f38.x;
    vec4 f40 = f39;
    f40.y = f38.y;
    vec4 f41 = f40;
    f41.z = f38.z;
    float f42 = 1.0 - ((1.0 - VARYING2.w) * f27);
    vec4 f43 = f41;
    f43.w = f42;
    vec4 f44 = f43;
    f44.w = f42;
    gl_FragData[0] = f44;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$EnvironmentMapTexture=s2
