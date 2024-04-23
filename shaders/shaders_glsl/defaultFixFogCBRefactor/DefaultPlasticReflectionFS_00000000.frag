#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D StudsMapTexture;
uniform samplerCube EnvironmentMapTexture;

varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING1.z) * 0.25;
    vec4 f1 = vec4((VARYING2.xyz * texture2D(StudsMapTexture, f0).x) * 2.0, VARYING2.w);
    vec3 f2 = f1.xyz;
    vec3 f3 = f2 * f2;
    vec4 f4 = f1;
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    float f7 = length(VARYING4.xyz);
    vec3 f8 = -(VARYING4.xyz / vec3(f7));
    vec3 f9 = textureCube(EnvironmentMapTexture, reflect(f8, normalize(VARYING5.xyz))).xyz;
    vec3 f10 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f11 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING3.yzx - (VARYING3.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture3D(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture3D(LightGridSkylightTexture, f12), vec4(1.0), f13);
    vec4 f16 = texture2D(ShadowMapTexture, f10.xy);
    float f17 = f10.z;
    float f18 = (1.0 - ((step(f16.x, f17) * clamp(CB0[29].z + (CB0[29].w * abs(f17 - 0.5)), 0.0, 1.0)) * f16.y)) * f15.y;
    vec3 f19 = (((VARYING6.xyz * f18) + min((f14.xyz * (f14.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f15.x)), vec3(CB0[21].w))) * mix(f6.xyz, (f9 * f9) * CB0[20].x, vec3(VARYING7.w))) + (CB0[15].xyz * ((VARYING6.w * f18) * 0.100000001490116119384765625));
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec4 f23 = f22;
    f23.w = VARYING2.w;
    vec3 f24 = f8 * f8;
    bvec3 f25 = lessThan(f8, vec3(0.0));
    vec3 f26 = vec3(f25.x ? f24.x : vec3(0.0).x, f25.y ? f24.y : vec3(0.0).y, f25.z ? f24.z : vec3(0.0).z);
    vec3 f27 = f24 - f26;
    vec3 f28 = (((((CB0[34].xyz * f27.x) + (CB0[36].xyz * f27.y)) + (CB0[38].xyz * f27.z)) + (CB0[35].xyz * f26.x)) + (CB0[37].xyz * f26.y)) + (CB0[39].xyz * f26.z);
    bvec3 f29 = bvec3(!(CB0[18].w == 0.0));
    vec3 f30 = mix(vec3(f29.x ? CB0[19].xyz.x : f28.x, f29.y ? CB0[19].xyz.y : f28.y, f29.z ? CB0[19].xyz.z : f28.z), f23.xyz, vec3(clamp(exp2((CB0[18].z * f7) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f31 = f23;
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
    vec4 f38 = f37;
    f38.w = VARYING2.w;
    gl_FragData[0] = f38;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$StudsMapTexture=s0
//$$EnvironmentMapTexture=s2
