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
    vec2 _2395 = VARYING1.xy;
    _2395.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1538 = VARYING4.w * CB0[24].y;
    float _1550 = clamp(1.0 - _1538, 0.0, 1.0);
    vec2 _1582 = VARYING0.xy * CB2[0].x;
    vec4 _1589 = texture(DiffuseMapTexture, _1582);
    vec2 _1701 = texture(NormalMapTexture, _1582).wy * 2.0;
    vec2 _1703 = _1701 - vec2(1.0);
    float _1711 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1701, _1703), 0.0, 1.0));
    vec2 _1616 = (vec3(_1703, _1711).xy + (vec3((texture(NormalDetailMapTexture, _1582 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1550;
    float _1622 = _1616.x;
    vec4 _1654 = texture(SpecularMapTexture, _1582);
    vec2 _1678 = mix(vec2(CB2[1].y, CB2[1].z), (_1654.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1550));
    vec3 _1318 = normalize(((VARYING6.xyz * _1622) + (cross(VARYING5.xyz, VARYING6.xyz) * _1616.y)) + (VARYING5.xyz * _1711));
    vec3 _1322 = -CB0[11].xyz;
    float _1323 = dot(_1318, _1322);
    vec3 _1346 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1589.w + CB2[3].w, 0.0, 1.0))) * _1589.xyz) * (1.0 + (_1622 * CB2[1].x))) * (texture(StudsMapTexture, _2395).x * 2.0), VARYING2.w).xyz;
    vec3 _1743 = vec3(CB0[15].x);
    float _1832 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1776 = VARYING3.yzx - (VARYING3.yzx * _1832);
    vec4 _1786 = vec4(clamp(_1832, 0.0, 1.0));
    vec4 _1787 = mix(texture(LightMapTexture, _1776), vec4(0.0), _1786);
    vec4 _1792 = mix(texture(LightGridSkylightTexture, _1776), vec4(1.0), _1786);
    float _1827 = _1792.y;
    vec3 _1909 = VARYING7.xyz - CB0[26].xyz;
    vec3 _1918 = VARYING7.xyz - CB0[27].xyz;
    vec3 _1927 = VARYING7.xyz - CB0[28].xyz;
    vec4 _1971 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(_1909, _1909) < CB0[26].w) ? 0 : ((dot(_1918, _1918) < CB0[27].w) ? 1 : ((dot(_1927, _1927) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1909, _1909) < CB0[26].w) ? 0 : ((dot(_1918, _1918) < CB0[27].w) ? 1 : ((dot(_1927, _1927) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1909, _1909) < CB0[26].w) ? 0 : ((dot(_1918, _1918) < CB0[27].w) ? 1 : ((dot(_1927, _1927) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1909, _1909) < CB0[26].w) ? 0 : ((dot(_1918, _1918) < CB0[27].w) ? 1 : ((dot(_1927, _1927) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _2022 = textureLod(ShadowAtlasTexture, _1971.xy, 0.0);
    vec2 _2433 = vec2(0.0);
    _2433.x = CB0[30].z;
    vec2 _2435 = _2433;
    _2435.y = CB0[30].w;
    float _2069 = (2.0 * _1971.z) - 1.0;
    float _2074 = exp(CB0[30].z * _2069);
    float _2081 = -exp((-CB0[30].w) * _2069);
    vec2 _2038 = (_2435 * CB0[31].y) * vec2(_2074, _2081);
    vec2 _2041 = _2038 * _2038;
    float _2094 = _2022.x;
    float _2101 = max(_2022.y - (_2094 * _2094), _2041.x);
    float _2105 = _2074 - _2094;
    float _2147 = _2022.z;
    float _2154 = max(_2022.w - (_2147 * _2147), _2041.y);
    float _2158 = _2081 - _2147;
    float _1954 = (_1323 > 0.0) ? mix(_1827, mix(min((_2074 <= _2094) ? 1.0 : clamp(((_2101 / (_2101 + (_2105 * _2105))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_2081 <= _2147) ? 1.0 : clamp(((_2154 / (_2154 + (_2158 * _2158))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1827, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _1374 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1318)).xyz;
    vec3 _1423 = ((min(((_1787.xyz * (_1787.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1792.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1323, 0.0, 1.0)) + (CB0[12].xyz * max(-_1323, 0.0))) * _1954)) * mix(mix(_1346, _1346 * _1346, _1743).xyz, mix(_1374, (_1374 * _1374) * CB0[15].w, _1743), vec3((_1654.y * _1550) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, _1323) * _1678.x) * _1954) * pow(clamp(dot(_1318, normalize(_1322 + normalize(VARYING4.xyz))), 0.0, 1.0), _1678.y)));
    vec4 _2454 = vec4(_1423.x, _1423.y, _1423.z, vec4(0.0).w);
    _2454.w = VARYING2.w;
    vec2 _1448 = min(VARYING0.wz, VARYING1.wz);
    float _1455 = min(_1448.x, _1448.y) / _1538;
    vec3 _1479 = (_2454.xyz * clamp((clamp((_1538 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1455)) + _1455, 0.0, 1.0)).xyz;
    vec3 _2280 = mix(CB0[14].xyz, mix(_1479, sqrt(clamp(_1479 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1743).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_2280.x, _2280.y, _2280.z, _2454.w);
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
