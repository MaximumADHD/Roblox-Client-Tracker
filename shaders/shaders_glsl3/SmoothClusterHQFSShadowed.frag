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

uniform vec4 CB0[32];
uniform vec4 CB8[24];
uniform vec4 CB3[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
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
    float f7 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    vec3 f8 = normalize(VARYING6);
    vec4 f9 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f10 = -CB0[11].xyz;
    float f11 = dot(f8, f10);
    float f12 = clamp(dot(step(CB0[20].xyz, abs(VARYING4 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f13 = VARYING4.yzx - (VARYING4.yzx * f12);
    vec4 f14 = vec4(clamp(f12, 0.0, 1.0));
    vec4 f15 = mix(texture(LightMapTexture, f13), vec4(0.0), f14);
    vec4 f16 = mix(texture(LightGridSkylightTexture, f13), vec4(1.0), f14);
    float f17 = f16.y;
    vec3 f18 = VARYING5.xyz - CB0[26].xyz;
    vec3 f19 = VARYING5.xyz - CB0[27].xyz;
    vec3 f20 = VARYING5.xyz - CB0[28].xyz;
    vec4 f21 = vec4(VARYING5.xyz, 1.0) * mat4(CB8[((dot(f18, f18) < CB0[26].w) ? 0 : ((dot(f19, f19) < CB0[27].w) ? 1 : ((dot(f20, f20) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f18, f18) < CB0[26].w) ? 0 : ((dot(f19, f19) < CB0[27].w) ? 1 : ((dot(f20, f20) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f18, f18) < CB0[26].w) ? 0 : ((dot(f19, f19) < CB0[27].w) ? 1 : ((dot(f20, f20) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f18, f18) < CB0[26].w) ? 0 : ((dot(f19, f19) < CB0[27].w) ? 1 : ((dot(f20, f20) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 f22 = textureLod(ShadowAtlasTexture, f21.xy, 0.0);
    vec2 f23 = vec2(0.0);
    f23.x = CB0[30].z;
    vec2 f24 = f23;
    f24.y = CB0[30].w;
    float f25 = (2.0 * f21.z) - 1.0;
    float f26 = exp(CB0[30].z * f25);
    float f27 = -exp((-CB0[30].w) * f25);
    vec2 f28 = (f24 * CB0[31].y) * vec2(f26, f27);
    vec2 f29 = f28 * f28;
    float f30 = f22.x;
    float f31 = max(f22.y - (f30 * f30), f29.x);
    float f32 = f26 - f30;
    float f33 = f22.z;
    float f34 = max(f22.w - (f33 * f33), f29.y);
    float f35 = f27 - f33;
    float f36 = (f11 > 0.0) ? mix(f17, mix(min((f26 <= f30) ? 1.0 : clamp(((f31 / (f31 + (f32 * f32))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f27 <= f33) ? 1.0 : clamp(((f34 / (f34 + (f35 * f35))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f17, clamp((length(VARYING5.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 f37 = (((min(((f15.xyz * (f15.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f16.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(f11, 0.0, 1.0)) + (CB0[12].xyz * max(-f11, 0.0))) * f36)) + vec3((f9.z * 2.0) * f7)) * (f6 * f6).xyz) + (CB0[10].xyz * (((((step(0.0, f11) * f9.x) * f7) * CB3[0].z) * f36) * pow(clamp(dot(f8, normalize(f10 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(f9.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 f38 = vec4(f37.x, f37.y, f37.z, vec4(0.0).w);
    f38.w = 1.0;
    vec3 f39 = mix(CB0[14].xyz, sqrt(clamp(f38.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f39.x, f39.y, f39.z, f38.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
