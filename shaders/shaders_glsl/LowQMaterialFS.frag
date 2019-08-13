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

struct MaterialParams
{
    float textureTiling;
    float specularScale;
    float glossScale;
    float reflectionScale;
    float normalShadowScale;
    float specularLod;
    float glossLod;
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

uniform vec4 CB0[32];
uniform vec4 CB2[5];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec4 _685 = mix(texture2D(DiffuseMapTexture, VARYING0.xy * CB2[2].y), texture2D(DiffuseMapTexture, VARYING0.xy), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[4].x) - (0.60000002384185791015625 * CB2[4].x), 0.0, 1.0)));
    vec3 _589 = (mix(vec3(1.0), VARYING2.xyz, vec3(_685.w)) * _685.xyz).xyz;
    vec3 _696 = vec3(CB0[15].x);
    float _798 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _742 = VARYING3.yzx - (VARYING3.yzx * _798);
    vec4 _752 = vec4(clamp(_798, 0.0, 1.0));
    vec4 _753 = mix(texture3D(LightMapTexture, _742), vec4(0.0), _752);
    vec4 _758 = mix(texture3D(LightGridSkylightTexture, _742), vec4(1.0), _752);
    vec4 _808 = texture2D(ShadowMapTexture, VARYING6.xy);
    float _821 = (1.0 - ((step(_808.x, VARYING6.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * _808.y)) * _758.y;
    vec3 _619 = ((min(((_753.xyz * (_753.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _758.x), vec3(CB0[17].w)) + (VARYING5.xyz * _821)) * mix(_589, _589 * _589, _696).xyz) + (CB0[10].xyz * (VARYING5.w * _821));
    vec4 _952 = vec4(_619.x, _619.y, _619.z, vec4(0.0).w);
    _952.w = VARYING2.w;
    vec3 _868 = mix(CB0[14].xyz, mix(_952.xyz, sqrt(clamp(_952.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _696).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_868.x, _868.y, _868.z, _952.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
