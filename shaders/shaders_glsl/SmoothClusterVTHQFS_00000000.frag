#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 CB5[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D TranslationMapTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec2 VARYING6;

void main()
{
    vec2 f0 = (VARYING6 * vec2(0.03125)) + CB5[0].zw;
    vec4 f1 = texture2D(TranslationMapTexture, vec4(f0, 0.0, 6.5).xy, 6.5);
    vec3 f2;
    vec3 f3;
    vec3 f4;
    if (f1.w < 0.0)
    {
        f4 = vec3(0.0, 1.0, 0.0);
        f3 = VARYING5.xyz * VARYING5.xyz;
        f2 = VARYING3;
    }
    else
    {
        vec2 f5 = (f0 * f1.z) + f1.xy;
        f4 = texture2D(SpecularMapTexture, f5).xyz;
        f3 = texture2D(AlbedoMapTexture, f5).xyz;
        f2 = (texture2D(NormalMapTexture, f5).xyz * 2.0) - vec3(1.0);
    }
    float f6 = clamp(1.0 - (VARYING2.w * CB0[28].y), 0.0, 1.0);
    float f7 = 0.08900000154972076416015625 + (f4.y * 0.9110000133514404296875);
    vec3 f8 = VARYING2.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f9 = clamp(dot(step(CB0[24].xyz, abs(VARYING1 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING1.yzx - (VARYING1.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture3D(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture3D(LightGridSkylightTexture, f10), vec4(1.0), f11);
    vec4 f14 = texture2D(ShadowMapTexture, f8.xy);
    float f15 = f8.z;
    vec3 f16 = -CB0[16].xyz;
    float f17 = dot(f2, f16) * ((1.0 - ((step(f14.x, f15) * clamp(CB0[29].z + (CB0[29].w * abs(f15 - 0.5)), 0.0, 1.0)) * f14.y)) * f13.y);
    vec3 f18 = normalize(normalize(VARYING4) + f16);
    float f19 = clamp(f17, 0.0, 1.0);
    float f20 = f7 * f7;
    float f21 = max(0.001000000047497451305389404296875, dot(f2, f18));
    float f22 = dot(f16, f18);
    float f23 = 1.0 - f22;
    float f24 = f23 * f23;
    float f25 = (f24 * f24) * f23;
    vec3 f26 = vec3(f25) + (mix(vec3(0.039999999105930328369140625), f3, vec3(f4.x)) * (1.0 - f25));
    float f27 = f20 * f20;
    float f28 = (((f21 * f27) - f21) * f21) + 1.0;
    float f29 = 1.0 - f4.x;
    vec3 f30 = (((((((vec3(f29) - (f26 * ((CB0[31].w * f6) * f29))) * CB0[15].xyz) * f19) + (CB0[17].xyz * (f29 * clamp(-f17, 0.0, 1.0)))) + (min((f12.xyz * (f12.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f13.x)), vec3(CB0[21].w)) * 1.0)) + vec3((f4.z * 2.0) * f6)) * f3) + ((((f26 * (((f27 + (f27 * f27)) / (((f28 * f28) * ((f22 * 3.0) + 0.5)) * ((f21 * 0.75) + 0.25))) * f19)) * CB0[15].xyz) * 1.0) * (f6 * VARYING0.w));
    vec4 f31 = vec4(0.0);
    f31.x = f30.x;
    vec4 f32 = f31;
    f32.y = f30.y;
    vec4 f33 = f32;
    f33.z = f30.z;
    vec4 f34 = f33;
    f34.w = 1.0;
    vec3 f35 = mix(CB0[19].xyz, f34.xyz, vec3(clamp(exp2((CB0[18].z * VARYING2.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f36 = f34;
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    vec4 f38 = f37;
    f38.z = f35.z;
    vec3 f39 = sqrt(clamp(f38.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f40 = f38;
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    gl_FragData[0] = f42;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$TranslationMapTexture=s5
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s3
