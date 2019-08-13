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
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube EnvironmentMapTexture;

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
    vec2 _2342 = VARYING1.xy;
    _2342.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1570 = clamp(1.0 - (VARYING4.w * CB0[24].y), 0.0, 1.0);
    vec2 _1608 = VARYING0.xy * CB2[0].x;
    vec4 _1615 = texture2D(DiffuseMapTexture, _1608);
    vec2 _1737 = texture2D(NormalMapTexture, _1608).wy * 2.0;
    vec2 _1739 = _1737 - vec2(1.0);
    float _1747 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1737, _1739), 0.0, 1.0));
    vec2 _1642 = (vec3(_1739, _1747).xy + (vec3((texture2D(NormalDetailMapTexture, _1608 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1570;
    float _1648 = _1642.x;
    float _1653 = _1615.w;
    vec3 _1677 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1653 + CB2[3].w, 0.0, 1.0))) * _1615.xyz) * (1.0 + (_1648 * CB2[1].x))) * (texture2D(StudsMapTexture, _2342).x * 2.0);
    vec4 _1788 = mix(texture2D(SpecularMapTexture, _1608 * CB2[2].w), texture2D(SpecularMapTexture, _1608), vec4(clamp((_1570 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    vec2 _1711 = mix(vec2(CB2[1].y, CB2[1].z), (_1788.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1570));
    float _1274 = VARYING2.w * 2.0;
    float _1275 = clamp(_1274, 0.0, 1.0);
    vec3 _1316 = normalize(((VARYING6.xyz * _1648) + (cross(VARYING5.xyz, VARYING6.xyz) * _1642.y)) + (VARYING5.xyz * (_1747 * 10.0)));
    vec3 _1320 = -CB0[11].xyz;
    float _1321 = dot(_1316, _1320);
    float _1891 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1835 = VARYING3.yzx - (VARYING3.yzx * _1891);
    vec4 _1845 = vec4(clamp(_1891, 0.0, 1.0));
    vec4 _1846 = mix(texture3D(LightMapTexture, _1835), vec4(0.0), _1845);
    vec4 _1851 = mix(texture3D(LightGridSkylightTexture, _1835), vec4(1.0), _1845);
    vec3 _1861 = (_1846.xyz * (_1846.w * 120.0)).xyz;
    float _1868 = _1851.x;
    vec4 _1901 = texture2D(ShadowMapTexture, VARYING7.xy);
    float _1914 = (1.0 - ((step(_1901.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1901.y)) * _1851.y;
    vec3 _1940 = vec3(CB0[15].x);
    vec3 _1941 = mix(_1677, _1677 * _1677, _1940);
    vec3 _1379 = normalize(VARYING4.xyz);
    vec3 _1410 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1316)).xyz;
    vec3 _1424 = mix(_1861, mix(_1410, (_1410 * _1410) * CB0[15].w, _1940), vec3(_1868)) * mix(vec3(1.0), _1941, vec3(0.5));
    float _1978 = 1.0 - dot(_1316, _1379);
    float _1435 = 1.0 - VARYING2.w;
    float _1439 = mix(0.660000026226043701171875, 1.0, _1435 * _1435);
    mat4 _2015 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _2016 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * _2015;
    vec4 _2045 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * _1439) / max(dot(VARYING4.xyz, _1316), 0.00999999977648258209228515625)))) + (_1316 * (3.0 * (1.0 - _1439)))), 1.0) * _2015;
    float _2102 = _2016.w;
    vec2 _2052 = ((_2016.xy * 0.5) + vec2(0.5 * _2102)).xy / vec2(_2102);
    float _2114 = _2045.w;
    vec2 _2059 = ((_2045.xy * 0.5) + vec2(0.5 * _2114)).xy / vec2(_2114);
    vec2 _2125 = _2059 - vec2(0.5);
    vec2 _2066 = (_2059 - _2052) * clamp(vec2(1.0) - ((_2125 * _2125) * 4.0), vec2(0.0), vec2(1.0));
    vec2 _2074 = normalize(_2066) * CB0[24].x;
    vec4 _2096 = texture2D(GBufferColorTexture, _2052 + (_2066 * clamp(min(texture2D(GBufferDepthTexture, _2059 + _2074).x * 500.0, texture2D(GBufferDepthTexture, _2059 - _2074).x * 500.0) - _2102, 0.0, 1.0)));
    vec3 _1446 = _2096.xyz;
    vec3 _1451 = mix(_1446, (_1446 * _1446) * CB0[15].y, _1940).xyz;
    vec3 _1458 = _1451 * mix(vec3(1.0), VARYING2.xyz, vec3(_1275));
    vec4 _2380 = vec4(_1458.x, _1458.y, _1458.z, vec4(0.0).w);
    _2380.w = mix(1.0, _2096.w, dot(_1458.xyz, vec3(1.0)) / (dot(_1451, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 _1502 = mix(mix(_2380, vec4(mix((min((_1861 + CB0[8].xyz) + (CB0[9].xyz * _1868), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1321, 0.0, 1.0)) + (CB0[12].xyz * max(-_1321, 0.0))) * _1914)) * _1941, _1424, vec3(mix((_1788.y * _1570) * CB2[0].w, 1.0, VARYING7.w))), 1.0), vec4(clamp((_1274 - 1.0) + _1653, 0.0, 1.0))), vec4(_1424, 1.0), vec4(((_1978 * _1978) * 0.800000011920928955078125) * _1275)) + vec4(CB0[10].xyz * ((((step(0.0, _1321) * mix(_1711.x, CB2[0].y, VARYING7.w)) * _1914) * pow(clamp(dot(_1316, normalize(_1320 + _1379)), 0.0, 1.0), mix(_1711.y, CB2[0].z, VARYING7.w))) * _1275), 0.0);
    vec3 _1514 = _1502.xyz;
    vec3 _2180 = mix(_1514, sqrt(clamp(_1514 * CB0[15].z, vec3(0.0), vec3(1.0))), _1940);
    gl_FragData[0] = mix(vec4(CB0[14].xyz, 1.0), vec4(_2180.x, _2180.y, _2180.z, _1502.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
//$$EnvironmentMapTexture=s2
