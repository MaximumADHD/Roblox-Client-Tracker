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

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray NormalMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
in vec3 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f1).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f3 = f2.yz - vec2(0.5);
    float f4 = f2.x;
    float f5 = f4 - f3.y;
    vec3 f6 = vec4(vec3(f5, f4, f5) + (vec3(f3.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f7 = clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0);
    float f8 = -VARYING6.x;
    vec2 f9 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f1) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    vec3 f11 = vec3(dot(VARYING8, VARYING0.xyz));
    vec3 f12 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f8), vec3(VARYING6.y, f8, 0.0), f11) * f10.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f11) * f10.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0)))), 0.0).xyz;
    vec4 f13 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f14 = -CB0[11].xyz;
    float f15 = dot(f12, f14);
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING4.yzx - (VARYING4.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture(LightGridSkylightTexture, f17), vec4(1.0), f18);
    float f21 = f20.y;
    vec3 f22 = VARYING5.xyz - CB0[41].xyz;
    vec3 f23 = VARYING5.xyz - CB0[42].xyz;
    vec3 f24 = VARYING5.xyz - CB0[43].xyz;
    vec4 f25 = vec4(VARYING5.xyz, 1.0) * mat4(CB8[((dot(f22, f22) < CB0[41].w) ? 0 : ((dot(f23, f23) < CB0[42].w) ? 1 : ((dot(f24, f24) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f22, f22) < CB0[41].w) ? 0 : ((dot(f23, f23) < CB0[42].w) ? 1 : ((dot(f24, f24) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f22, f22) < CB0[41].w) ? 0 : ((dot(f23, f23) < CB0[42].w) ? 1 : ((dot(f24, f24) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f22, f22) < CB0[41].w) ? 0 : ((dot(f23, f23) < CB0[42].w) ? 1 : ((dot(f24, f24) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f26 = textureLod(ShadowAtlasTexture, f25.xy, 0.0);
    vec2 f27 = vec2(0.0);
    f27.x = CB0[45].z;
    vec2 f28 = f27;
    f28.y = CB0[45].w;
    float f29 = (2.0 * f25.z) - 1.0;
    float f30 = exp(CB0[45].z * f29);
    float f31 = -exp((-CB0[45].w) * f29);
    vec2 f32 = (f28 * CB0[46].y) * vec2(f30, f31);
    vec2 f33 = f32 * f32;
    float f34 = f26.x;
    float f35 = max(f26.y - (f34 * f34), f33.x);
    float f36 = f30 - f34;
    float f37 = f26.z;
    float f38 = max(f26.w - (f37 * f37), f33.y);
    float f39 = f31 - f37;
    float f40 = (f15 > 0.0) ? mix(f21, mix(min((f30 <= f34) ? 1.0 : clamp(((f35 / (f35 + (f36 * f36))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f31 <= f37) ? 1.0 : clamp(((f38 / (f38 + (f39 * f39))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f21, clamp((length(VARYING5.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    float f41 = f13.y;
    vec3 f42 = normalize(f14 + normalize(VARYING7.xyz));
    float f43 = clamp(f15, 0.0, 1.0);
    float f44 = f41 * f41;
    float f45 = max(0.001000000047497451305389404296875, dot(f12, f42));
    float f46 = dot(f14, f42);
    float f47 = 1.0 - f46;
    float f48 = f47 * f47;
    float f49 = (f48 * f48) * f47;
    vec3 f50 = vec3(f49) + (vec3(0.039999999105930328369140625) * (1.0 - f49));
    float f51 = f44 * f44;
    float f52 = (((f45 * f51) - f45) * f45) + 1.0;
    vec3 f53 = ((((((((vec3(1.0) - (f50 * (CB0[26].w * f7))) * 1.0) * CB0[10].xyz) * f43) * f40) + min((f19.xyz * (f19.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f20.x)), vec3(CB0[16].w))) + vec3((f13.z * 2.0) * f7)) * (f6 * f6).xyz) + (((((f50 * ((f51 + (f51 * f51)) / (((f52 * f52) * ((f46 * 3.0) + 0.5)) * ((f45 * 0.75) + 0.25)))) * CB0[10].xyz) * f43) * f40) * f7);
    vec4 f54 = vec4(f53.x, f53.y, f53.z, vec4(0.0).w);
    f54.w = 1.0;
    vec3 f55 = mix(CB0[14].xyz, sqrt(clamp(f54.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f55.x, f55.y, f55.z, f54.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
