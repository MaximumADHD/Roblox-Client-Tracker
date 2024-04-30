#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[57];
uniform vec4 CB3[1];
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
varying vec3 VARYING7;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    if (f0.w < (0.5 * CB0[52].z))
    {
        discard;
    }
    vec3 f1 = f0.xyz * VARYING7;
    float f2 = f1.x;
    vec4 f3 = f0;
    f3.x = f2;
    vec4 f4 = f3;
    f4.y = f1.y;
    vec4 f5 = f4;
    f5.z = f1.z;
    float f6 = f0.w;
    vec4 f7 = mix(vec4(f2, f1.yz, VARYING2.w * f6), vec4(mix(VARYING2.xyz, f5.xyz, vec3(f6)), VARYING2.w), vec4(CB3[0].x));
    vec3 f8 = f7.xyz;
    vec3 f9 = f8 * f8;
    vec4 f10 = f7;
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    float f13 = length(VARYING4.xyz);
    vec3 f14 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture3D(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture3D(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec4 f20 = texture2D(ShadowMapTexture, f14.xy);
    float f21 = f14.z;
    float f22 = (1.0 - ((step(f20.x, f21) * clamp(CB0[29].z + (CB0[29].w * abs(f21 - 0.5)), 0.0, 1.0)) * f20.y)) * f19.y;
    vec3 f23 = (((VARYING5.xyz * f22) + min((f18.xyz * (f18.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f19.x)), vec3(CB0[21].w))) * f12.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f12.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f22));
    vec4 f24 = vec4(0.0);
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    float f27 = f7.w;
    vec4 f28 = f26;
    f28.w = f27;
    vec3 f29 = -(VARYING4.xyz / vec3(f13));
    vec3 f30 = f29 * f29;
    bvec3 f31 = lessThan(f29, vec3(0.0));
    vec3 f32 = vec3(f31.x ? f30.x : vec3(0.0).x, f31.y ? f30.y : vec3(0.0).y, f31.z ? f30.z : vec3(0.0).z);
    vec3 f33 = f30 - f32;
    vec3 f34 = (((((CB0[34].xyz * f33.x) + (CB0[36].xyz * f33.y)) + (CB0[38].xyz * f33.z)) + (CB0[35].xyz * f32.x)) + (CB0[37].xyz * f32.y)) + (CB0[39].xyz * f32.z);
    bvec3 f35 = bvec3(!(CB0[18].w == 0.0));
    vec3 f36 = mix(vec3(f35.x ? CB0[19].xyz.x : f34.x, f35.y ? CB0[19].xyz.y : f34.y, f35.z ? CB0[19].xyz.z : f34.z), f28.xyz, vec3(clamp(exp2((CB0[18].z * f13) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f37 = f28;
    f37.x = f36.x;
    vec4 f38 = f37;
    f38.y = f36.y;
    vec4 f39 = f38;
    f39.z = f36.z;
    vec3 f40 = sqrt(clamp(f39.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f41 = f39;
    f41.x = f40.x;
    vec4 f42 = f41;
    f42.y = f40.y;
    vec4 f43 = f42;
    f43.z = f40.z;
    vec4 f44 = f43;
    f44.w = f27;
    gl_FragData[0] = f44;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
