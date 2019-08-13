#version 110
#extension GL_ARB_shader_texture_lod : require

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

varying vec4 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec2 _719 = (VARYING0.xy * CB2[0].x) * 4.0;
    vec2 _729 = _719 * 0.25;
    vec4 _738 = vec4(dFdx(_729), dFdy(_729));
    vec4 _753 = texture2DGradARB(DiffuseMapTexture, (texture2D(WangTileMapTexture, _719 * vec2(0.0078125)).zw * 0.99609375) + (fract(_719) * 0.25), _738.xy, _738.zw);
    vec3 _618 = (mix(vec3(1.0), VARYING2.xyz, vec3(_753.w)) * _753.xyz).xyz;
    vec3 _761 = vec3(CB0[15].x);
    float _863 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _807 = VARYING3.yzx - (VARYING3.yzx * _863);
    vec4 _817 = vec4(clamp(_863, 0.0, 1.0));
    vec4 _818 = mix(texture3D(LightMapTexture, _807), vec4(0.0), _817);
    vec4 _823 = mix(texture3D(LightGridSkylightTexture, _807), vec4(1.0), _817);
    vec4 _873 = texture2D(ShadowMapTexture, VARYING6.xy);
    float _886 = (1.0 - ((step(_873.x, VARYING6.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * _873.y)) * _823.y;
    vec3 _648 = ((min(((_818.xyz * (_818.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _823.x), vec3(CB0[17].w)) + (VARYING5.xyz * _886)) * mix(_618, _618 * _618, _761).xyz) + (CB0[10].xyz * (VARYING5.w * _886));
    vec4 _1015 = vec4(_648.x, _648.y, _648.z, vec4(0.0).w);
    _1015.w = VARYING2.w;
    vec3 _933 = mix(CB0[14].xyz, mix(_1015.xyz, sqrt(clamp(_1015.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _761).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_933.x, _933.y, _933.z, _1015.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
