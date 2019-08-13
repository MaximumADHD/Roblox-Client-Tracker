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
uniform sampler2D WangTileMapTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec2 _731 = (VARYING0.xy * CB2[0].x) * 4.0;
    vec2 _741 = _731 * 0.25;
    vec4 _750 = vec4(dFdx(_741), dFdy(_741));
    vec4 _765 = textureGrad(DiffuseMapTexture, (texture(WangTileMapTexture, _731 * vec2(0.0078125)).xy * 0.99609375) + (fract(_731) * 0.25), _750.xy, _750.zw);
    vec3 _630 = (mix(vec3(1.0), VARYING2.xyz, vec3(_765.w)) * _765.xyz).xyz;
    vec3 _773 = vec3(CB0[15].x);
    float _875 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _819 = VARYING3.yzx - (VARYING3.yzx * _875);
    vec4 _829 = vec4(clamp(_875, 0.0, 1.0));
    vec4 _830 = mix(texture(LightMapTexture, _819), vec4(0.0), _829);
    vec4 _835 = mix(texture(LightGridSkylightTexture, _819), vec4(1.0), _829);
    vec4 _885 = texture(ShadowMapTexture, VARYING6.xy);
    float _898 = (1.0 - ((step(_885.x, VARYING6.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * _885.y)) * _835.y;
    vec3 _660 = ((min(((_830.xyz * (_830.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _835.x), vec3(CB0[17].w)) + (VARYING5.xyz * _898)) * mix(_630, _630 * _630, _773).xyz) + (CB0[10].xyz * (VARYING5.w * _898));
    vec4 _1027 = vec4(_660.x, _660.y, _660.z, vec4(0.0).w);
    _1027.w = VARYING2.w;
    vec3 _945 = mix(CB0[14].xyz, mix(_1027.xyz, sqrt(clamp(_1027.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _773).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_945.x, _945.y, _945.z, _1027.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
