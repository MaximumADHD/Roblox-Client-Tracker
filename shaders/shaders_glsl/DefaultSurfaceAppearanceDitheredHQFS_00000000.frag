#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[58];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = length(VARYING4.xyz);
    float f1 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec4 f2 = texture2D(DiffuseMapTexture, VARYING0);
    float f3 = f2.w;
    if (f3 < (0.5 * CB0[52].z))
    {
        discard;
    }
    vec4 f4 = vec4(mix(VARYING2.xyz, f2.xyz, vec3(f3)), VARYING2.w);
    vec4 f5 = vec4(f2.xyz, VARYING2.w * f3);
    bvec4 f6 = bvec4(!(CB3[0].x == 0.0));
    vec4 f7 = vec4(f6.x ? f4.x : f5.x, f6.y ? f4.y : f5.y, f6.z ? f4.z : f5.z, f6.w ? f4.w : f5.w);
    vec2 f8 = texture2D(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    float f10 = sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0));
    vec2 f11 = vec3(f9, f10).xy * f1;
    vec4 f12 = texture2D(SpecularMapTexture, VARYING0);
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f11.x) + ((cross(f15, f14) * VARYING6.w) * f11.y)) + (f15 * f10));
    vec3 f17 = f7.xyz;
    vec3 f18 = f17 * f17;
    vec4 f19 = f7;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = CB0[31].w * f1;
    float f23 = 0.08900000154972076416015625 + (f12.y * 0.9110000133514404296875);
    float f24 = f12.x * f22;
    vec3 f25 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f26 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f27 = VARYING3.yzx - (VARYING3.yzx * f26);
    vec4 f28 = vec4(clamp(f26, 0.0, 1.0));
    vec4 f29 = mix(texture3D(LightMapTexture, f27), vec4(0.0), f28);
    vec4 f30 = mix(texture3D(LightGridSkylightTexture, f27), vec4(1.0), f28);
    vec4 f31 = texture2D(ShadowMapTexture, f25.xy);
    float f32 = f25.z;
    vec3 f33 = -CB0[16].xyz;
    float f34 = dot(f16, f33) * ((1.0 - ((step(f31.x, f32) * clamp(CB0[29].z + (CB0[29].w * abs(f32 - 0.5)), 0.0, 1.0)) * f31.y)) * f30.y);
    vec3 f35 = normalize((VARYING4.xyz / vec3(f0)) - CB0[16].xyz);
    float f36 = clamp(f34, 0.0, 1.0);
    float f37 = f23 * f23;
    float f38 = max(0.001000000047497451305389404296875, dot(f16, f35));
    float f39 = dot(f33, f35);
    float f40 = 1.0 - f39;
    float f41 = f40 * f40;
    float f42 = (f41 * f41) * f40;
    vec3 f43 = vec3(f42) + (mix(vec3(0.039999999105930328369140625), f21.xyz, vec3(f24)) * (1.0 - f42));
    float f44 = f37 * f37;
    float f45 = (((f38 * f44) - f38) * f38) + 1.0;
    float f46 = 1.0 - f24;
    vec3 f47 = ((((((vec3(f46) - (f43 * (f22 * f46))) * CB0[15].xyz) * f36) + (CB0[17].xyz * (f46 * clamp(-f34, 0.0, 1.0)))) + min((f29.xyz * (f29.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f30.x)), vec3(CB0[21].w))) * f21.xyz) + (((f43 * (min((f44 + (f44 * f44)) / (((f45 * f45) * ((f39 * 3.0) + 0.5)) * ((f38 * 0.75) + 0.25)), 65504.0) * f36)) * CB0[15].xyz) * 1.0);
    vec4 f48 = vec4(0.0);
    f48.x = f47.x;
    vec4 f49 = f48;
    f49.y = f47.y;
    vec4 f50 = f49;
    f50.z = f47.z;
    float f51 = f7.w;
    vec4 f52 = f50;
    f52.w = f51;
    vec3 f53 = mix(CB0[19].xyz, f52.xyz, vec3(clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f54 = f52;
    f54.x = f53.x;
    vec4 f55 = f54;
    f55.y = f53.y;
    vec4 f56 = f55;
    f56.z = f53.z;
    vec3 f57 = sqrt(clamp(f56.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f58 = f56;
    f58.x = f57.x;
    vec4 f59 = f58;
    f59.y = f57.y;
    vec4 f60 = f59;
    f60.z = f57.z;
    vec4 f61 = f60;
    f61.w = f51;
    gl_FragData[0] = f61;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
