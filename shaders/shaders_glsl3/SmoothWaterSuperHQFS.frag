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

in vec4 VARYING0;
in vec3 VARYING1;
in vec2 VARYING2;
in vec2 VARYING3;
in vec2 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    float _1233 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1177 = VARYING5.yzx - (VARYING5.yzx * _1233);
    vec4 _1187 = vec4(clamp(_1233, 0.0, 1.0));
    vec4 _1188 = mix(texture(LightMapTexture, _1177), vec4(0.0), _1187);
    vec4 _1193 = mix(texture(LightGridSkylightTexture, _1177), vec4(1.0), _1187);
    vec3 _1203 = (_1188.xyz * (_1188.w * 120.0)).xyz;
    float _1210 = _1193.x;
    float _1228 = _1193.y;
    vec4 _1263 = vec4(CB3[0].w);
    float _1301 = -VARYING6.x;
    vec2 _1362 = (((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), _1263) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), _1263) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), _1263) * VARYING0.z)).wy * 2.0;
    vec2 _1364 = _1362 - vec2(1.0);
    vec3 _1336 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _1357 = normalize(((mix(vec3(VARYING6.z, 0.0, _1301), vec3(VARYING6.y, _1301, 0.0), _1336) * _1364.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1336) * _1364.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1362, _1364), 0.0, 1.0))));
    vec3 _1044 = mix(VARYING6, _1357, vec3(0.25));
    vec3 _1051 = normalize(VARYING7.xyz);
    vec2 _1400 = VARYING8.xy / vec2(VARYING8.w);
    vec2 _1405 = _1400 + (_1357.xz * 0.0500000007450580596923828125);
    vec4 _1814 = texture(GBufferColorTexture, _1400);
    _1814.w = texture(GBufferDepthTexture, _1400).x * 500.0;
    float _1471 = texture(GBufferDepthTexture, _1405).x * 500.0;
    vec4 _1816 = texture(GBufferColorTexture, _1405);
    _1816.w = _1471;
    vec4 _1427 = mix(_1814, _1816, vec4(clamp(_1471 - VARYING8.w, 0.0, 1.0)));
    vec3 _1429 = _1427.xyz;
    vec3 _1484 = vec3(CB0[15].x);
    vec3 _1082 = reflect(-_1051, _1044);
    float _1520 = VARYING8.w * 0.20000000298023223876953125;
    vec4 _1529 = vec4(_1082, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float _1634 = _1529.w;
    vec2 _1637 = (_1529.xy * 0.5) + vec2(0.5 * _1634);
    vec4 _1639 = vec4(_1637.x, _1637.y, _1529.z, _1529.w);
    float _1544 = 1.0 + clamp(0.0, VARYING8.w * (-0.20000000298023223876953125), _1520);
    vec4 _1549 = VARYING8 + (_1639 * _1544);
    float _1553 = _1549.w;
    float _1856 = _1544 + clamp((texture(GBufferDepthTexture, _1549.xy / vec2(_1553)).x * 500.0) - _1553, VARYING8.w * (-0.20000000298023223876953125), _1520);
    vec4 _1858 = VARYING8 + (_1639 * _1856);
    float _1860 = _1858.w;
    float _1876 = _1856 + clamp((texture(GBufferDepthTexture, _1858.xy / vec2(_1860)).x * 500.0) - _1860, VARYING8.w * (-0.20000000298023223876953125), _1520);
    vec4 _1878 = VARYING8 + (_1639 * _1876);
    float _1880 = _1878.w;
    float _1896 = _1876 + clamp((texture(GBufferDepthTexture, _1878.xy / vec2(_1880)).x * 500.0) - _1880, VARYING8.w * (-0.20000000298023223876953125), _1520);
    vec4 _1898 = VARYING8 + (_1639 * _1896);
    float _1900 = _1898.w;
    float _1916 = _1896 + clamp((texture(GBufferDepthTexture, _1898.xy / vec2(_1900)).x * 500.0) - _1900, VARYING8.w * (-0.20000000298023223876953125), _1520);
    vec4 _1918 = VARYING8 + (_1639 * _1916);
    float _1920 = _1918.w;
    float _1936 = _1916 + clamp((texture(GBufferDepthTexture, _1918.xy / vec2(_1920)).x * 500.0) - _1920, VARYING8.w * (-0.20000000298023223876953125), _1520);
    vec4 _1938 = VARYING8 + (_1639 * _1936);
    float _1940 = _1938.w;
    float _1956 = _1936 + clamp((texture(GBufferDepthTexture, _1938.xy / vec2(_1940)).x * 500.0) - _1940, VARYING8.w * (-0.20000000298023223876953125), _1520);
    vec4 _1958 = VARYING8 + (_1639 * _1956);
    float _1960 = _1958.w;
    float _1976 = _1956 + clamp((texture(GBufferDepthTexture, _1958.xy / vec2(_1960)).x * 500.0) - _1960, VARYING8.w * (-0.20000000298023223876953125), _1520);
    vec4 _1978 = VARYING8 + (_1639 * _1976);
    float _1980 = _1978.w;
    vec4 _1568 = VARYING8 + (_1639 * _1976);
    float _1572 = _1568.w;
    vec2 _1574 = _1568.xy / vec2(_1572);
    vec3 _1615 = texture(EnvMapTexture, _1082).xyz;
    vec3 _1622 = texture(GBufferColorTexture, _1574).xyz;
    vec3 _1133 = mix(mix(mix(_1429, (_1429 * _1429) * CB0[15].y, _1484).xyz, CB3[1].xyz * (min((_1203 + CB0[8].xyz) + (CB0[9].xyz * _1210), vec3(CB0[17].w)) + (CB0[10].xyz * _1228)), vec3(clamp(clamp(((_1427.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(mix(_1615, (_1615 * _1615) * CB0[15].w, _1484) * _1210, mix(_1622, (_1622 * _1622) * CB0[15].y, _1484), vec3((((float(abs(_1574.x - 0.5) < 0.550000011920928955078125) * float(abs(_1574.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, _1572) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, _1978.xy / vec2(_1980)).x * 500.0) - _1980) < 10.0)) * float(_1634 > 0.0))) + (_1203 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_1044, _1051))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * _1228) * pow(clamp(dot(_1357, normalize((-CB0[11].xyz) + _1051)), 0.0, 1.0), 900.0)));
    vec4 _1834 = vec4(_1133.x, _1133.y, _1133.z, vec4(0.0).w);
    _1834.w = 1.0;
    vec3 _1733 = mix(CB0[14].xyz, mix(_1834.xyz, sqrt(clamp(_1834.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1484).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_1733.x, _1733.y, _1733.z, _1834.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
