#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[61];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D EditableImageRoughnessMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying vec3 VARYING8;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    if (f0.w < (0.5 * CB0[53].z))
    {
        discard;
    }
    vec3 f1 = f0.xyz * VARYING8;
    float f2 = f1.x;
    vec4 f3 = f0;
    f3.x = f2;
    vec4 f4 = f3;
    f4.y = f1.y;
    vec4 f5 = f4;
    f5.z = f1.z;
    float f6 = f0.w;
    vec4 f7 = mix(vec4(f2, f1.yz, VARYING2.w * f6), vec4(mix(VARYING2.xyz, f5.xyz, vec3(f6)), VARYING2.w), vec4(CB3[0].x));
    vec3 f8 = mix(vec3(0.0, 0.0, 1.0), (texture2D(NormalMapTexture, VARYING0).xyz * 2.0) - vec3(1.0), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    float f9 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f10 = VARYING6.xyz * f9;
    vec3 f11 = VARYING5.xyz * f9;
    vec3 f12 = normalize(((f10 * f8.x) + ((cross(f11, f10) * VARYING6.w) * f8.y)) + (f11 * f8.z));
    vec3 f13 = f7.xyz;
    vec3 f14 = f13 * f13;
    vec4 f15 = f7;
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    float f18 = length(VARYING4.xyz);
    float f19 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f20 = 0.08900000154972076416015625 + (texture2D(EditableImageRoughnessMapTexture, VARYING0).x * 0.9110000133514404296875);
    float f21 = texture2D(SpecularMapTexture, VARYING0).x * f19;
    vec3 f22 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f23 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f24 = VARYING3.yzx - (VARYING3.yzx * f23);
    vec4 f25 = vec4(clamp(f23, 0.0, 1.0));
    vec4 f26 = mix(texture3D(LightMapTexture, f24), vec4(0.0), f25);
    vec4 f27 = mix(texture3D(LightGridSkylightTexture, f24), vec4(1.0), f25);
    vec4 f28 = texture2D(ShadowMapTexture, f22.xy);
    float f29 = f22.z;
    vec3 f30 = -CB0[16].xyz;
    float f31 = dot(f12, f30) * ((1.0 - ((step(f28.x, f29) * clamp(CB0[29].z + (CB0[29].w * abs(f29 - 0.5)), 0.0, 1.0)) * f28.y)) * f27.y);
    vec3 f32 = normalize((VARYING4.xyz / vec3(f18)) + f30);
    float f33 = clamp(f31, 0.0, 1.0);
    float f34 = f20 * f20;
    float f35 = max(0.001000000047497451305389404296875, dot(f12, f32));
    float f36 = dot(f30, f32);
    float f37 = 1.0 - f36;
    float f38 = f37 * f37;
    float f39 = (f38 * f38) * f37;
    vec3 f40 = vec3(f39) + (mix(vec3(0.039999999105930328369140625), f17.xyz, vec3(f21)) * (1.0 - f39));
    float f41 = f34 * f34;
    float f42 = (((f35 * f41) - f35) * f35) + 1.0;
    float f43 = 1.0 - f21;
    vec3 f44 = (((min((f26.xyz * (f26.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f27.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(f43) - (f40 * (f19 * f43))) * CB0[15].xyz) * f33) + (CB0[17].xyz * (f43 * clamp(-f31, 0.0, 1.0))))) * f17.xyz) + (((f40 * (((f41 + (f41 * f41)) / (((f42 * f42) * ((f36 * 3.0) + 0.5)) * ((f35 * 0.75) + 0.25))) * f33)) * CB0[15].xyz) * 1.0);
    vec4 f45 = vec4(0.0);
    f45.x = f44.x;
    vec4 f46 = f45;
    f46.y = f44.y;
    vec4 f47 = f46;
    f47.z = f44.z;
    float f48 = f7.w;
    vec4 f49 = f47;
    f49.w = f48;
    vec3 f50 = mix(CB0[19].xyz, f49.xyz, vec3(clamp(exp2((CB0[18].z * f18) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f51 = f49;
    f51.x = f50.x;
    vec4 f52 = f51;
    f52.y = f50.y;
    vec4 f53 = f52;
    f53.z = f50.z;
    vec3 f54 = sqrt(clamp(f53.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f55 = f53;
    f55.x = f54.x;
    vec4 f56 = f55;
    f56.y = f54.y;
    vec4 f57 = f56;
    f57.z = f54.z;
    vec4 f58 = f57;
    f58.w = f48;
    gl_FragData[0] = f58;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
//$$EditableImageRoughnessMapTexture=s9
