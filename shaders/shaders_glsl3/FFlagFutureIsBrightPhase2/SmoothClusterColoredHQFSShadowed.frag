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
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f1).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f3 = f2.yz - vec2(0.5);
    float f4 = VARYING9.x * f2.x;
    float f5 = f3.x;
    float f6 = f3.y;
    float f7 = (VARYING9.y * f5) - (VARYING9.z * f6);
    float f8 = (VARYING9.z * f5) + (VARYING9.y * f6);
    float f9 = f4 - f8;
    vec3 f10 = vec4(vec3(f9, f4, f9) + (vec3(f7, f8, f7) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f11 = vec3(CB0[15].x);
    float f12 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    vec3 f13 = normalize(VARYING6);
    vec4 f14 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f15 = -CB0[11].xyz;
    float f16 = dot(f13, f15);
    float f17 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING4.yzx - (VARYING4.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture(LightGridSkylightTexture, f18), vec4(1.0), f19);
    float f22 = f21.y;
    vec3 f23 = VARYING5 - CB0[26].xyz;
    vec3 f24 = VARYING5 - CB0[27].xyz;
    vec3 f25 = VARYING5 - CB0[28].xyz;
    vec4 f26 = vec4(VARYING5, 1.0) * mat4(CB8[((dot(f23, f23) < CB0[26].w) ? 0 : ((dot(f24, f24) < CB0[27].w) ? 1 : ((dot(f25, f25) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f23, f23) < CB0[26].w) ? 0 : ((dot(f24, f24) < CB0[27].w) ? 1 : ((dot(f25, f25) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f23, f23) < CB0[26].w) ? 0 : ((dot(f24, f24) < CB0[27].w) ? 1 : ((dot(f25, f25) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f23, f23) < CB0[26].w) ? 0 : ((dot(f24, f24) < CB0[27].w) ? 1 : ((dot(f25, f25) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 f27 = textureLod(ShadowAtlasTexture, f26.xy, 0.0);
    vec2 f28 = vec2(0.0);
    f28.x = CB0[30].z;
    vec2 f29 = f28;
    f29.y = CB0[30].w;
    float f30 = (2.0 * f26.z) - 1.0;
    float f31 = exp(CB0[30].z * f30);
    float f32 = -exp((-CB0[30].w) * f30);
    vec2 f33 = (f29 * CB0[31].y) * vec2(f31, f32);
    vec2 f34 = f33 * f33;
    float f35 = f27.x;
    float f36 = max(f27.y - (f35 * f35), f34.x);
    float f37 = f31 - f35;
    float f38 = f27.z;
    float f39 = max(f27.w - (f38 * f38), f34.y);
    float f40 = f32 - f38;
    float f41 = (f16 > 0.0) ? mix(f22, mix(min((f31 <= f35) ? 1.0 : clamp(((f36 / (f36 + (f37 * f37))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f32 <= f38) ? 1.0 : clamp(((f39 / (f39 + (f40 * f40))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f22, clamp((length(VARYING5 - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 f42 = (((min(((f20.xyz * (f20.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f21.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(f16, 0.0, 1.0)) + (CB0[12].xyz * max(-f16, 0.0))) * f41)) + vec3((f14.z * 2.0) * f12)) * mix(f10, f10 * f10, f11).xyz) + (CB0[10].xyz * (((((step(0.0, f16) * f14.x) * f12) * CB3[0].z) * f41) * pow(clamp(dot(f13, normalize(f15 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(f14.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 f43 = vec4(f42.x, f42.y, f42.z, vec4(0.0).w);
    f43.w = 1.0;
    vec3 f44 = mix(CB0[14].xyz, mix(f43.xyz, sqrt(clamp(f43.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), f11).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f44.x, f44.y, f44.z, f43.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
