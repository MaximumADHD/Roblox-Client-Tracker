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
    vec4 Exposure_DoFDistance;
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

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform vec4 CB2[1];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec3 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB2[0].y > 0.5);
    vec4 f3 = VARYING1 * vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    vec4 f4 = f3;
    f4.w = f3.w;
    float f5 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING3.yzx - (VARYING3.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture(LightGridSkylightTexture, f6), vec4(1.0), f7);
    float f10 = f9.y;
    vec3 f11 = VARYING4.xyz - CB0[41].xyz;
    vec3 f12 = VARYING4.xyz - CB0[42].xyz;
    vec3 f13 = VARYING4.xyz - CB0[43].xyz;
    vec4 f14 = vec4(VARYING4.xyz, 1.0) * mat4(CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f15 = textureLod(ShadowAtlasTexture, f14.xy, 0.0);
    vec2 f16 = vec2(0.0);
    f16.x = CB0[45].z;
    vec2 f17 = f16;
    f17.y = CB0[45].w;
    float f18 = (2.0 * f14.z) - 1.0;
    float f19 = exp(CB0[45].z * f18);
    float f20 = -exp((-CB0[45].w) * f18);
    vec2 f21 = (f17 * CB0[46].y) * vec2(f19, f20);
    vec2 f22 = f21 * f21;
    float f23 = f15.x;
    float f24 = max(f15.y - (f23 * f23), f22.x);
    float f25 = f19 - f23;
    float f26 = f15.z;
    float f27 = max(f15.w - (f26 * f26), f22.y);
    float f28 = f20 - f26;
    vec3 f29 = (f4.xyz * f4.xyz).xyz;
    float f30 = clamp(exp2((CB0[13].z * length(VARYING5)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f31 = textureLod(PrefilteredEnvTexture, vec4(-VARYING5, 0.0).xyz, max(CB0[13].y, f30) * 5.0).xyz;
    bvec3 f32 = bvec3(CB0[13].w != 0.0);
    vec3 f33 = sqrt(clamp(mix(vec3(f32.x ? CB0[14].xyz.x : f31.x, f32.y ? CB0[14].xyz.y : f31.y, f32.z ? CB0[14].xyz.z : f31.z), mix(f29, (min((f8.xyz * (f8.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f9.x)), vec3(CB0[16].w)) + (VARYING2 * ((VARYING4.w > 0.0) ? mix(f10, mix(min((f19 <= f23) ? 1.0 : clamp(((f24 / (f24 + (f25 * f25))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f20 <= f26) ? 1.0 : clamp(((f27 / (f27 + (f28 * f28))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f10, clamp((length(VARYING4.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0))) * f29, vec3(CB2[0].z)).xyz, vec3(f30)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f33.x, f33.y, f33.z, f4.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
