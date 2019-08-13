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
uniform samplerCube EnvironmentMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec2 _1691 = VARYING1.xy;
    _1691.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1170 = VARYING4.w * CB0[24].y;
    vec2 _1277 = texture2D(NormalMapTexture, _1691).wy * 2.0;
    vec2 _1279 = _1277 - vec2(1.0);
    float _1287 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1277, _1279), 0.0, 1.0));
    vec2 _1248 = ((vec3(_1279, _1287).xy + (vec3((texture2D(NormalDetailMapTexture, VARYING0.xy * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * clamp(1.0 - _1170, 0.0, 1.0)).xy * CB2[4].w;
    vec3 _956 = normalize(((VARYING6.xyz * _1248.x) + (cross(VARYING5.xyz, VARYING6.xyz) * _1248.y)) + (VARYING5.xyz * _1287));
    vec3 _960 = -CB0[11].xyz;
    float _961 = dot(_956, _960);
    vec3 _984 = vec4(VARYING2.xyz * (texture2D(DiffuseMapTexture, _1691).x * 2.0), VARYING2.w).xyz;
    vec3 _1322 = vec3(CB0[15].x);
    float _1424 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1368 = VARYING3.yzx - (VARYING3.yzx * _1424);
    vec4 _1378 = vec4(clamp(_1424, 0.0, 1.0));
    vec4 _1379 = mix(texture3D(LightMapTexture, _1368), vec4(0.0), _1378);
    vec4 _1384 = mix(texture3D(LightGridSkylightTexture, _1368), vec4(1.0), _1378);
    vec4 _1434 = texture2D(ShadowMapTexture, VARYING7.xy);
    float _1447 = (1.0 - ((step(_1434.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1434.y)) * _1384.y;
    vec3 _1003 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, _956)).xyz;
    vec3 _1052 = ((min(((_1379.xyz * (_1379.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1384.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_961, 0.0, 1.0)) + (CB0[12].xyz * max(-_961, 0.0))) * _1447)) * mix(mix(_984, _984 * _984, _1322).xyz, mix(_1003, (_1003 * _1003) * CB0[15].w, _1322), vec3(VARYING7.w)).xyz) + (CB0[10].xyz * (((step(0.0, _961) * CB2[0].y) * _1447) * pow(clamp(dot(_956, normalize(_960 + normalize(VARYING4.xyz))), 0.0, 1.0), CB2[0].z)));
    vec4 _1715 = vec4(_1052.x, _1052.y, _1052.z, vec4(0.0).w);
    _1715.w = VARYING2.w;
    vec2 _1077 = min(VARYING0.wz, VARYING1.wz);
    float _1084 = min(_1077.x, _1077.y) / _1170;
    vec3 _1108 = (_1715.xyz * clamp((clamp((_1170 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1084)) + _1084, 0.0, 1.0)).xyz;
    vec3 _1555 = mix(CB0[14].xyz, mix(_1108, sqrt(clamp(_1108 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1322).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1555.x, _1555.y, _1555.z, _1715.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$EnvironmentMapTexture=s2
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
