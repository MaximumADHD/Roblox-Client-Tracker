#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D Tc2DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = length(VARYING4.xyz);
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f2 = texture2D(DiffuseMapTexture, VARYING0);
    vec4 f3 = texture2D(Tc2DiffuseMapTexture, VARYING1);
    vec4 f4 = mix(f2, f3, vec4(f3.w));
    float f5 = f4.w;
    float f6 = fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    if (smoothstep(0.0, 1.0, f5) < (f6 * CB0[47].z))
    {
        discard;
    }
    vec4 f7 = vec4(mix(VARYING2.xyz, f4.xyz, vec3(f5)), VARYING2.w);
    vec4 f8 = vec4(f4.xyz, VARYING2.w * f5);
    bvec4 f9 = bvec4(CB3[0].x != 0.0);
    vec4 f10 = vec4(f9.x ? f7.x : f8.x, f9.y ? f7.y : f8.y, f9.z ? f7.z : f8.z, f9.w ? f7.w : f8.w);
    vec2 f11 = texture2D(NormalMapTexture, VARYING1).wy * 2.0;
    vec2 f12 = f11 - vec2(1.0);
    float f13 = sqrt(clamp(1.0 + dot(vec2(1.0) - f11, f12), 0.0, 1.0));
    vec2 f14 = vec3(f12, f13).xy * f1;
    vec4 f15 = texture2D(SpecularMapTexture, VARYING1);
    float f16 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f17 = VARYING6.xyz * f16;
    vec3 f18 = VARYING5.xyz * f16;
    vec3 f19 = normalize(((f17 * f14.x) + ((cross(f18, f17) * VARYING6.w) * f14.y)) + (f18 * f13));
    vec3 f20 = f10.xyz;
    vec3 f21 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f22 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING3.yzx - (VARYING3.yzx * f22);
    vec4 f24 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f25 = mix(texture3D(LightMapTexture, f23), vec4(0.0), f24);
    vec4 f26 = mix(texture3D(LightGridSkylightTexture, f23), vec4(1.0), f24);
    vec4 f27 = texture2D(ShadowMapTexture, f21.xy);
    float f28 = f21.z;
    vec3 f29 = (f20 * f20).xyz;
    float f30 = CB0[26].w * f1;
    float f31 = max(f15.y, 0.04500000178813934326171875);
    float f32 = f15.x * f30;
    vec3 f33 = -CB0[11].xyz;
    float f34 = dot(f19, f33) * ((1.0 - ((step(f27.x, f28) * clamp(CB0[24].z + (CB0[24].w * abs(f28 - 0.5)), 0.0, 1.0)) * f27.y)) * f26.y);
    vec3 f35 = normalize(f33 + (VARYING4.xyz / vec3(f0)));
    float f36 = clamp(f34, 0.0, 1.0);
    float f37 = f31 * f31;
    float f38 = max(0.001000000047497451305389404296875, dot(f19, f35));
    float f39 = dot(f33, f35);
    float f40 = 1.0 - f39;
    float f41 = f40 * f40;
    float f42 = (f41 * f41) * f40;
    vec3 f43 = vec3(f42) + (mix(vec3(0.039999999105930328369140625), f29, vec3(f32)) * (1.0 - f42));
    float f44 = f37 * f37;
    float f45 = (((f38 * f44) - f38) * f38) + 1.0;
    float f46 = 1.0 - f32;
    vec3 f47 = ((((((vec3(f46) - (f43 * (f30 * f46))) * CB0[10].xyz) * f36) + (CB0[12].xyz * (f46 * clamp(-f34, 0.0, 1.0)))) + min((f25.xyz * (f25.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f26.x)), vec3(CB0[16].w))) * f29) + ((f43 * (((f44 + (f44 * f44)) / (((f45 * f45) * ((f39 * 3.0) + 0.5)) * ((f38 * 0.75) + 0.25))) * f36)) * CB0[10].xyz);
    float f48 = f10.w;
    vec4 f49 = vec4(f47.x, f47.y, f47.z, vec4(0.0).w);
    f49.w = f48;
    vec3 f50 = sqrt(clamp(mix(CB0[14].xyz, f49.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * f6));
    vec4 f51 = vec4(f50.x, f50.y, f50.z, f49.w);
    f51.w = f48;
    gl_FragData[0] = f51;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$Tc2DiffuseMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
