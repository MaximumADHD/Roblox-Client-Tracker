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

struct MaterialParams
{
    float textureTiling;
    float plasticRoughness;
    float normalShadowScale;
    float normalDetailTiling;
    float normalDetailScale;
    float farTilingDiffuse;
    float farTilingNormal;
    float farTilingSpecular;
    float farDiffuseCutoff;
    float farNormalCutoff;
    float farSpecularCutoff;
    float optBlendColorK;
    float farDiffuseCutoffScale;
    float farNormalCutoffScale;
    float farSpecularCutoffScale;
    float isNonSmoothPlastic;
};

uniform vec4 CB0[47];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
uniform samplerCube EnvironmentMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0.xy * CB2[0].x;
    vec4 f3 = texture2D(DiffuseMapTexture, f2);
    vec2 f4 = texture2D(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = (vec3(f5, f6).xy + (vec3((texture2D(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f8 = f3.w;
    vec3 f9 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f8 + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f7.x * CB2[0].z))) * (texture2D(StudsMapTexture, f0).x * 2.0);
    vec4 f10 = mix(texture2D(SpecularMapTexture, f2 * CB2[1].w), texture2D(SpecularMapTexture, f2), vec4(clamp((f1 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f11 = f10.y;
    float f12 = VARYING2.w * 2.0;
    float f13 = clamp((f12 - 1.0) + f8, 0.0, 1.0);
    vec3 f14 = normalize(((VARYING6.xyz * f7.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * (f6 * 10.0)));
    float f15 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture3D(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture3D(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec3 f20 = (f18.xyz * (f18.w * 120.0)).xyz;
    float f21 = f19.x;
    vec4 f22 = texture2D(ShadowMapTexture, VARYING7.xy);
    float f23 = (1.0 - ((step(f22.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f22.y)) * f19.y;
    vec3 f24 = f9 * f9;
    vec3 f25 = normalize(VARYING4.xyz);
    vec3 f26 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f14)).xyz;
    vec3 f27 = mix(f20, (f26 * f26) * CB0[15].x, vec3(f21)) * mix(vec3(1.0), f24, vec3(0.5));
    vec3 f28 = -CB0[11].xyz;
    vec3 f29 = normalize(f28 + f25);
    float f30 = dot(f14, f28);
    float f31 = clamp(f30, 0.0, 1.0);
    float f32 = f11 * f11;
    float f33 = max(0.001000000047497451305389404296875, dot(f14, f29));
    float f34 = dot(f28, f29);
    float f35 = 1.0 - f34;
    float f36 = f35 * f35;
    float f37 = (f36 * f36) * f35;
    vec3 f38 = vec3(f37) + (vec3(0.039999999105930328369140625) * (1.0 - f37));
    float f39 = f32 * f32;
    float f40 = (((f33 * f39) - f33) * f33) + 1.0;
    float f41 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f14, f25));
    vec4 f42 = mix(vec4(mix(((((((vec3(1.0) - (f38 * (CB0[26].w * f1))) * CB0[10].xyz) * f31) + (CB0[12].xyz * clamp(-f30, 0.0, 1.0))) * f23) + min(f20 + (CB0[8].xyz + (CB0[9].xyz * f21)), vec3(CB0[16].w))) * (f24 * f13), f27, vec3(VARYING7.w)) * f13, f13), vec4(f27, 1.0), vec4(((f41 * f41) * 0.800000011920928955078125) * clamp(f12, 0.0, 1.0))) + vec4(((f38 * (((f39 + (f39 * f39)) / (((f40 * f40) * ((f34 * 3.0) + 0.5)) * ((f33 * 0.75) + 0.25))) * f31)) * CB0[10].xyz) * f23, 0.0);
    float f43 = clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0);
    vec3 f44 = mix(CB0[14].xyz, sqrt(clamp(f42.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(f43));
    vec4 f45 = vec4(f44.x, f44.y, f44.z, f42.w);
    f45.w = mix(1.0, f42.w, f43);
    gl_FragData[0] = f45;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$EnvironmentMapTexture=s2
