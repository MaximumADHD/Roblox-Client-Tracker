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
    vec3 f5 = (f3.xyz * (f3.w * 120.0)).xyz;
    float f6 = f4.x;
    float f7 = f4.y;
    vec4 f8 = vec4(CB3[0].w);
    float f9 = -VARYING6.x;
    vec2 f10 = (((mix(texture2D(NormalMap1Texture, VARYING2), texture2D(NormalMap2Texture, VARYING2), f8) * VARYING0.x) + (mix(texture2D(NormalMap1Texture, VARYING3), texture2D(NormalMap2Texture, VARYING3), f8) * VARYING0.y)) + (mix(texture2D(NormalMap1Texture, VARYING4), texture2D(NormalMap2Texture, VARYING4), f8) * VARYING0.z)).wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    vec3 f12 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f13 = normalize(((mix(vec3(VARYING6.z, 0.0, f9), vec3(VARYING6.y, f9, 0.0), f12) * f11.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f12) * f11.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0))));
    vec3 f14 = mix(VARYING6, f13, vec3(0.25));
    vec3 f15 = normalize(VARYING7.xyz);
    vec2 f16 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f17 = f16 + (f13.xz * 0.0500000007450580596923828125);
    vec4 f18 = texture2D(GBufferColorTexture, f16);
    f18.w = texture2D(GBufferDepthTexture, f16).x * 500.0;
    float f19 = texture2D(GBufferDepthTexture, f17).x * 500.0;
    vec4 f20 = texture2D(GBufferColorTexture, f17);
    f20.w = f19;
    vec4 f21 = mix(f18, f20, vec4(clamp(f19 - VARYING8.w, 0.0, 1.0)));
    vec3 f22 = f21.xyz;
    vec3 f23 = vec3(CB0[15].x);
    vec3 f24 = reflect(-f15, f14);
    float f25 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f26 = vec4(f24, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float f27 = f26.w;
    vec2 f28 = (f26.xy * 0.5) + vec2(0.5 * f27);
    vec4 f29 = vec4(f28.x, f28.y, f26.z, f26.w);
    float f30 = 1.0 + clamp(0.0, VARYING8.w * (-0.20000000298023223876953125), f25);
    vec4 f31 = VARYING8 + (f29 * f30);
    float f32 = f31.w;
    float f33 = f30 + clamp((texture2D(GBufferDepthTexture, f31.xy / vec2(f32)).x * 500.0) - f32, VARYING8.w * (-0.20000000298023223876953125), f25);
    vec4 f34 = VARYING8 + (f29 * f33);
    float f35 = f34.w;
    float f36 = f33 + clamp((texture2D(GBufferDepthTexture, f34.xy / vec2(f35)).x * 500.0) - f35, VARYING8.w * (-0.20000000298023223876953125), f25);
    vec4 f37 = VARYING8 + (f29 * f36);
    float f38 = f37.w;
    float f39 = f36 + clamp((texture2D(GBufferDepthTexture, f37.xy / vec2(f38)).x * 500.0) - f38, VARYING8.w * (-0.20000000298023223876953125), f25);
    vec4 f40 = VARYING8 + (f29 * f39);
    float f41 = f40.w;
    float f42 = f39 + clamp((texture2D(GBufferDepthTexture, f40.xy / vec2(f41)).x * 500.0) - f41, VARYING8.w * (-0.20000000298023223876953125), f25);
    vec4 f43 = VARYING8 + (f29 * f42);
    float f44 = f43.w;
    float f45 = f42 + clamp((texture2D(GBufferDepthTexture, f43.xy / vec2(f44)).x * 500.0) - f44, VARYING8.w * (-0.20000000298023223876953125), f25);
    vec4 f46 = VARYING8 + (f29 * f45);
    float f47 = f46.w;
    float f48 = f45 + clamp((texture2D(GBufferDepthTexture, f46.xy / vec2(f47)).x * 500.0) - f47, VARYING8.w * (-0.20000000298023223876953125), f25);
    vec4 f49 = VARYING8 + (f29 * f48);
    float f50 = f49.w;
    float f51 = f48 + clamp((texture2D(GBufferDepthTexture, f49.xy / vec2(f50)).x * 500.0) - f50, VARYING8.w * (-0.20000000298023223876953125), f25);
    vec4 f52 = VARYING8 + (f29 * f51);
    float f53 = f52.w;
    vec4 f54 = VARYING8 + (f29 * f51);
    float f55 = f54.w;
    vec2 f56 = f54.xy / vec2(f55);
    vec3 f57 = textureCube(EnvMapTexture, f24).xyz;
    vec3 f58 = texture2D(GBufferColorTexture, f56).xyz;
    vec3 f59 = mix(mix(mix(f22, (f22 * f22) * CB0[15].y, f23).xyz, CB3[1].xyz * (min((f5 + CB0[8].xyz) + (CB0[9].xyz * f6), vec3(CB0[17].w)) + (CB0[10].xyz * f7)), vec3(clamp(clamp(((f21.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(mix(f57, (f57 * f57) * CB0[15].w, f23) * f6, mix(f58, (f58 * f58) * CB0[15].y, f23), vec3((((float(abs(f56.x - 0.5) < 0.550000011920928955078125) * float(abs(f56.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f55) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, f52.xy / vec2(f53)).x * 500.0) - f53) < 10.0)) * float(f27 > 0.0))) + (f5 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f14, f15))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * f7) * pow(clamp(dot(f13, normalize((-CB0[11].xyz) + f15)), 0.0, 1.0), 900.0)));
    vec4 f60 = vec4(f59.x, f59.y, f59.z, vec4(0.0).w);
    f60.w = 1.0;
    vec3 f61 = mix(CB0[14].xyz, mix(f60.xyz, sqrt(clamp(f60.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), f23).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(f61.x, f61.y, f61.z, f60.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
