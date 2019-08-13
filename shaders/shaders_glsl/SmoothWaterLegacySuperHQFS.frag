#version 110

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec4 Technology_Exposure;
    vec4 LightBorder;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlagsShadows;
};

struct Params
{
    vec4 WaveParams;
    vec4 WaterColor;
    vec4 WaterParams;
};

uniform vec4 CB0[32];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube EnvMapTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;
varying vec4 VARYING8;

void main()
{
    float f0 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture3D(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture3D(LightGridSkylightTexture, f1), vec4(1.0), f2);
    float f5 = f4.y;
    vec4 f6 = vec4(CB3[0].w);
    float f7 = -VARYING6.x;
    vec2 f8 = (((mix(texture2D(NormalMap1Texture, VARYING2), texture2D(NormalMap2Texture, VARYING2), f6) * VARYING0.x) + (mix(texture2D(NormalMap1Texture, VARYING3), texture2D(NormalMap2Texture, VARYING3), f6) * VARYING0.y)) + (mix(texture2D(NormalMap1Texture, VARYING4), texture2D(NormalMap2Texture, VARYING4), f6) * VARYING0.z)).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    vec3 f10 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f11 = normalize(((mix(vec3(VARYING6.z, 0.0, f7), vec3(VARYING6.y, f7, 0.0), f10) * f9.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f10) * f9.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0))));
    vec3 f12 = mix(VARYING6, f11, vec3(0.25));
    vec3 f13 = normalize(VARYING7.xyz);
    vec2 f14 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f15 = f14 + (f11.xz * 0.0500000007450580596923828125);
    vec4 f16 = texture2D(GBufferColorTexture, f14);
    f16.w = texture2D(GBufferDepthTexture, f14).x * 500.0;
    float f17 = texture2D(GBufferDepthTexture, f15).x * 500.0;
    vec4 f18 = texture2D(GBufferColorTexture, f15);
    f18.w = f17;
    vec4 f19 = mix(f16, f18, vec4(clamp(f17 - VARYING8.w, 0.0, 1.0)));
    vec3 f20 = f19.xyz;
    vec3 f21 = vec3(CB0[15].x);
    vec3 f22 = reflect(-f13, f12);
    float f23 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f24 = vec4(f22, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float f25 = f24.w;
    vec2 f26 = (f24.xy * 0.5) + vec2(0.5 * f25);
    vec4 f27 = vec4(f26.x, f26.y, f24.z, f24.w);
    float f28 = 1.0 + clamp(0.0, VARYING8.w * (-0.20000000298023223876953125), f23);
    vec4 f29 = VARYING8 + (f27 * f28);
    float f30 = f29.w;
    float f31 = f28 + clamp((texture2D(GBufferDepthTexture, f29.xy / vec2(f30)).x * 500.0) - f30, VARYING8.w * (-0.20000000298023223876953125), f23);
    vec4 f32 = VARYING8 + (f27 * f31);
    float f33 = f32.w;
    float f34 = f31 + clamp((texture2D(GBufferDepthTexture, f32.xy / vec2(f33)).x * 500.0) - f33, VARYING8.w * (-0.20000000298023223876953125), f23);
    vec4 f35 = VARYING8 + (f27 * f34);
    float f36 = f35.w;
    float f37 = f34 + clamp((texture2D(GBufferDepthTexture, f35.xy / vec2(f36)).x * 500.0) - f36, VARYING8.w * (-0.20000000298023223876953125), f23);
    vec4 f38 = VARYING8 + (f27 * f37);
    float f39 = f38.w;
    float f40 = f37 + clamp((texture2D(GBufferDepthTexture, f38.xy / vec2(f39)).x * 500.0) - f39, VARYING8.w * (-0.20000000298023223876953125), f23);
    vec4 f41 = VARYING8 + (f27 * f40);
    float f42 = f41.w;
    float f43 = f40 + clamp((texture2D(GBufferDepthTexture, f41.xy / vec2(f42)).x * 500.0) - f42, VARYING8.w * (-0.20000000298023223876953125), f23);
    vec4 f44 = VARYING8 + (f27 * f43);
    float f45 = f44.w;
    float f46 = f43 + clamp((texture2D(GBufferDepthTexture, f44.xy / vec2(f45)).x * 500.0) - f45, VARYING8.w * (-0.20000000298023223876953125), f23);
    vec4 f47 = VARYING8 + (f27 * f46);
    float f48 = f47.w;
    float f49 = f46 + clamp((texture2D(GBufferDepthTexture, f47.xy / vec2(f48)).x * 500.0) - f48, VARYING8.w * (-0.20000000298023223876953125), f23);
    vec4 f50 = VARYING8 + (f27 * f49);
    float f51 = f50.w;
    vec4 f52 = VARYING8 + (f27 * f49);
    float f53 = f52.w;
    vec2 f54 = f52.xy / vec2(f53);
    vec3 f55 = textureCube(EnvMapTexture, f22).xyz;
    vec3 f56 = texture2D(GBufferColorTexture, f54).xyz;
    vec3 f57 = (mix(mix(mix(f20, (f20 * f20) * CB0[15].y, f21).xyz, CB3[1].xyz, vec3(clamp(clamp(((f19.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(mix(f55, (f55 * f55) * CB0[15].w, f21) * 1.0, mix(f56, (f56 * f56) * CB0[15].y, f21), vec3((((float(abs(f54.x - 0.5) < 0.550000011920928955078125) * float(abs(f54.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f53) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, f50.xy / vec2(f51)).x * 500.0) - f51) < 10.0)) * float(f25 > 0.0))), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f12, f13))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) * (min(((f3.xyz * (f3.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f4.x), vec3(CB0[17].w)) + (CB0[10].xyz * f5))) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * f5) * pow(clamp(dot(f11, normalize((-CB0[11].xyz) + f13)), 0.0, 1.0), 900.0)));
    vec4 f58 = vec4(f57.x, f57.y, f57.z, vec4(0.0).w);
    f58.w = 1.0;
    vec3 f59 = mix(CB0[14].xyz, mix(f58.xyz, sqrt(clamp(f58.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), f21).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(f59.x, f59.y, f59.z, f58.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
