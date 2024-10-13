#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB5[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D TranslationMapTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec2 VARYING5;

void main()
{
    vec2 f0 = (VARYING5 * vec2(0.03125)) + CB5[0].zw;
    bool f1 = CB5[0].z < 0.0;
    vec4 f2;
    if (!f1)
    {
        f2 = texture2D(TranslationMapTexture, vec4(f0, 0.0, 6.5).xy, 6.5);
    }
    else
    {
        f2 = vec4(0.0);
    }
    vec3 f3;
    vec3 f4;
    vec3 f5;
    if (((f2.w < 0.0) || f1) || (VARYING0.w > 0.0))
    {
        f5 = vec3(0.0, 1.0, 0.0);
        f4 = VARYING4.xyz * VARYING4.xyz;
        f3 = VARYING2;
    }
    else
    {
        vec2 f6 = (f0 * f2.z) + f2.xy;
        f5 = texture2D(SpecularMapTexture, f6).xyz;
        f4 = texture2D(AlbedoMapTexture, f6).xyz;
        f3 = (texture2D(NormalMapTexture, f6).xyz * 2.0) - vec3(1.0);
    }
    float f7 = clamp(1.0 - (VARYING1.w * CB0[28].y), 0.0, 1.0);
    float f8 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    vec3 f9 = VARYING1.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f10 = clamp(dot(step(CB0[24].xyz, abs(VARYING0.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f11 = VARYING0.yzx - (VARYING0.yzx * f10);
    vec4 f12 = vec4(clamp(f10, 0.0, 1.0));
    vec4 f13 = mix(texture3D(LightMapTexture, f11), vec4(0.0), f12);
    vec4 f14 = mix(texture3D(LightGridSkylightTexture, f11), vec4(1.0), f12);
    vec4 f15 = texture2D(ShadowMapTexture, f9.xy);
    float f16 = f9.z;
    vec3 f17 = -CB0[16].xyz;
    float f18 = dot(f3, f17) * ((1.0 - ((step(f15.x, f16) * clamp(CB0[29].z + (CB0[29].w * abs(f16 - 0.5)), 0.0, 1.0)) * f15.y)) * f14.y);
    vec3 f19 = normalize(normalize(VARYING3) + f17);
    float f20 = clamp(f18, 0.0, 1.0);
    float f21 = f8 * f8;
    float f22 = max(0.001000000047497451305389404296875, dot(f3, f19));
    float f23 = dot(f17, f19);
    float f24 = 1.0 - f23;
    float f25 = f24 * f24;
    float f26 = (f25 * f25) * f24;
    vec3 f27 = vec3(f26) + (mix(vec3(0.039999999105930328369140625), f4, vec3(f5.x)) * (1.0 - f26));
    float f28 = f21 * f21;
    float f29 = (((f22 * f28) - f22) * f22) + 1.0;
    float f30 = 1.0 - f5.x;
    vec3 f31 = (((vec3((f5.z * 2.0) * f7) + (min((f13.xyz * (f13.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f14.x)), vec3(CB0[21].w)) * 1.0)) + ((((vec3(f30) - (f27 * ((CB0[31].w * f7) * f30))) * CB0[15].xyz) * f20) + (CB0[17].xyz * (f30 * clamp(-f18, 0.0, 1.0))))) * f4) + (((f27 * (((f28 + (f28 * f28)) / (((f29 * f29) * ((f23 * 3.0) + 0.5)) * ((f22 * 0.75) + 0.25))) * f20)) * CB0[15].xyz) * 1.0);
    vec4 f32 = vec4(0.0);
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    vec4 f35 = f34;
    f35.w = 1.0;
    vec3 f36 = mix(CB0[19].xyz, f35.xyz, vec3(clamp(exp2((CB0[18].z * VARYING1.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f37 = f35;
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
    gl_FragData[0] = f43;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$TranslationMapTexture=s5
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s3
