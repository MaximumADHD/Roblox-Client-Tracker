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
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
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

uniform vec4 CB0[47];
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
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING5 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING5.yzx - (VARYING5.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec3 f7 = (f5.xyz * (f5.w * 120.0)).xyz;
    float f8 = f6.x;
    float f9 = f6.y;
    vec3 f10 = f0 - CB0[41].xyz;
    vec3 f11 = f0 - CB0[42].xyz;
    vec3 f12 = f0 - CB0[43].xyz;
    vec4 f13 = vec4(f0, 1.0) * mat4(CB8[((dot(f10, f10) < CB0[41].w) ? 0 : ((dot(f11, f11) < CB0[42].w) ? 1 : ((dot(f12, f12) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f10, f10) < CB0[41].w) ? 0 : ((dot(f11, f11) < CB0[42].w) ? 1 : ((dot(f12, f12) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f10, f10) < CB0[41].w) ? 0 : ((dot(f11, f11) < CB0[42].w) ? 1 : ((dot(f12, f12) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f10, f10) < CB0[41].w) ? 0 : ((dot(f11, f11) < CB0[42].w) ? 1 : ((dot(f12, f12) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f14 = textureLod(ShadowAtlasTexture, f13.xy, 0.0);
    vec2 f15 = vec2(0.0);
    f15.x = CB0[45].z;
    vec2 f16 = f15;
    f16.y = CB0[45].w;
    float f17 = (2.0 * f13.z) - 1.0;
    float f18 = exp(CB0[45].z * f17);
    float f19 = -exp((-CB0[45].w) * f17);
    vec2 f20 = (f16 * CB0[46].y) * vec2(f18, f19);
    vec2 f21 = f20 * f20;
    float f22 = f14.x;
    float f23 = max(f14.y - (f22 * f22), f21.x);
    float f24 = f18 - f22;
    float f25 = f14.z;
    float f26 = max(f14.w - (f25 * f25), f21.y);
    float f27 = f19 - f25;
    float f28 = (dot(VARYING6.xyz, f1) > 0.0) ? mix(f9, mix(min((f18 <= f22) ? 1.0 : clamp(((f23 / (f23 + (f24 * f24))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f19 <= f25) ? 1.0 : clamp(((f26 / (f26 + (f27 * f27))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f9, clamp((length(f0 - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec4 f29 = vec4(CB3[0].w);
    float f30 = -VARYING6.x;
    vec2 f31 = (((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), f29) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), f29) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), f29) * VARYING0.z)).wy * 2.0;
    vec2 f32 = f31 - vec2(1.0);
    vec3 f33 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f34 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f30), vec3(VARYING6.y, f30, 0.0), f33) * f32.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f33) * f32.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f31, f32), 0.0, 1.0)))), 0.0);
    vec3 f35 = f34.xyz;
    vec3 f36 = mix(VARYING6.xyz, f35, vec3(0.25));
    vec3 f37 = normalize(VARYING7.xyz);
    vec2 f38 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f39 = f38 + (f34.xz * 0.0500000007450580596923828125);
    vec4 f40 = texture(GBufferColorTexture, f38);
    f40.w = texture(GBufferDepthTexture, f38).x * 500.0;
    float f41 = texture(GBufferDepthTexture, f39).x * 500.0;
    vec4 f42 = texture(GBufferColorTexture, f39);
    f42.w = f41;
    vec4 f43 = mix(f40, f42, vec4(clamp(f41 - VARYING8.w, 0.0, 1.0)));
    vec3 f44 = f43.xyz;
    vec3 f45 = reflect(-f37, f36);
    float f46 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f47 = vec4(f45, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float f48 = f47.w;
    vec2 f49 = (f47.xy * 0.5) + vec2(0.5 * f48);
    vec4 f50 = vec4(f49.x, f49.y, f47.z, f47.w);
    float f51 = 1.0 + clamp(0.0, VARYING8.w * (-0.20000000298023223876953125), f46);
    vec4 f52 = VARYING8 + (f50 * f51);
    float f53 = f52.w;
    float f54 = f51 + clamp((texture(GBufferDepthTexture, f52.xy / vec2(f53)).x * 500.0) - f53, VARYING8.w * (-0.20000000298023223876953125), f46);
    vec4 f55 = VARYING8 + (f50 * f54);
    float f56 = f55.w;
    float f57 = f54 + clamp((texture(GBufferDepthTexture, f55.xy / vec2(f56)).x * 500.0) - f56, VARYING8.w * (-0.20000000298023223876953125), f46);
    vec4 f58 = VARYING8 + (f50 * f57);
    float f59 = f58.w;
    float f60 = f57 + clamp((texture(GBufferDepthTexture, f58.xy / vec2(f59)).x * 500.0) - f59, VARYING8.w * (-0.20000000298023223876953125), f46);
    vec4 f61 = VARYING8 + (f50 * f60);
    float f62 = f61.w;
    float f63 = f60 + clamp((texture(GBufferDepthTexture, f61.xy / vec2(f62)).x * 500.0) - f62, VARYING8.w * (-0.20000000298023223876953125), f46);
    vec4 f64 = VARYING8 + (f50 * f63);
    float f65 = f64.w;
    float f66 = f63 + clamp((texture(GBufferDepthTexture, f64.xy / vec2(f65)).x * 500.0) - f65, VARYING8.w * (-0.20000000298023223876953125), f46);
    vec4 f67 = VARYING8 + (f50 * f66);
    float f68 = f67.w;
    float f69 = f66 + clamp((texture(GBufferDepthTexture, f67.xy / vec2(f68)).x * 500.0) - f68, VARYING8.w * (-0.20000000298023223876953125), f46);
    vec4 f70 = VARYING8 + (f50 * f69);
    float f71 = f70.w;
    float f72 = f69 + clamp((texture(GBufferDepthTexture, f70.xy / vec2(f71)).x * 500.0) - f71, VARYING8.w * (-0.20000000298023223876953125), f46);
    vec4 f73 = VARYING8 + (f50 * f72);
    float f74 = f73.w;
    vec4 f75 = VARYING8 + (f50 * f72);
    float f76 = f75.w;
    vec2 f77 = f75.xy / vec2(f76);
    vec3 f78 = texture(EnvMapTexture, f45).xyz;
    vec3 f79 = texture(GBufferColorTexture, f77).xyz;
    vec3 f80 = mix(mix(((f44 * f44) * CB0[15].x).xyz, (min(f7 + (CB0[8].xyz + (CB0[9].xyz * f8)), vec3(CB0[16].w)) + (CB0[10].xyz * f28)) * CB3[1].xyz, vec3(clamp(clamp(((f43.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(((f78 * f78) * CB0[15].x) * vec3(f8), (f79 * f79) * CB0[15].x, vec3((((float(abs(f77.x - 0.5) < 0.550000011920928955078125) * float(abs(f77.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f76) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f73.xy / vec2(f74)).x * 500.0) - f74) < 10.0)) * float(f48 > 0.0))) + (f7 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f36, f37))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0)) * CB3[2].z) * f28) * pow(clamp(dot(f35, normalize(f1 + f37)), 0.0, 1.0), 900.0)));
    vec4 f81 = vec4(f80.x, f80.y, f80.z, vec4(0.0).w);
    f81.w = 1.0;
    vec3 f82 = mix(CB0[14].xyz, sqrt(clamp(f81.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING6.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f82.x, f82.y, f82.z, f81.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
