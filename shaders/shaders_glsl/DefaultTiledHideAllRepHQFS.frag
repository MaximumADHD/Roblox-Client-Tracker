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
    float f1 = VARYING4.w * CB0[23].y;
    float f2 = clamp(1.0 - f1, 0.0, 1.0);
    vec2 f3 = VARYING0.xy * CB2[0].x;
    vec4 f4 = mix(texture2D(DiffuseMapTexture, f3 * CB2[1].y), texture2D(DiffuseMapTexture, f3), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec2 f5 = mix(texture2D(NormalMapTexture, f3 * CB2[1].z), texture2D(NormalMapTexture, f3), vec4(clamp((f2 * CB2[3].y) - (CB2[2].y * CB2[3].y), 0.0, 1.0))).wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec2 f8 = (vec3(f6, f7).xy + (vec3((texture2D(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f2;
    float f9 = f8.x;
    vec4 f10 = mix(texture2D(SpecularMapTexture, f3 * CB2[1].w), texture2D(SpecularMapTexture, f3), vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    vec3 f11 = normalize(((VARYING6.xyz * f9) + (cross(VARYING5.xyz, VARYING6.xyz) * f8.y)) + (VARYING5.xyz * f7));
    vec3 f12 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f4.w + CB2[2].w, 0.0, 1.0))) * f4.xyz) * (1.0 + (f9 * CB2[0].z))) * (texture2D(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f13 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING3.yzx - (VARYING3.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture3D(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture3D(LightGridSkylightTexture, f14), vec4(1.0), f15);
    vec4 f18 = texture2D(ShadowMapTexture, VARYING7.xy);
    float f19 = (1.0 - ((step(f18.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f18.y)) * f17.y;
    vec3 f20 = (f12 * f12).xyz;
    float f21 = CB0[26].w * f2;
    float f22 = max(f10.y, 0.04500000178813934326171875);
    float f23 = f10.x * f21;
    vec3 f24 = -CB0[11].xyz;
    vec3 f25 = normalize(f24 + normalize(VARYING4.xyz));
    float f26 = dot(f11, f24);
    float f27 = clamp(f26, 0.0, 1.0);
    float f28 = f22 * f22;
    float f29 = max(0.001000000047497451305389404296875, dot(f11, f25));
    float f30 = dot(f24, f25);
    float f31 = 1.0 - f30;
    float f32 = f31 * f31;
    float f33 = (f32 * f32) * f31;
    vec3 f34 = vec3(f33) + (mix(vec3(0.039999999105930328369140625), f20, vec3(f23)) * (1.0 - f33));
    float f35 = f28 * f28;
    float f36 = (((f29 * f35) - f29) * f29) + 1.0;
    float f37 = 1.0 - f23;
    vec3 f38 = (((((((vec3(f37) - (f34 * (f21 * f37))) * CB0[10].xyz) * f27) + (CB0[12].xyz * (f37 * clamp(-f26, 0.0, 1.0)))) * f19) + min((f16.xyz * (f16.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f17.x)), vec3(CB0[16].w))) * f20) + (((f34 * (((f35 + (f35 * f35)) / (((f36 * f36) * ((f30 * 3.0) + 0.5)) * ((f29 * 0.75) + 0.25))) * f27)) * CB0[10].xyz) * f19);
    vec4 f39 = vec4(f38.x, f38.y, f38.z, vec4(0.0).w);
    f39.w = VARYING2.w;
    vec2 f40 = min(VARYING0.wz, VARYING1.wz);
    float f41 = min(f40.x, f40.y) / f1;
    vec3 f42 = mix(CB0[14].xyz, (sqrt(clamp((f39.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f41)) + f41, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(f42.x, f42.y, f42.z, f39.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
