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
    vec2 _2475 = VARYING1.xy;
    _2475.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1582 = VARYING4.w * CB0[24].y;
    float _1594 = clamp(1.0 - _1582, 0.0, 1.0);
    vec2 _1632 = VARYING0.xy * CB2[0].x;
    vec4 _1773 = mix(texture(DiffuseMapTexture, _1632 * CB2[2].y), texture(DiffuseMapTexture, _1632), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[4].x) - (CB2[3].x * CB2[4].x), 0.0, 1.0)));
    vec2 _1781 = texture(NormalMapTexture, _1632).wy * 2.0;
    vec2 _1783 = _1781 - vec2(1.0);
    float _1791 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1781, _1783), 0.0, 1.0));
    vec2 _1673 = (vec3(_1783, _1791).xy + (vec3((texture(NormalDetailMapTexture, _1632 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1594;
    float _1679 = _1673.x;
    vec4 _1711 = texture(SpecularMapTexture, _1632);
    vec2 _1735 = mix(vec2(CB2[1].y, CB2[1].z), (_1711.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1594));
    vec3 _1362 = normalize(((VARYING6.xyz * _1679) + (cross(VARYING5.xyz, VARYING6.xyz) * _1673.y)) + (VARYING5.xyz * _1791));
    vec3 _1366 = -CB0[11].xyz;
    float _1367 = dot(_1362, _1366);
    vec3 _1390 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1773.w + CB2[3].w, 0.0, 1.0))) * _1773.xyz) * (1.0 + (_1679 * CB2[1].x))) * (texture(StudsMapTexture, _2475).x * 2.0), VARYING2.w).xyz;
    vec3 _1823 = vec3(CB0[15].x);
    float _1912 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1856 = VARYING3.yzx - (VARYING3.yzx * _1912);
    vec4 _1866 = vec4(clamp(_1912, 0.0, 1.0));
    vec4 _1867 = mix(texture(LightMapTexture, _1856), vec4(0.0), _1866);
    vec4 _1872 = mix(texture(LightGridSkylightTexture, _1856), vec4(1.0), _1866);
    float _1907 = _1872.y;
    vec3 _1989 = VARYING7.xyz - CB0[26].xyz;
    vec3 _1998 = VARYING7.xyz - CB0[27].xyz;
    vec3 _2007 = VARYING7.xyz - CB0[28].xyz;
    vec4 _2051 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(_1989, _1989) < CB0[26].w) ? 0 : ((dot(_1998, _1998) < CB0[27].w) ? 1 : ((dot(_2007, _2007) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1989, _1989) < CB0[26].w) ? 0 : ((dot(_1998, _1998) < CB0[27].w) ? 1 : ((dot(_2007, _2007) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1989, _1989) < CB0[26].w) ? 0 : ((dot(_1998, _1998) < CB0[27].w) ? 1 : ((dot(_2007, _2007) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1989, _1989) < CB0[26].w) ? 0 : ((dot(_1998, _1998) < CB0[27].w) ? 1 : ((dot(_2007, _2007) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _2102 = textureLod(ShadowAtlasTexture, _2051.xy, 0.0);
    vec2 _2514 = vec2(0.0);
    _2514.x = CB0[30].z;
    vec2 _2516 = _2514;
    _2516.y = CB0[30].w;
    float _2149 = (2.0 * _2051.z) - 1.0;
    float _2154 = exp(CB0[30].z * _2149);
    float _2161 = -exp((-CB0[30].w) * _2149);
    vec2 _2118 = (_2516 * CB0[31].y) * vec2(_2154, _2161);
    vec2 _2121 = _2118 * _2118;
    float _2174 = _2102.x;
    float _2181 = max(_2102.y - (_2174 * _2174), _2121.x);
    float _2185 = _2154 - _2174;
    float _2227 = _2102.z;
    float _2234 = max(_2102.w - (_2227 * _2227), _2121.y);
    float _2238 = _2161 - _2227;
    float _2034 = (_1367 > 0.0) ? mix(_1907, mix(min((_2154 <= _2174) ? 1.0 : clamp(((_2181 / (_2181 + (_2185 * _2185))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_2161 <= _2227) ? 1.0 : clamp(((_2234 / (_2234 + (_2238 * _2238))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1907, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _1418 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1362)).xyz;
    vec3 _1467 = ((min(((_1867.xyz * (_1867.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1872.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1367, 0.0, 1.0)) + (CB0[12].xyz * max(-_1367, 0.0))) * _2034)) * mix(mix(_1390, _1390 * _1390, _1823).xyz, mix(_1418, (_1418 * _1418) * CB0[15].w, _1823), vec3((_1711.y * _1594) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, _1367) * _1735.x) * _2034) * pow(clamp(dot(_1362, normalize(_1366 + normalize(VARYING4.xyz))), 0.0, 1.0), _1735.y)));
    vec4 _2535 = vec4(_1467.x, _1467.y, _1467.z, vec4(0.0).w);
    _2535.w = VARYING2.w;
    vec2 _1492 = min(VARYING0.wz, VARYING1.wz);
    float _1499 = min(_1492.x, _1492.y) / _1582;
    vec3 _1523 = (_2535.xyz * clamp((clamp((_1582 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1499)) + _1499, 0.0, 1.0)).xyz;
    vec3 _2360 = mix(CB0[14].xyz, mix(_1523, sqrt(clamp(_1523 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1823).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_2360.x, _2360.y, _2360.z, _2535.w);
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
