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

struct LightShadowGPUTransform
{
    mat4 transform;
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
uniform vec4 CB8[24];
uniform vec4 CB2[5];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
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
    vec2 _2469 = VARYING1.xy;
    _2469.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1591 = clamp(1.0 - (VARYING4.w * CB0[24].y), 0.0, 1.0);
    vec2 _1629 = VARYING0.xy * CB2[0].x;
    vec4 _1636 = texture(DiffuseMapTexture, _1629);
    vec2 _1758 = texture(NormalMapTexture, _1629).wy * 2.0;
    vec2 _1760 = _1758 - vec2(1.0);
    float _1768 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1758, _1760), 0.0, 1.0));
    vec2 _1663 = (vec3(_1760, _1768).xy + (vec3((texture(NormalDetailMapTexture, _1629 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1591;
    float _1669 = _1663.x;
    float _1674 = _1636.w;
    vec3 _1698 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1674 + CB2[3].w, 0.0, 1.0))) * _1636.xyz) * (1.0 + (_1669 * CB2[1].x))) * (texture(StudsMapTexture, _2469).x * 2.0);
    vec4 _1809 = mix(texture(SpecularMapTexture, _1629 * CB2[2].w), texture(SpecularMapTexture, _1629), vec4(clamp((_1591 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    vec2 _1732 = mix(vec2(CB2[1].y, CB2[1].z), (_1809.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1591));
    float _1328 = VARYING2.w * 2.0;
    float _1329 = clamp(_1328, 0.0, 1.0);
    float _1338 = clamp((_1328 - 1.0) + _1674, 0.0, 1.0);
    vec3 _1370 = normalize(((VARYING6.xyz * _1669) + (cross(VARYING5.xyz, VARYING6.xyz) * _1663.y)) + (VARYING5.xyz * (_1768 * 10.0)));
    vec3 _1374 = -CB0[11].xyz;
    float _1375 = dot(_1370, _1374);
    float _1899 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1843 = VARYING3.yzx - (VARYING3.yzx * _1899);
    vec4 _1853 = vec4(clamp(_1899, 0.0, 1.0));
    vec4 _1854 = mix(texture(LightMapTexture, _1843), vec4(0.0), _1853);
    vec4 _1859 = mix(texture(LightGridSkylightTexture, _1843), vec4(1.0), _1853);
    vec3 _1869 = (_1854.xyz * (_1854.w * 120.0)).xyz;
    float _1876 = _1859.x;
    float _1894 = _1859.y;
    vec3 _1976 = VARYING7.xyz - CB0[26].xyz;
    vec3 _1985 = VARYING7.xyz - CB0[27].xyz;
    vec3 _1994 = VARYING7.xyz - CB0[28].xyz;
    vec4 _2038 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(_1976, _1976) < CB0[26].w) ? 0 : ((dot(_1985, _1985) < CB0[27].w) ? 1 : ((dot(_1994, _1994) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1976, _1976) < CB0[26].w) ? 0 : ((dot(_1985, _1985) < CB0[27].w) ? 1 : ((dot(_1994, _1994) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1976, _1976) < CB0[26].w) ? 0 : ((dot(_1985, _1985) < CB0[27].w) ? 1 : ((dot(_1994, _1994) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1976, _1976) < CB0[26].w) ? 0 : ((dot(_1985, _1985) < CB0[27].w) ? 1 : ((dot(_1994, _1994) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _2089 = textureLod(ShadowAtlasTexture, _2038.xy, 0.0);
    vec2 _2512 = vec2(0.0);
    _2512.x = CB0[30].z;
    vec2 _2514 = _2512;
    _2514.y = CB0[30].w;
    float _2136 = (2.0 * _2038.z) - 1.0;
    float _2141 = exp(CB0[30].z * _2136);
    float _2148 = -exp((-CB0[30].w) * _2136);
    vec2 _2105 = (_2514 * CB0[31].y) * vec2(_2141, _2148);
    vec2 _2108 = _2105 * _2105;
    float _2161 = _2089.x;
    float _2168 = max(_2089.y - (_2161 * _2161), _2108.x);
    float _2172 = _2141 - _2161;
    float _2214 = _2089.z;
    float _2221 = max(_2089.w - (_2214 * _2214), _2108.y);
    float _2225 = _2148 - _2214;
    float _2021 = (_1375 > 0.0) ? mix(_1894, mix(min((_2141 <= _2161) ? 1.0 : clamp(((_2168 / (_2168 + (_2172 * _2172))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_2148 <= _2214) ? 1.0 : clamp(((_2221 / (_2221 + (_2225 * _2225))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1894, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _2265 = vec3(CB0[15].x);
    vec3 _2266 = mix(_1698, _1698 * _1698, _2265);
    vec3 _1442 = normalize(VARYING4.xyz);
    vec3 _1473 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1370)).xyz;
    vec3 _1487 = mix(_1869, mix(_1473, (_1473 * _1473) * CB0[15].w, _2265), vec3(_1876)) * mix(vec3(1.0), _2266, vec3(0.5));
    float _2303 = 1.0 - dot(_1370, _1442);
    vec4 _1523 = mix(vec4(mix((min((_1869 + CB0[8].xyz) + (CB0[9].xyz * _1876), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1375, 0.0, 1.0)) + (CB0[12].xyz * max(-_1375, 0.0))) * _2021)) * _2266, _1487, vec3(mix((_1809.y * _1591) * CB2[0].w, 1.0, VARYING7.w))) * _1338, _1338), vec4(_1487, 1.0), vec4(((_2303 * _2303) * 0.800000011920928955078125) * _1329)) + vec4(CB0[10].xyz * ((((step(0.0, _1375) * mix(_1732.x, CB2[0].y, VARYING7.w)) * _2021) * pow(clamp(dot(_1370, normalize(_1374 + _1442)), 0.0, 1.0), mix(_1732.y, CB2[0].z, VARYING7.w))) * _1329), 0.0);
    vec3 _1535 = _1523.xyz;
    vec3 _2321 = mix(_1535, sqrt(clamp(_1535 * CB0[15].z, vec3(0.0), vec3(1.0))), _2265);
    _entryPointOutput = mix(vec4(CB0[14].xyz, 1.0), vec4(_2321.x, _2321.y, _2321.z, _1523.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$EnvironmentMapTexture=s2
