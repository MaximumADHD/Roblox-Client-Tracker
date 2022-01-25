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
    float f4 = f3.w;
    if (f4 < (0.5 * CB0[47].z))
    {
        discard;
    }
    vec4 f5 = vec4(mix(vec4(f2.xyz * VARYING2.xyz, f4).xyz, f3.xyz, vec3(f4)), 0.0);
    vec4 f6 = vec4(f3.xyz, 0.0);
    bvec4 f7 = bvec4(!(CB3[0].x == 0.0));
    vec2 f8 = texture2D(NormalMapTexture, VARYING1).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    float f10 = sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0));
    vec2 f11 = vec3(f9, f10).xy * f1;
    vec4 f12 = texture2D(SpecularMapTexture, VARYING1);
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f11.x) + ((cross(f15, f14) * VARYING6.w) * f11.y)) + (f15 * f10));
    vec3 f17 = vec4(vec4(f7.x ? f5.x : f6.x, f7.y ? f5.y : f6.y, f7.z ? f5.z : f6.z, f7.w ? f5.w : f6.w).xyz, VARYING2.w).xyz;
    vec3 f18 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f19 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING3.yzx - (VARYING3.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture3D(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture3D(LightGridSkylightTexture, f20), vec4(1.0), f21);
    vec4 f24 = texture2D(ShadowMapTexture, f18.xy);
    float f25 = f18.z;
    vec3 f26 = (f17 * f17).xyz;
    float f27 = CB0[26].w * f1;
    float f28 = max(f12.y, 0.04500000178813934326171875);
    float f29 = f12.x * f27;
    vec3 f30 = -CB0[11].xyz;
    float f31 = dot(f16, f30) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[24].z + (CB0[24].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f23.y);
    vec3 f32 = normalize(f30 + (VARYING4.xyz / vec3(f0)));
    float f33 = clamp(f31, 0.0, 1.0);
    float f34 = f28 * f28;
    float f35 = max(0.001000000047497451305389404296875, dot(f16, f32));
    float f36 = dot(f30, f32);
    float f37 = 1.0 - f36;
    float f38 = f37 * f37;
    float f39 = (f38 * f38) * f37;
    vec3 f40 = vec3(f39) + (mix(vec3(0.039999999105930328369140625), f26, vec3(f29)) * (1.0 - f39));
    float f41 = f34 * f34;
    float f42 = (((f35 * f41) - f35) * f35) + 1.0;
    float f43 = 1.0 - f29;
    vec3 f44 = ((((((vec3(f43) - (f40 * (f27 * f43))) * CB0[10].xyz) * f33) + (CB0[12].xyz * (f43 * clamp(-f31, 0.0, 1.0)))) + min((f22.xyz * (f22.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f23.x)), vec3(CB0[16].w))) * f26) + ((f40 * (((f41 + (f41 * f41)) / (((f42 * f42) * ((f36 * 3.0) + 0.5)) * ((f35 * 0.75) + 0.25))) * f33)) * CB0[10].xyz);
    vec4 f45 = vec4(f44.x, f44.y, f44.z, vec4(0.0).w);
    f45.w = VARYING2.w;
    vec3 f46 = sqrt(clamp(mix(CB0[14].xyz, f45.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f47 = vec4(f46.x, f46.y, f46.z, f45.w);
    f47.w = VARYING2.w;
    gl_FragData[0] = f47;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$Tc2DiffuseMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
