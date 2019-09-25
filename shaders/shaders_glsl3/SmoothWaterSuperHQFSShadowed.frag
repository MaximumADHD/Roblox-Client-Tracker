#version 150

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

struct LightShadowGPUTransform
{
    mat4 transform;
};

struct Params
{
    vec4 WaveParams;
    vec4 WaterColor;
    vec4 WaterParams;
};

uniform vec4 CB0[32];
uniform vec4 CB8[24];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube EnvMapTexture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec2 VARYING2;
in vec2 VARYING3;
in vec2 VARYING4;
in vec3 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = CB0[7].xyz - VARYING7.xyz;
    vec3 f1 = -CB0[11].xyz;
    float f2 = clamp(dot(step(CB0[20].xyz, abs(VARYING5 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING5.yzx - (VARYING5.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec3 f7 = (f5.xyz * (f5.w * 120.0)).xyz;
    float f8 = f6.x;
    float f9 = f6.y;
    vec3 f10 = f0 - CB0[26].xyz;
    vec3 f11 = f0 - CB0[27].xyz;
    vec3 f12 = f0 - CB0[28].xyz;
    vec4 f13 = vec4(f0, 1.0) * mat4(CB8[((dot(f10, f10) < CB0[26].w) ? 0 : ((dot(f11, f11) < CB0[27].w) ? 1 : ((dot(f12, f12) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f10, f10) < CB0[26].w) ? 0 : ((dot(f11, f11) < CB0[27].w) ? 1 : ((dot(f12, f12) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f10, f10) < CB0[26].w) ? 0 : ((dot(f11, f11) < CB0[27].w) ? 1 : ((dot(f12, f12) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f10, f10) < CB0[26].w) ? 0 : ((dot(f11, f11) < CB0[27].w) ? 1 : ((dot(f12, f12) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 f14 = textureLod(ShadowAtlasTexture, f13.xy, 0.0);
    vec2 f15 = vec2(0.0);
    f15.x = CB0[30].z;
    vec2 f16 = f15;
    f16.y = CB0[30].w;
    float f17 = (2.0 * f13.z) - 1.0;
    float f18 = exp(CB0[30].z * f17);
    float f19 = -exp((-CB0[30].w) * f17);
    vec2 f20 = (f16 * CB0[31].y) * vec2(f18, f19);
    vec2 f21 = f20 * f20;
    float f22 = f14.x;
    float f23 = max(f14.y - (f22 * f22), f21.x);
    float f24 = f18 - f22;
    float f25 = f14.z;
    float f26 = max(f14.w - (f25 * f25), f21.y);
    float f27 = f19 - f25;
    float f28 = (dot(VARYING6.xyz, f1) > 0.0) ? mix(f9, mix(min((f18 <= f22) ? 1.0 : clamp(((f23 / (f23 + (f24 * f24))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f19 <= f25) ? 1.0 : clamp(((f26 / (f26 + (f27 * f27))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f9, clamp((length(f0 - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec4 f29 = vec4(CB3[0].w);
    float f30 = -VARYING6.x;
    vec2 f31 = (((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), f29) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), f29) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), f29) * VARYING0.z)).wy * 2.0;
    vec2 f32 = f31 - vec2(1.0);
    vec3 f33 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f34 = normalize(((mix(vec3(VARYING6.z, 0.0, f30), vec3(VARYING6.y, f30, 0.0), f33) * f32.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f33) * f32.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f31, f32), 0.0, 1.0))));
    vec3 f35 = mix(VARYING6.xyz, f34, vec3(0.25));
    vec3 f36 = normalize(VARYING7.xyz);
    vec2 f37 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f38 = f37 + (f34.xz * 0.0500000007450580596923828125);
    vec4 f39 = texture(GBufferColorTexture, f37);
    f39.w = texture(GBufferDepthTexture, f37).x * 500.0;
    float f40 = texture(GBufferDepthTexture, f38).x * 500.0;
    vec4 f41 = texture(GBufferColorTexture, f38);
    f41.w = f40;
    vec4 f42 = mix(f39, f41, vec4(clamp(f40 - VARYING8.w, 0.0, 1.0)));
    vec3 f43 = f42.xyz;
    vec3 f44 = reflect(-f36, f35);
    float f45 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f46 = vec4(f44, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float f47 = f46.w;
    vec2 f48 = (f46.xy * 0.5) + vec2(0.5 * f47);
    vec4 f49 = vec4(f48.x, f48.y, f46.z, f46.w);
    float f50 = 1.0 + clamp(0.0, VARYING8.w * (-0.20000000298023223876953125), f45);
    vec4 f51 = VARYING8 + (f49 * f50);
    float f52 = f51.w;
    float f53 = f50 + clamp((texture(GBufferDepthTexture, f51.xy / vec2(f52)).x * 500.0) - f52, VARYING8.w * (-0.20000000298023223876953125), f45);
    vec4 f54 = VARYING8 + (f49 * f53);
    float f55 = f54.w;
    float f56 = f53 + clamp((texture(GBufferDepthTexture, f54.xy / vec2(f55)).x * 500.0) - f55, VARYING8.w * (-0.20000000298023223876953125), f45);
    vec4 f57 = VARYING8 + (f49 * f56);
    float f58 = f57.w;
    float f59 = f56 + clamp((texture(GBufferDepthTexture, f57.xy / vec2(f58)).x * 500.0) - f58, VARYING8.w * (-0.20000000298023223876953125), f45);
    vec4 f60 = VARYING8 + (f49 * f59);
    float f61 = f60.w;
    float f62 = f59 + clamp((texture(GBufferDepthTexture, f60.xy / vec2(f61)).x * 500.0) - f61, VARYING8.w * (-0.20000000298023223876953125), f45);
    vec4 f63 = VARYING8 + (f49 * f62);
    float f64 = f63.w;
    float f65 = f62 + clamp((texture(GBufferDepthTexture, f63.xy / vec2(f64)).x * 500.0) - f64, VARYING8.w * (-0.20000000298023223876953125), f45);
    vec4 f66 = VARYING8 + (f49 * f65);
    float f67 = f66.w;
    float f68 = f65 + clamp((texture(GBufferDepthTexture, f66.xy / vec2(f67)).x * 500.0) - f67, VARYING8.w * (-0.20000000298023223876953125), f45);
    vec4 f69 = VARYING8 + (f49 * f68);
    float f70 = f69.w;
    float f71 = f68 + clamp((texture(GBufferDepthTexture, f69.xy / vec2(f70)).x * 500.0) - f70, VARYING8.w * (-0.20000000298023223876953125), f45);
    vec4 f72 = VARYING8 + (f49 * f71);
    float f73 = f72.w;
    vec4 f74 = VARYING8 + (f49 * f71);
    float f75 = f74.w;
    vec2 f76 = f74.xy / vec2(f75);
    vec3 f77 = texture(EnvMapTexture, f44).xyz;
    vec3 f78 = texture(GBufferColorTexture, f76).xyz;
    vec3 f79 = mix(mix(((f43 * f43) * CB0[15].x).xyz, CB3[1].xyz * (min((f7 + CB0[8].xyz) + (CB0[9].xyz * f8), vec3(CB0[17].w)) + (CB0[10].xyz * f28)), vec3(clamp(clamp(((f42.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(((f77 * f77) * CB0[15].x) * f8, (f78 * f78) * CB0[15].x, vec3((((float(abs(f76.x - 0.5) < 0.550000011920928955078125) * float(abs(f76.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f75) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f72.xy / vec2(f73)).x * 500.0) - f73) < 10.0)) * float(f47 > 0.0))) + (f7 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f35, f36))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * f28) * pow(clamp(dot(f34, normalize(f1 + f36)), 0.0, 1.0), 900.0)));
    vec4 f80 = vec4(f79.x, f79.y, f79.z, vec4(0.0).w);
    f80.w = 1.0;
    vec3 f81 = mix(CB0[14].xyz, sqrt(clamp(f80.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING6.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f81.x, f81.y, f81.z, f80.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
