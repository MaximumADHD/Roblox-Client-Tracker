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
uniform samplerCube EnvironmentMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

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
    vec2 _2575 = VARYING1.xy;
    _2575.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1610 = VARYING4.w * CB0[24].y;
    float _1622 = clamp(1.0 - _1610, 0.0, 1.0);
    vec2 _1672 = VARYING0.xy * CB2[0].x;
    vec4 _1827 = mix(texture(DiffuseMapTexture, _1672 * CB2[2].y), texture(DiffuseMapTexture, _1672), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[4].x) - (CB2[3].x * CB2[4].x), 0.0, 1.0)));
    vec2 _1858 = mix(texture(NormalMapTexture, _1672 * CB2[2].z), texture(NormalMapTexture, _1672), vec4(clamp((_1622 * CB2[4].y) - (CB2[3].y * CB2[4].y), 0.0, 1.0))).wy * 2.0;
    vec2 _1860 = _1858 - vec2(1.0);
    float _1868 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1858, _1860), 0.0, 1.0));
    vec2 _1720 = (vec3(_1860, _1868).xy + (vec3((texture(NormalDetailMapTexture, _1672 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1622;
    float _1726 = _1720.x;
    vec4 _1909 = mix(texture(SpecularMapTexture, _1672 * CB2[2].w), texture(SpecularMapTexture, _1672), vec4(clamp((_1622 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    vec2 _1789 = mix(vec2(CB2[1].y, CB2[1].z), (_1909.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1622));
    vec3 _1390 = normalize(((VARYING6.xyz * _1726) + (cross(VARYING5.xyz, VARYING6.xyz) * _1720.y)) + (VARYING5.xyz * _1868));
    vec3 _1394 = -CB0[11].xyz;
    float _1395 = dot(_1390, _1394);
    vec3 _1418 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1827.w + CB2[3].w, 0.0, 1.0))) * _1827.xyz) * (1.0 + (_1726 * CB2[1].x))) * (texture(StudsMapTexture, _2575).x * 2.0), VARYING2.w).xyz;
    vec3 _1923 = vec3(CB0[15].x);
    float _2012 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1956 = VARYING3.yzx - (VARYING3.yzx * _2012);
    vec4 _1966 = vec4(clamp(_2012, 0.0, 1.0));
    vec4 _1967 = mix(texture(LightMapTexture, _1956), vec4(0.0), _1966);
    vec4 _1972 = mix(texture(LightGridSkylightTexture, _1956), vec4(1.0), _1966);
    float _2007 = _1972.y;
    vec3 _2089 = VARYING7.xyz - CB0[26].xyz;
    vec3 _2098 = VARYING7.xyz - CB0[27].xyz;
    vec3 _2107 = VARYING7.xyz - CB0[28].xyz;
    vec4 _2151 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(_2089, _2089) < CB0[26].w) ? 0 : ((dot(_2098, _2098) < CB0[27].w) ? 1 : ((dot(_2107, _2107) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_2089, _2089) < CB0[26].w) ? 0 : ((dot(_2098, _2098) < CB0[27].w) ? 1 : ((dot(_2107, _2107) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_2089, _2089) < CB0[26].w) ? 0 : ((dot(_2098, _2098) < CB0[27].w) ? 1 : ((dot(_2107, _2107) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_2089, _2089) < CB0[26].w) ? 0 : ((dot(_2098, _2098) < CB0[27].w) ? 1 : ((dot(_2107, _2107) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _2202 = textureLod(ShadowAtlasTexture, _2151.xy, 0.0);
    vec2 _2614 = vec2(0.0);
    _2614.x = CB0[30].z;
    vec2 _2616 = _2614;
    _2616.y = CB0[30].w;
    float _2249 = (2.0 * _2151.z) - 1.0;
    float _2254 = exp(CB0[30].z * _2249);
    float _2261 = -exp((-CB0[30].w) * _2249);
    vec2 _2218 = (_2616 * CB0[31].y) * vec2(_2254, _2261);
    vec2 _2221 = _2218 * _2218;
    float _2274 = _2202.x;
    float _2281 = max(_2202.y - (_2274 * _2274), _2221.x);
    float _2285 = _2254 - _2274;
    float _2327 = _2202.z;
    float _2334 = max(_2202.w - (_2327 * _2327), _2221.y);
    float _2338 = _2261 - _2327;
    float _2134 = (_1395 > 0.0) ? mix(_2007, mix(min((_2254 <= _2274) ? 1.0 : clamp(((_2281 / (_2281 + (_2285 * _2285))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_2261 <= _2327) ? 1.0 : clamp(((_2334 / (_2334 + (_2338 * _2338))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _2007, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _1446 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1390)).xyz;
    vec3 _1495 = ((min(((_1967.xyz * (_1967.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1972.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1395, 0.0, 1.0)) + (CB0[12].xyz * max(-_1395, 0.0))) * _2134)) * mix(mix(_1418, _1418 * _1418, _1923).xyz, mix(_1446, (_1446 * _1446) * CB0[15].w, _1923), vec3((_1909.y * _1622) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, _1395) * _1789.x) * _2134) * pow(clamp(dot(_1390, normalize(_1394 + normalize(VARYING4.xyz))), 0.0, 1.0), _1789.y)));
    vec4 _2635 = vec4(_1495.x, _1495.y, _1495.z, vec4(0.0).w);
    _2635.w = VARYING2.w;
    vec2 _1520 = min(VARYING0.wz, VARYING1.wz);
    float _1527 = min(_1520.x, _1520.y) / _1610;
    vec3 _1551 = (_2635.xyz * clamp((clamp((_1610 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1527)) + _1527, 0.0, 1.0)).xyz;
    vec3 _2460 = mix(CB0[14].xyz, mix(_1551, sqrt(clamp(_1551 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1923).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_2460.x, _2460.y, _2460.z, _2635.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$EnvironmentMapTexture=s2
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
