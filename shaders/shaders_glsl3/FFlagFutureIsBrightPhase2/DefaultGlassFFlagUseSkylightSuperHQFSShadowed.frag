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
    vec2 _2948 = VARYING1.xy;
    _2948.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1885 = clamp(1.0 - (VARYING4.w * CB0[24].y), 0.0, 1.0);
    vec2 _1923 = VARYING0.xy * CB2[0].x;
    vec4 _1930 = texture(DiffuseMapTexture, _1923);
    vec2 _2052 = texture(NormalMapTexture, _1923).wy * 2.0;
    vec2 _2054 = _2052 - vec2(1.0);
    float _2062 = sqrt(clamp(1.0 + dot(vec2(1.0) - _2052, _2054), 0.0, 1.0));
    vec2 _1957 = (vec3(_2054, _2062).xy + (vec3((texture(NormalDetailMapTexture, _1923 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1885;
    float _1963 = _1957.x;
    float _1968 = _1930.w;
    vec3 _1992 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1968 + CB2[3].w, 0.0, 1.0))) * _1930.xyz) * (1.0 + (_1963 * CB2[1].x))) * (texture(StudsMapTexture, _2948).x * 2.0);
    vec4 _2103 = mix(texture(SpecularMapTexture, _1923 * CB2[2].w), texture(SpecularMapTexture, _1923), vec4(clamp((_1885 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    vec2 _2026 = mix(vec2(CB2[1].y, CB2[1].z), (_2103.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1885));
    float _1580 = VARYING2.w * 2.0;
    float _1581 = clamp(_1580, 0.0, 1.0);
    vec3 _1622 = normalize(((VARYING6.xyz * _1963) + (cross(VARYING5.xyz, VARYING6.xyz) * _1957.y)) + (VARYING5.xyz * (_2062 * 10.0)));
    vec3 _1626 = -CB0[11].xyz;
    float _1627 = dot(_1622, _1626);
    float _2193 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _2137 = VARYING3.yzx - (VARYING3.yzx * _2193);
    vec4 _2147 = vec4(clamp(_2193, 0.0, 1.0));
    vec4 _2148 = mix(texture(LightMapTexture, _2137), vec4(0.0), _2147);
    vec4 _2153 = mix(texture(LightGridSkylightTexture, _2137), vec4(1.0), _2147);
    vec3 _2163 = (_2148.xyz * (_2148.w * 120.0)).xyz;
    float _2170 = _2153.x;
    float _2188 = _2153.y;
    vec3 _2270 = VARYING7.xyz - CB0[26].xyz;
    vec3 _2279 = VARYING7.xyz - CB0[27].xyz;
    vec3 _2288 = VARYING7.xyz - CB0[28].xyz;
    vec4 _2332 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(_2270, _2270) < CB0[26].w) ? 0 : ((dot(_2279, _2279) < CB0[27].w) ? 1 : ((dot(_2288, _2288) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_2270, _2270) < CB0[26].w) ? 0 : ((dot(_2279, _2279) < CB0[27].w) ? 1 : ((dot(_2288, _2288) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_2270, _2270) < CB0[26].w) ? 0 : ((dot(_2279, _2279) < CB0[27].w) ? 1 : ((dot(_2288, _2288) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_2270, _2270) < CB0[26].w) ? 0 : ((dot(_2279, _2279) < CB0[27].w) ? 1 : ((dot(_2288, _2288) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _2383 = textureLod(ShadowAtlasTexture, _2332.xy, 0.0);
    vec2 _2991 = vec2(0.0);
    _2991.x = CB0[30].z;
    vec2 _2993 = _2991;
    _2993.y = CB0[30].w;
    float _2430 = (2.0 * _2332.z) - 1.0;
    float _2435 = exp(CB0[30].z * _2430);
    float _2442 = -exp((-CB0[30].w) * _2430);
    vec2 _2399 = (_2993 * CB0[31].y) * vec2(_2435, _2442);
    vec2 _2402 = _2399 * _2399;
    float _2455 = _2383.x;
    float _2462 = max(_2383.y - (_2455 * _2455), _2402.x);
    float _2466 = _2435 - _2455;
    float _2508 = _2383.z;
    float _2515 = max(_2383.w - (_2508 * _2508), _2402.y);
    float _2519 = _2442 - _2508;
    float _2315 = (_1627 > 0.0) ? mix(_2188, mix(min((_2435 <= _2455) ? 1.0 : clamp(((_2462 / (_2462 + (_2466 * _2466))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_2442 <= _2508) ? 1.0 : clamp(((_2515 / (_2515 + (_2519 * _2519))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _2188, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _2559 = vec3(CB0[15].x);
    vec3 _2560 = mix(_1992, _1992 * _1992, _2559);
    vec3 _1694 = normalize(VARYING4.xyz);
    vec3 _1725 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1622)).xyz;
    vec3 _1739 = mix(_2163, mix(_1725, (_1725 * _1725) * CB0[15].w, _2559), vec3(_2170)) * mix(vec3(1.0), _2560, vec3(0.5));
    float _2597 = 1.0 - dot(_1622, _1694);
    float _1750 = 1.0 - VARYING2.w;
    float _1754 = mix(0.660000026226043701171875, 1.0, _1750 * _1750);
    mat4 _2634 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _2635 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * _2634;
    vec4 _2664 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * _1754) / max(dot(VARYING4.xyz, _1622), 0.00999999977648258209228515625)))) + (_1622 * (3.0 * (1.0 - _1754)))), 1.0) * _2634;
    float _2721 = _2635.w;
    vec2 _2671 = ((_2635.xy * 0.5) + vec2(0.5 * _2721)).xy / vec2(_2721);
    float _2733 = _2664.w;
    vec2 _2678 = ((_2664.xy * 0.5) + vec2(0.5 * _2733)).xy / vec2(_2733);
    vec2 _2744 = _2678 - vec2(0.5);
    vec2 _2685 = (_2678 - _2671) * clamp(vec2(1.0) - ((_2744 * _2744) * 4.0), vec2(0.0), vec2(1.0));
    vec2 _2693 = normalize(_2685) * CB0[24].x;
    vec4 _2715 = texture(GBufferColorTexture, _2671 + (_2685 * clamp(min(texture(GBufferDepthTexture, _2678 + _2693).x * 500.0, texture(GBufferDepthTexture, _2678 - _2693).x * 500.0) - _2721, 0.0, 1.0)));
    vec3 _1761 = _2715.xyz;
    vec3 _1766 = mix(_1761, (_1761 * _1761) * CB0[15].y, _2559).xyz;
    vec3 _1773 = _1766 * mix(vec3(1.0), VARYING2.xyz, vec3(_1581));
    vec4 _3018 = vec4(_1773.x, _1773.y, _1773.z, vec4(0.0).w);
    _3018.w = mix(1.0, _2715.w, dot(_1773.xyz, vec3(1.0)) / (dot(_1766, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 _1817 = mix(mix(_3018, vec4(mix((min((_2163 + CB0[8].xyz) + (CB0[9].xyz * _2170), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1627, 0.0, 1.0)) + (CB0[12].xyz * max(-_1627, 0.0))) * _2315)) * _2560, _1739, vec3(mix((_2103.y * _1885) * CB2[0].w, 1.0, VARYING7.w))), 1.0), vec4(clamp((_1580 - 1.0) + _1968, 0.0, 1.0))), vec4(_1739, 1.0), vec4(((_2597 * _2597) * 0.800000011920928955078125) * _1581)) + vec4(CB0[10].xyz * ((((step(0.0, _1627) * mix(_2026.x, CB2[0].y, VARYING7.w)) * _2315) * pow(clamp(dot(_1622, normalize(_1626 + _1694)), 0.0, 1.0), mix(_2026.y, CB2[0].z, VARYING7.w))) * _1581), 0.0);
    vec3 _1829 = _1817.xyz;
    vec3 _2799 = mix(_1829, sqrt(clamp(_1829 * CB0[15].z, vec3(0.0), vec3(1.0))), _2559);
    _entryPointOutput = mix(vec4(CB0[14].xyz, 1.0), vec4(_2799.x, _2799.y, _2799.z, _1817.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
//$$EnvironmentMapTexture=s2
