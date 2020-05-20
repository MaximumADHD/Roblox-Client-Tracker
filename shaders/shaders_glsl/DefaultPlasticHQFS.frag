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
uniform samplerCube EnvironmentMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = texture2D(NormalMapTexture, f0).wy * 2.0;
    vec2 f3 = f2 - vec2(1.0);
    float f4 = sqrt(clamp(1.0 + dot(vec2(1.0) - f2, f3), 0.0, 1.0));
    vec2 f5 = ((vec3(f3, f4).xy + (vec3((texture2D(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * f1).xy * CB2[3].w;
    vec3 f6 = normalize(((VARYING6.xyz * f5.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f5.y)) + (VARYING5.xyz * f4));
    vec3 f7 = vec4(VARYING2.xyz * (texture2D(DiffuseMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f8 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f9 = VARYING3.yzx - (VARYING3.yzx * f8);
    vec4 f10 = vec4(clamp(f8, 0.0, 1.0));
    vec4 f11 = mix(texture3D(LightMapTexture, f9), vec4(0.0), f10);
    vec4 f12 = mix(texture3D(LightGridSkylightTexture, f9), vec4(1.0), f10);
    vec4 f13 = texture2D(ShadowMapTexture, VARYING7.xy);
    float f14 = (1.0 - ((step(f13.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f13.y)) * f12.y;
    float f15 = length(VARYING4.xyz);
    vec3 f16 = VARYING4.xyz / vec3(f15);
    float f17 = max(CB2[0].y, 0.04500000178813934326171875);
    vec3 f18 = textureCube(EnvironmentMapTexture, reflect(-f16, f6)).xyz;
    vec3 f19 = -CB0[11].xyz;
    vec3 f20 = normalize(f19 + f16);
    float f21 = dot(f6, f19);
    float f22 = clamp(f21, 0.0, 1.0);
    float f23 = f17 * f17;
    float f24 = max(0.001000000047497451305389404296875, dot(f6, f20));
    float f25 = dot(f19, f20);
    float f26 = 1.0 - f25;
    float f27 = f26 * f26;
    float f28 = (f27 * f27) * f26;
    vec3 f29 = vec3(f28) + (vec3(0.039999999105930328369140625) * (1.0 - f28));
    float f30 = f23 * f23;
    float f31 = (((f24 * f30) - f24) * f24) + 1.0;
    vec3 f32 = (((((((vec3(1.0) - (f29 * (CB0[26].w * f1))) * CB0[10].xyz) * f22) + (CB0[12].xyz * clamp(-f21, 0.0, 1.0))) * f14) + min((f11.xyz * (f11.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f12.x)), vec3(CB0[16].w))) * mix((f7 * f7).xyz, (f18 * f18) * CB0[15].x, vec3(VARYING7.w))) + (((f29 * (((f30 + (f30 * f30)) / (((f31 * f31) * ((f25 * 3.0) + 0.5)) * ((f24 * 0.75) + 0.25))) * f22)) * CB0[10].xyz) * f14);
    vec4 f33 = vec4(f32.x, f32.y, f32.z, vec4(0.0).w);
    f33.w = VARYING2.w;
    vec3 f34 = sqrt(clamp(mix(CB0[14].xyz, f33.xyz, vec3(clamp(exp2((CB0[13].z * f15) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f35 = vec4(f34.x, f34.y, f34.z, f33.w);
    f35.w = VARYING2.w;
    gl_FragData[0] = f35;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$EnvironmentMapTexture=s2
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
