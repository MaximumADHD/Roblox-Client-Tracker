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
in vec4 VARYING4;
in vec3 VARYING5;
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
    vec3 f7 = vec3(CB0[15].x);
    float f8 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    vec3 f9 = normalize(VARYING6);
    vec4 f10 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f11 = -CB0[11].xyz;
    float f12 = dot(f9, f11);
    float f13 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING4.yzx - (VARYING4.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture(LightGridSkylightTexture, f14), vec4(1.0), f15);
    float f18 = f17.y;
    vec3 f19 = VARYING5 - CB0[26].xyz;
    vec3 f20 = VARYING5 - CB0[27].xyz;
    vec3 f21 = VARYING5 - CB0[28].xyz;
    vec4 f22 = vec4(VARYING5, 1.0) * mat4(CB8[((dot(f19, f19) < CB0[26].w) ? 0 : ((dot(f20, f20) < CB0[27].w) ? 1 : ((dot(f21, f21) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f19, f19) < CB0[26].w) ? 0 : ((dot(f20, f20) < CB0[27].w) ? 1 : ((dot(f21, f21) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f19, f19) < CB0[26].w) ? 0 : ((dot(f20, f20) < CB0[27].w) ? 1 : ((dot(f21, f21) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f19, f19) < CB0[26].w) ? 0 : ((dot(f20, f20) < CB0[27].w) ? 1 : ((dot(f21, f21) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 f23 = textureLod(ShadowAtlasTexture, f22.xy, 0.0);
    vec2 f24 = vec2(0.0);
    f24.x = CB0[30].z;
    vec2 f25 = f24;
    f25.y = CB0[30].w;
    float f26 = (2.0 * f22.z) - 1.0;
    float f27 = exp(CB0[30].z * f26);
    float f28 = -exp((-CB0[30].w) * f26);
    vec2 f29 = (f25 * CB0[31].y) * vec2(f27, f28);
    vec2 f30 = f29 * f29;
    float f31 = f23.x;
    float f32 = max(f23.y - (f31 * f31), f30.x);
    float f33 = f27 - f31;
    float f34 = f23.z;
    float f35 = max(f23.w - (f34 * f34), f30.y);
    float f36 = f28 - f34;
    float f37 = (f12 > 0.0) ? mix(f18, mix(min((f27 <= f31) ? 1.0 : clamp(((f32 / (f32 + (f33 * f33))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f28 <= f34) ? 1.0 : clamp(((f35 / (f35 + (f36 * f36))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f18, clamp((length(VARYING5 - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 f38 = (((min(((f16.xyz * (f16.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f17.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(f12, 0.0, 1.0)) + (CB0[12].xyz * max(-f12, 0.0))) * f37)) + vec3((f10.z * 2.0) * f8)) * mix(f6, f6 * f6, f7).xyz) + (CB0[10].xyz * (((((step(0.0, f12) * f10.x) * f8) * CB3[0].z) * f37) * pow(clamp(dot(f9, normalize(f11 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(f10.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 f39 = vec4(f38.x, f38.y, f38.z, vec4(0.0).w);
    f39.w = 1.0;
    vec3 f40 = mix(CB0[14].xyz, mix(f39.xyz, sqrt(clamp(f39.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), f7).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f40.x, f40.y, f40.z, f39.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
