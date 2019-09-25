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
    vec3 Exposure;
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
varying vec3 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying vec4 VARYING8;

void main()
{
    float f0 = clamp(dot(step(CB0[20].xyz, abs(VARYING5 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
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
    vec3 f13 = normalize(((mix(vec3(VARYING6.z, 0.0, f9), vec3(VARYING6.y, f9, 0.0), f12) * f11.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f12) * f11.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0))));
    vec3 f14 = mix(VARYING6.xyz, f13, vec3(0.25));
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
    vec3 f23 = reflect(-f15, f14);
    float f24 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f25 = vec4(f23, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float f26 = f25.w;
    vec2 f27 = (f25.xy * 0.5) + vec2(0.5 * f26);
    vec4 f28 = vec4(f27.x, f27.y, f25.z, f25.w);
    float f29 = 1.0 + clamp(0.0, VARYING8.w * (-0.20000000298023223876953125), f24);
    vec4 f30 = VARYING8 + (f28 * f29);
    float f31 = f30.w;
    float f32 = f29 + clamp((texture2D(GBufferDepthTexture, f30.xy / vec2(f31)).x * 500.0) - f31, VARYING8.w * (-0.20000000298023223876953125), f24);
    vec4 f33 = VARYING8 + (f28 * f32);
    float f34 = f33.w;
    float f35 = f32 + clamp((texture2D(GBufferDepthTexture, f33.xy / vec2(f34)).x * 500.0) - f34, VARYING8.w * (-0.20000000298023223876953125), f24);
    vec4 f36 = VARYING8 + (f28 * f35);
    float f37 = f36.w;
    float f38 = f35 + clamp((texture2D(GBufferDepthTexture, f36.xy / vec2(f37)).x * 500.0) - f37, VARYING8.w * (-0.20000000298023223876953125), f24);
    vec4 f39 = VARYING8 + (f28 * f38);
    float f40 = f39.w;
    float f41 = f38 + clamp((texture2D(GBufferDepthTexture, f39.xy / vec2(f40)).x * 500.0) - f40, VARYING8.w * (-0.20000000298023223876953125), f24);
    vec4 f42 = VARYING8 + (f28 * f41);
    float f43 = f42.w;
    float f44 = f41 + clamp((texture2D(GBufferDepthTexture, f42.xy / vec2(f43)).x * 500.0) - f43, VARYING8.w * (-0.20000000298023223876953125), f24);
    vec4 f45 = VARYING8 + (f28 * f44);
    float f46 = f45.w;
    float f47 = f44 + clamp((texture2D(GBufferDepthTexture, f45.xy / vec2(f46)).x * 500.0) - f46, VARYING8.w * (-0.20000000298023223876953125), f24);
    vec4 f48 = VARYING8 + (f28 * f47);
    float f49 = f48.w;
    float f50 = f47 + clamp((texture2D(GBufferDepthTexture, f48.xy / vec2(f49)).x * 500.0) - f49, VARYING8.w * (-0.20000000298023223876953125), f24);
    vec4 f51 = VARYING8 + (f28 * f50);
    float f52 = f51.w;
    vec4 f53 = VARYING8 + (f28 * f50);
    float f54 = f53.w;
    vec2 f55 = f53.xy / vec2(f54);
    vec3 f56 = textureCube(EnvMapTexture, f23).xyz;
    vec3 f57 = texture2D(GBufferColorTexture, f55).xyz;
    vec3 f58 = mix(mix(((f22 * f22) * CB0[15].x).xyz, CB3[1].xyz * (min((f5 + CB0[8].xyz) + (CB0[9].xyz * f6), vec3(CB0[17].w)) + (CB0[10].xyz * f7)), vec3(clamp(clamp(((f21.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(((f56 * f56) * CB0[15].x) * f6, (f57 * f57) * CB0[15].x, vec3((((float(abs(f55.x - 0.5) < 0.550000011920928955078125) * float(abs(f55.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f54) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, f51.xy / vec2(f52)).x * 500.0) - f52) < 10.0)) * float(f26 > 0.0))) + (f5 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f14, f15))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * f7) * pow(clamp(dot(f13, normalize((-CB0[11].xyz) + f15)), 0.0, 1.0), 900.0)));
    vec4 f59 = vec4(f58.x, f58.y, f58.z, vec4(0.0).w);
    f59.w = 1.0;
    vec3 f60 = mix(CB0[14].xyz, sqrt(clamp(f59.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING6.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(f60.x, f60.y, f60.z, f59.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
