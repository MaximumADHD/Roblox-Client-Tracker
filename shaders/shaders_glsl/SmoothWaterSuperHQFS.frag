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

struct Params
{
    vec4 WaveParams;
    vec4 WaterColor;
    vec4 WaterParams;
};

uniform vec4 CB0[32];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube EnvMapTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;
varying vec4 VARYING8;

void main()
{
    float _1221 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1165 = VARYING5.yzx - (VARYING5.yzx * _1221);
    vec4 _1175 = vec4(clamp(_1221, 0.0, 1.0));
    vec4 _1176 = mix(texture3D(LightMapTexture, _1165), vec4(0.0), _1175);
    vec4 _1181 = mix(texture3D(LightGridSkylightTexture, _1165), vec4(1.0), _1175);
    vec3 _1191 = (_1176.xyz * (_1176.w * 120.0)).xyz;
    float _1198 = _1181.x;
    float _1216 = _1181.y;
    vec4 _1251 = vec4(CB3[0].w);
    float _1289 = -VARYING6.x;
    vec2 _1350 = (((mix(texture2D(NormalMap1Texture, VARYING2), texture2D(NormalMap2Texture, VARYING2), _1251) * VARYING0.x) + (mix(texture2D(NormalMap1Texture, VARYING3), texture2D(NormalMap2Texture, VARYING3), _1251) * VARYING0.y)) + (mix(texture2D(NormalMap1Texture, VARYING4), texture2D(NormalMap2Texture, VARYING4), _1251) * VARYING0.z)).wy * 2.0;
    vec2 _1352 = _1350 - vec2(1.0);
    vec3 _1324 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _1345 = normalize(((mix(vec3(VARYING6.z, 0.0, _1289), vec3(VARYING6.y, _1289, 0.0), _1324) * _1352.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1324) * _1352.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1350, _1352), 0.0, 1.0))));
    vec3 _1032 = mix(VARYING6, _1345, vec3(0.25));
    vec3 _1039 = normalize(VARYING7.xyz);
    vec2 _1388 = VARYING8.xy / vec2(VARYING8.w);
    vec2 _1393 = _1388 + (_1345.xz * 0.0500000007450580596923828125);
    vec4 _1802 = texture2D(GBufferColorTexture, _1388);
    _1802.w = texture2D(GBufferDepthTexture, _1388).x * 500.0;
    float _1459 = texture2D(GBufferDepthTexture, _1393).x * 500.0;
    vec4 _1804 = texture2D(GBufferColorTexture, _1393);
    _1804.w = _1459;
    vec4 _1415 = mix(_1802, _1804, vec4(clamp(_1459 - VARYING8.w, 0.0, 1.0)));
    vec3 _1417 = _1415.xyz;
    vec3 _1472 = vec3(CB0[15].x);
    vec3 _1070 = reflect(-_1039, _1032);
    float _1508 = VARYING8.w * 0.20000000298023223876953125;
    vec4 _1517 = vec4(_1070, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float _1622 = _1517.w;
    vec2 _1625 = (_1517.xy * 0.5) + vec2(0.5 * _1622);
    vec4 _1627 = vec4(_1625.x, _1625.y, _1517.z, _1517.w);
    float _1532 = 1.0 + clamp(0.0, VARYING8.w * (-0.20000000298023223876953125), _1508);
    vec4 _1537 = VARYING8 + (_1627 * _1532);
    float _1541 = _1537.w;
    float _1844 = _1532 + clamp((texture2D(GBufferDepthTexture, _1537.xy / vec2(_1541)).x * 500.0) - _1541, VARYING8.w * (-0.20000000298023223876953125), _1508);
    vec4 _1846 = VARYING8 + (_1627 * _1844);
    float _1848 = _1846.w;
    float _1864 = _1844 + clamp((texture2D(GBufferDepthTexture, _1846.xy / vec2(_1848)).x * 500.0) - _1848, VARYING8.w * (-0.20000000298023223876953125), _1508);
    vec4 _1866 = VARYING8 + (_1627 * _1864);
    float _1868 = _1866.w;
    float _1884 = _1864 + clamp((texture2D(GBufferDepthTexture, _1866.xy / vec2(_1868)).x * 500.0) - _1868, VARYING8.w * (-0.20000000298023223876953125), _1508);
    vec4 _1886 = VARYING8 + (_1627 * _1884);
    float _1888 = _1886.w;
    float _1904 = _1884 + clamp((texture2D(GBufferDepthTexture, _1886.xy / vec2(_1888)).x * 500.0) - _1888, VARYING8.w * (-0.20000000298023223876953125), _1508);
    vec4 _1906 = VARYING8 + (_1627 * _1904);
    float _1908 = _1906.w;
    float _1924 = _1904 + clamp((texture2D(GBufferDepthTexture, _1906.xy / vec2(_1908)).x * 500.0) - _1908, VARYING8.w * (-0.20000000298023223876953125), _1508);
    vec4 _1926 = VARYING8 + (_1627 * _1924);
    float _1928 = _1926.w;
    float _1944 = _1924 + clamp((texture2D(GBufferDepthTexture, _1926.xy / vec2(_1928)).x * 500.0) - _1928, VARYING8.w * (-0.20000000298023223876953125), _1508);
    vec4 _1946 = VARYING8 + (_1627 * _1944);
    float _1948 = _1946.w;
    float _1964 = _1944 + clamp((texture2D(GBufferDepthTexture, _1946.xy / vec2(_1948)).x * 500.0) - _1948, VARYING8.w * (-0.20000000298023223876953125), _1508);
    vec4 _1966 = VARYING8 + (_1627 * _1964);
    float _1968 = _1966.w;
    vec4 _1556 = VARYING8 + (_1627 * _1964);
    float _1560 = _1556.w;
    vec2 _1562 = _1556.xy / vec2(_1560);
    vec3 _1603 = textureCube(EnvMapTexture, _1070).xyz;
    vec3 _1610 = texture2D(GBufferColorTexture, _1562).xyz;
    vec3 _1121 = mix(mix(mix(_1417, (_1417 * _1417) * CB0[15].y, _1472).xyz, CB3[1].xyz * (min((_1191 + CB0[8].xyz) + (CB0[9].xyz * _1198), vec3(CB0[17].w)) + (CB0[10].xyz * _1216)), vec3(clamp(clamp(((_1415.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(mix(_1603, (_1603 * _1603) * CB0[15].w, _1472) * _1198, mix(_1610, (_1610 * _1610) * CB0[15].y, _1472), vec3((((float(abs(_1562.x - 0.5) < 0.550000011920928955078125) * float(abs(_1562.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, _1560) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, _1966.xy / vec2(_1968)).x * 500.0) - _1968) < 10.0)) * float(_1622 > 0.0))) + (_1191 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_1032, _1039))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * _1216) * pow(clamp(dot(_1345, normalize((-CB0[11].xyz) + _1039)), 0.0, 1.0), 900.0)));
    vec4 _1822 = vec4(_1121.x, _1121.y, _1121.z, vec4(0.0).w);
    _1822.w = 1.0;
    vec3 _1721 = mix(CB0[14].xyz, mix(_1822.xyz, sqrt(clamp(_1822.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1472).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1721.x, _1721.y, _1721.z, _1822.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
