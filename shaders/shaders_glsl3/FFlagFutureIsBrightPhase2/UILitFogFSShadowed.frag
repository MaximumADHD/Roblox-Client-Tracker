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
uniform vec4 CB2[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec3 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB2[0].y > 0.5);
    vec4 f3 = VARYING1 * vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    vec3 f4 = f3.xyz;
    vec3 f5 = vec3(CB0[15].x);
    float f6 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f7 = VARYING3.yzx - (VARYING3.yzx * f6);
    vec4 f8 = vec4(clamp(f6, 0.0, 1.0));
    vec4 f9 = mix(texture(LightMapTexture, f7), vec4(0.0), f8);
    vec4 f10 = mix(texture(LightGridSkylightTexture, f7), vec4(1.0), f8);
    float f11 = f10.y;
    vec3 f12 = VARYING4 - CB0[26].xyz;
    vec3 f13 = VARYING4 - CB0[27].xyz;
    vec3 f14 = VARYING4 - CB0[28].xyz;
    vec4 f15 = vec4(VARYING4, 1.0) * mat4(CB8[((dot(f12, f12) < CB0[26].w) ? 0 : ((dot(f13, f13) < CB0[27].w) ? 1 : ((dot(f14, f14) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f12, f12) < CB0[26].w) ? 0 : ((dot(f13, f13) < CB0[27].w) ? 1 : ((dot(f14, f14) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f12, f12) < CB0[26].w) ? 0 : ((dot(f13, f13) < CB0[27].w) ? 1 : ((dot(f14, f14) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f12, f12) < CB0[26].w) ? 0 : ((dot(f13, f13) < CB0[27].w) ? 1 : ((dot(f14, f14) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 f16 = textureLod(ShadowAtlasTexture, f15.xy, 0.0);
    vec2 f17 = vec2(0.0);
    f17.x = CB0[30].z;
    vec2 f18 = f17;
    f18.y = CB0[30].w;
    float f19 = (2.0 * f15.z) - 1.0;
    float f20 = exp(CB0[30].z * f19);
    float f21 = -exp((-CB0[30].w) * f19);
    vec2 f22 = (f18 * CB0[31].y) * vec2(f20, f21);
    vec2 f23 = f22 * f22;
    float f24 = f16.x;
    float f25 = max(f16.y - (f24 * f24), f23.x);
    float f26 = f20 - f24;
    float f27 = f16.z;
    float f28 = max(f16.w - (f27 * f27), f23.y);
    float f29 = f21 - f27;
    vec3 f30 = mix(f4, f4 * f4, f5).xyz;
    vec3 f31 = mix(f30, (min(((f9.xyz * (f9.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f10.x), vec3(CB0[17].w)) + (VARYING2 * ((VARYING3.w > 0.0) ? mix(f11, mix(min((f20 <= f24) ? 1.0 : clamp(((f25 / (f25 + (f26 * f26))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f21 <= f27) ? 1.0 : clamp(((f28 / (f28 + (f29 * f29))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f11, clamp((length(VARYING4 - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0))) * f30, vec3(CB2[0].z)).xyz;
    vec3 f32 = mix(CB0[14].xyz, mix(f31, sqrt(clamp(f31 * CB0[15].z, vec3(0.0), vec3(1.0))), f5).xyz, vec3(clamp((CB0[13].x * length(VARYING5)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f32.x, f32.y, f32.z, f3.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s0
