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
    float f5 = fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    if (smoothstep(0.0, 1.0, f4) < (f5 * CB0[47].z))
    {
        discard;
    }
    vec4 f6 = vec4(mix(vec4(f2.xyz * VARYING2.xyz, f4).xyz, f3.xyz, vec3(f4)), f4);
    vec4 f7 = vec4(f3.xyz, f4 * f4);
    bvec4 f8 = bvec4(!(CB3[0].x == 0.0));
    vec4 f9 = vec4(f8.x ? f6.x : f7.x, f8.y ? f6.y : f7.y, f8.z ? f6.z : f7.z, f8.w ? f6.w : f7.w);
    vec2 f10 = texture2D(NormalMapTexture, VARYING1).wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0));
    vec2 f13 = vec3(f11, f12).xy * f1;
    vec4 f14 = texture2D(SpecularMapTexture, VARYING1);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f13.x) + ((cross(f17, f16) * VARYING6.w) * f13.y)) + (f17 * f12));
    vec3 f19 = f9.xyz;
    vec3 f20 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f21 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING3.yzx - (VARYING3.yzx * f21);
    vec4 f23 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f24 = mix(texture3D(LightMapTexture, f22), vec4(0.0), f23);
    vec4 f25 = mix(texture3D(LightGridSkylightTexture, f22), vec4(1.0), f23);
    vec4 f26 = texture2D(ShadowMapTexture, f20.xy);
    float f27 = f20.z;
    vec3 f28 = (f19 * f19).xyz;
    float f29 = CB0[26].w * f1;
    float f30 = max(f14.y, 0.04500000178813934326171875);
    float f31 = f14.x * f29;
    vec3 f32 = -CB0[11].xyz;
    float f33 = dot(f18, f32) * ((1.0 - ((step(f26.x, f27) * clamp(CB0[24].z + (CB0[24].w * abs(f27 - 0.5)), 0.0, 1.0)) * f26.y)) * f25.y);
    vec3 f34 = normalize(f32 + (VARYING4.xyz / vec3(f0)));
    float f35 = clamp(f33, 0.0, 1.0);
    float f36 = f30 * f30;
    float f37 = max(0.001000000047497451305389404296875, dot(f18, f34));
    float f38 = dot(f32, f34);
    float f39 = 1.0 - f38;
    float f40 = f39 * f39;
    float f41 = (f40 * f40) * f39;
    vec3 f42 = vec3(f41) + (mix(vec3(0.039999999105930328369140625), f28, vec3(f31)) * (1.0 - f41));
    float f43 = f36 * f36;
    float f44 = (((f37 * f43) - f37) * f37) + 1.0;
    float f45 = 1.0 - f31;
    vec3 f46 = ((((((vec3(f45) - (f42 * (f29 * f45))) * CB0[10].xyz) * f35) + (CB0[12].xyz * (f45 * clamp(-f33, 0.0, 1.0)))) + min((f24.xyz * (f24.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f25.x)), vec3(CB0[16].w))) * f28) + ((f42 * (((f43 + (f43 * f43)) / (((f44 * f44) * ((f38 * 3.0) + 0.5)) * ((f37 * 0.75) + 0.25))) * f35)) * CB0[10].xyz);
    float f47 = f9.w;
    vec4 f48 = vec4(f46.x, f46.y, f46.z, vec4(0.0).w);
    f48.w = f47;
    vec3 f49 = sqrt(clamp(mix(CB0[14].xyz, f48.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * f5));
    vec4 f50 = vec4(f49.x, f49.y, f49.z, f48.w);
    f50.w = f47;
    gl_FragData[0] = f50;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$Tc2DiffuseMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
