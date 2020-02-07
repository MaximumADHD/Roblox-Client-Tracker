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
    float debugFlags;
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
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube PrefilteredEnvTexture;

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
    vec4 f31 = ((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), f29) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), f29) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), f29) * VARYING0.z);
    vec2 f32 = f31.wy * 2.0;
    vec2 f33 = f32 - vec2(1.0);
    float f34 = f31.x;
    vec3 f35 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f36 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f30), vec3(VARYING6.y, f30, 0.0), f35) * f33.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f35) * f33.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f32, f33), 0.0, 1.0)))), f34);
    vec3 f37 = f36.xyz;
    vec3 f38 = mix(VARYING6.xyz, f37, vec3(0.25));
    vec3 f39 = normalize(VARYING7.xyz);
    vec3 f40 = f37 * f37;
    bvec3 f41 = lessThan(f37, vec3(0.0));
    vec3 f42 = vec3(f41.x ? f40.x : vec3(0.0).x, f41.y ? f40.y : vec3(0.0).y, f41.z ? f40.z : vec3(0.0).z);
    vec3 f43 = f40 - f42;
    float f44 = f43.x;
    float f45 = f43.y;
    float f46 = f43.z;
    float f47 = f42.x;
    float f48 = f42.y;
    float f49 = f42.z;
    vec2 f50 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f51 = f50 + (f36.xz * 0.0500000007450580596923828125);
    vec4 f52 = texture(GBufferColorTexture, f50);
    f52.w = texture(GBufferDepthTexture, f50).x * 500.0;
    float f53 = texture(GBufferDepthTexture, f51).x * 500.0;
    vec4 f54 = texture(GBufferColorTexture, f51);
    f54.w = f53;
    vec4 f55 = mix(f52, f54, vec4(clamp(f53 - VARYING8.w, 0.0, 1.0)));
    vec3 f56 = f55.xyz;
    vec3 f57 = reflect(-f39, f38);
    float f58 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f59 = vec4(f57, 0.0);
    vec4 f60 = f59 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f61 = (f60.xy * 0.5) + vec2(0.5 * f60.w);
    vec4 f62 = vec4(f61.x, f61.y, f60.z, f60.w);
    float f63 = VARYING8.w * (-0.20000000298023223876953125);
    float f64 = 1.0 + clamp(0.0, f63, f58);
    vec4 f65 = VARYING8 + (f62 * f64);
    float f66 = f65.w;
    float f67 = f64 + clamp((texture(GBufferDepthTexture, f65.xy / vec2(f66)).x * 500.0) - f66, f63, f58);
    vec4 f68 = VARYING8 + (f62 * f67);
    float f69 = f68.w;
    float f70 = f67 + clamp((texture(GBufferDepthTexture, f68.xy / vec2(f69)).x * 500.0) - f69, f63, f58);
    vec4 f71 = VARYING8 + (f62 * f70);
    float f72 = f71.w;
    float f73 = f70 + clamp((texture(GBufferDepthTexture, f71.xy / vec2(f72)).x * 500.0) - f72, f63, f58);
    vec4 f74 = VARYING8 + (f62 * f73);
    float f75 = f74.w;
    float f76 = f73 + clamp((texture(GBufferDepthTexture, f74.xy / vec2(f75)).x * 500.0) - f75, f63, f58);
    vec4 f77 = VARYING8 + (f62 * f76);
    float f78 = f77.w;
    float f79 = f76 + clamp((texture(GBufferDepthTexture, f77.xy / vec2(f78)).x * 500.0) - f78, f63, f58);
    vec4 f80 = VARYING8 + (f62 * f79);
    float f81 = f80.w;
    float f82 = f79 + clamp((texture(GBufferDepthTexture, f80.xy / vec2(f81)).x * 500.0) - f81, f63, f58);
    vec4 f83 = VARYING8 + (f62 * f82);
    float f84 = f83.w;
    vec4 f85 = VARYING8 + (f62 * (f82 + clamp((texture(GBufferDepthTexture, f83.xy / vec2(f84)).x * 500.0) - f84, f63, f58)));
    float f86 = f85.w;
    vec2 f87 = f85.xy / vec2(f86);
    vec3 f88 = texture(GBufferColorTexture, f87).xyz;
    vec3 f89 = normalize(f1 + f39);
    float f90 = f34 * f34;
    float f91 = max(0.001000000047497451305389404296875, dot(f37, f89));
    float f92 = dot(f1, f89);
    float f93 = 1.0 - f92;
    float f94 = f93 * f93;
    float f95 = (f94 * f94) * f93;
    float f96 = f90 * f90;
    float f97 = (((f91 * f96) - f91) * f91) + 1.0;
    vec3 f98 = mix(mix(((f56 * f56) * CB0[15].x).xyz, ((min(f7 + (CB0[27].xyz + (CB0[28].xyz * f8)), vec3(CB0[16].w)) + (((((((CB0[35].xyz * f44) + (CB0[37].xyz * f45)) + (CB0[39].xyz * f46)) + (CB0[36].xyz * f47)) + (CB0[38].xyz * f48)) + (CB0[40].xyz * f49)) + (((((((CB0[29].xyz * f44) + (CB0[31].xyz * f45)) + (CB0[33].xyz * f46)) + (CB0[30].xyz * f47)) + (CB0[32].xyz * f48)) + (CB0[34].xyz * f49)) * f8))) + (CB0[10].xyz * f28)) * CB3[1].xyz, vec3(clamp(clamp(((f55.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f59.xyz, 0.0).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f57.y * 1.58823525905609130859375, 0.0, 1.0)))) * f8, (f88 * f88) * CB0[15].x, vec3((((float(abs(f87.x - 0.5) < 0.550000011920928955078125) * float(abs(f87.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f86) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f87).x * 500.0) - f86) < 10.0)) * float(f60.w > 0.0))) + (f7 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f38, f39))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (((((vec3(f95) + (vec3(0.0199999995529651641845703125) * (1.0 - f95))) * (((f96 + (f96 * f96)) / (((f97 * f97) * ((f92 * 3.0) + 0.5)) * ((f91 * 0.75) + 0.25))) * clamp(dot(f37, f1), 0.0, 1.0))) * CB0[10].xyz) * f28) * clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0));
    vec4 f99 = vec4(f98.x, f98.y, f98.z, vec4(0.0).w);
    f99.w = 1.0;
    vec3 f100 = mix(CB0[14].xyz, sqrt(clamp(f99.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING6.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f100.x, f100.y, f100.z, f99.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$PrefilteredEnvTexture=s15
