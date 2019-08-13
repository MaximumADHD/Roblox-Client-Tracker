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
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube EnvironmentMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec2 _2354 = VARYING1.xy;
    _2354.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1582 = clamp(1.0 - (VARYING4.w * CB0[24].y), 0.0, 1.0);
    vec2 _1620 = VARYING0.xy * CB2[0].x;
    vec4 _1627 = texture(DiffuseMapTexture, _1620);
    vec2 _1749 = texture(NormalMapTexture, _1620).wy * 2.0;
    vec2 _1751 = _1749 - vec2(1.0);
    float _1759 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1749, _1751), 0.0, 1.0));
    vec2 _1654 = (vec3(_1751, _1759).xy + (vec3((texture(NormalDetailMapTexture, _1620 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1582;
    float _1660 = _1654.x;
    float _1665 = _1627.w;
    vec3 _1689 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1665 + CB2[3].w, 0.0, 1.0))) * _1627.xyz) * (1.0 + (_1660 * CB2[1].x))) * (texture(StudsMapTexture, _2354).x * 2.0);
    vec4 _1800 = mix(texture(SpecularMapTexture, _1620 * CB2[2].w), texture(SpecularMapTexture, _1620), vec4(clamp((_1582 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    vec2 _1723 = mix(vec2(CB2[1].y, CB2[1].z), (_1800.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1582));
    float _1286 = VARYING2.w * 2.0;
    float _1287 = clamp(_1286, 0.0, 1.0);
    vec3 _1328 = normalize(((VARYING6.xyz * _1660) + (cross(VARYING5.xyz, VARYING6.xyz) * _1654.y)) + (VARYING5.xyz * (_1759 * 10.0)));
    vec3 _1332 = -CB0[11].xyz;
    float _1333 = dot(_1328, _1332);
    float _1903 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1847 = VARYING3.yzx - (VARYING3.yzx * _1903);
    vec4 _1857 = vec4(clamp(_1903, 0.0, 1.0));
    vec4 _1858 = mix(texture(LightMapTexture, _1847), vec4(0.0), _1857);
    vec4 _1863 = mix(texture(LightGridSkylightTexture, _1847), vec4(1.0), _1857);
    vec3 _1873 = (_1858.xyz * (_1858.w * 120.0)).xyz;
    float _1880 = _1863.x;
    vec4 _1913 = texture(ShadowMapTexture, VARYING7.xy);
    float _1926 = (1.0 - ((step(_1913.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1913.y)) * _1863.y;
    vec3 _1952 = vec3(CB0[15].x);
    vec3 _1953 = mix(_1689, _1689 * _1689, _1952);
    vec3 _1391 = normalize(VARYING4.xyz);
    vec3 _1422 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1328)).xyz;
    vec3 _1436 = mix(_1873, mix(_1422, (_1422 * _1422) * CB0[15].w, _1952), vec3(_1880)) * mix(vec3(1.0), _1953, vec3(0.5));
    float _1990 = 1.0 - dot(_1328, _1391);
    float _1447 = 1.0 - VARYING2.w;
    float _1451 = mix(0.660000026226043701171875, 1.0, _1447 * _1447);
    mat4 _2027 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _2028 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * _2027;
    vec4 _2057 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * _1451) / max(dot(VARYING4.xyz, _1328), 0.00999999977648258209228515625)))) + (_1328 * (3.0 * (1.0 - _1451)))), 1.0) * _2027;
    float _2114 = _2028.w;
    vec2 _2064 = ((_2028.xy * 0.5) + vec2(0.5 * _2114)).xy / vec2(_2114);
    float _2126 = _2057.w;
    vec2 _2071 = ((_2057.xy * 0.5) + vec2(0.5 * _2126)).xy / vec2(_2126);
    vec2 _2137 = _2071 - vec2(0.5);
    vec2 _2078 = (_2071 - _2064) * clamp(vec2(1.0) - ((_2137 * _2137) * 4.0), vec2(0.0), vec2(1.0));
    vec2 _2086 = normalize(_2078) * CB0[24].x;
    vec4 _2108 = texture(GBufferColorTexture, _2064 + (_2078 * clamp(min(texture(GBufferDepthTexture, _2071 + _2086).x * 500.0, texture(GBufferDepthTexture, _2071 - _2086).x * 500.0) - _2114, 0.0, 1.0)));
    vec3 _1458 = _2108.xyz;
    vec3 _1463 = mix(_1458, (_1458 * _1458) * CB0[15].y, _1952).xyz;
    vec3 _1470 = _1463 * mix(vec3(1.0), VARYING2.xyz, vec3(_1287));
    vec4 _2392 = vec4(_1470.x, _1470.y, _1470.z, vec4(0.0).w);
    _2392.w = mix(1.0, _2108.w, dot(_1470.xyz, vec3(1.0)) / (dot(_1463, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 _1514 = mix(mix(_2392, vec4(mix((min((_1873 + CB0[8].xyz) + (CB0[9].xyz * _1880), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1333, 0.0, 1.0)) + (CB0[12].xyz * max(-_1333, 0.0))) * _1926)) * _1953, _1436, vec3(mix((_1800.y * _1582) * CB2[0].w, 1.0, VARYING7.w))), 1.0), vec4(clamp((_1286 - 1.0) + _1665, 0.0, 1.0))), vec4(_1436, 1.0), vec4(((_1990 * _1990) * 0.800000011920928955078125) * _1287)) + vec4(CB0[10].xyz * ((((step(0.0, _1333) * mix(_1723.x, CB2[0].y, VARYING7.w)) * _1926) * pow(clamp(dot(_1328, normalize(_1332 + _1391)), 0.0, 1.0), mix(_1723.y, CB2[0].z, VARYING7.w))) * _1287), 0.0);
    vec3 _1526 = _1514.xyz;
    vec3 _2192 = mix(_1526, sqrt(clamp(_1526 * CB0[15].z, vec3(0.0), vec3(1.0))), _1952);
    _entryPointOutput = mix(vec4(CB0[14].xyz, 1.0), vec4(_2192.x, _2192.y, _2192.z, _1514.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
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
