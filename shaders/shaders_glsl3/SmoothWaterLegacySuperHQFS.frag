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
    float _1218 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1162 = VARYING5.yzx - (VARYING5.yzx * _1218);
    vec4 _1172 = vec4(clamp(_1218, 0.0, 1.0));
    vec4 _1173 = mix(texture(LightMapTexture, _1162), vec4(0.0), _1172);
    vec4 _1178 = mix(texture(LightGridSkylightTexture, _1162), vec4(1.0), _1172);
    float _1213 = _1178.y;
    vec4 _1248 = vec4(CB3[0].w);
    float _1286 = -VARYING6.x;
    vec2 _1347 = (((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), _1248) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), _1248) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), _1248) * VARYING0.z)).wy * 2.0;
    vec2 _1349 = _1347 - vec2(1.0);
    vec3 _1321 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _1342 = normalize(((mix(vec3(VARYING6.z, 0.0, _1286), vec3(VARYING6.y, _1286, 0.0), _1321) * _1349.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1321) * _1349.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1347, _1349), 0.0, 1.0))));
    vec3 _1036 = mix(VARYING6, _1342, vec3(0.25));
    vec3 _1043 = normalize(VARYING7.xyz);
    vec2 _1385 = VARYING8.xy / vec2(VARYING8.w);
    vec2 _1390 = _1385 + (_1342.xz * 0.0500000007450580596923828125);
    vec4 _1797 = texture(GBufferColorTexture, _1385);
    _1797.w = texture(GBufferDepthTexture, _1385).x * 500.0;
    float _1456 = texture(GBufferDepthTexture, _1390).x * 500.0;
    vec4 _1799 = texture(GBufferColorTexture, _1390);
    _1799.w = _1456;
    vec4 _1412 = mix(_1797, _1799, vec4(clamp(_1456 - VARYING8.w, 0.0, 1.0)));
    vec3 _1414 = _1412.xyz;
    vec3 _1469 = vec3(CB0[15].x);
    vec3 _1062 = reflect(-_1043, _1036);
    float _1505 = VARYING8.w * 0.20000000298023223876953125;
    vec4 _1514 = vec4(_1062, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float _1619 = _1514.w;
    vec2 _1622 = (_1514.xy * 0.5) + vec2(0.5 * _1619);
    vec4 _1624 = vec4(_1622.x, _1622.y, _1514.z, _1514.w);
    float _1529 = 1.0 + clamp(0.0, VARYING8.w * (-0.20000000298023223876953125), _1505);
    vec4 _1534 = VARYING8 + (_1624 * _1529);
    float _1538 = _1534.w;
    float _1839 = _1529 + clamp((texture(GBufferDepthTexture, _1534.xy / vec2(_1538)).x * 500.0) - _1538, VARYING8.w * (-0.20000000298023223876953125), _1505);
    vec4 _1841 = VARYING8 + (_1624 * _1839);
    float _1843 = _1841.w;
    float _1859 = _1839 + clamp((texture(GBufferDepthTexture, _1841.xy / vec2(_1843)).x * 500.0) - _1843, VARYING8.w * (-0.20000000298023223876953125), _1505);
    vec4 _1861 = VARYING8 + (_1624 * _1859);
    float _1863 = _1861.w;
    float _1879 = _1859 + clamp((texture(GBufferDepthTexture, _1861.xy / vec2(_1863)).x * 500.0) - _1863, VARYING8.w * (-0.20000000298023223876953125), _1505);
    vec4 _1881 = VARYING8 + (_1624 * _1879);
    float _1883 = _1881.w;
    float _1899 = _1879 + clamp((texture(GBufferDepthTexture, _1881.xy / vec2(_1883)).x * 500.0) - _1883, VARYING8.w * (-0.20000000298023223876953125), _1505);
    vec4 _1901 = VARYING8 + (_1624 * _1899);
    float _1903 = _1901.w;
    float _1919 = _1899 + clamp((texture(GBufferDepthTexture, _1901.xy / vec2(_1903)).x * 500.0) - _1903, VARYING8.w * (-0.20000000298023223876953125), _1505);
    vec4 _1921 = VARYING8 + (_1624 * _1919);
    float _1923 = _1921.w;
    float _1939 = _1919 + clamp((texture(GBufferDepthTexture, _1921.xy / vec2(_1923)).x * 500.0) - _1923, VARYING8.w * (-0.20000000298023223876953125), _1505);
    vec4 _1941 = VARYING8 + (_1624 * _1939);
    float _1943 = _1941.w;
    float _1959 = _1939 + clamp((texture(GBufferDepthTexture, _1941.xy / vec2(_1943)).x * 500.0) - _1943, VARYING8.w * (-0.20000000298023223876953125), _1505);
    vec4 _1961 = VARYING8 + (_1624 * _1959);
    float _1963 = _1961.w;
    vec4 _1553 = VARYING8 + (_1624 * _1959);
    float _1557 = _1553.w;
    vec2 _1559 = _1553.xy / vec2(_1557);
    vec3 _1600 = texture(EnvMapTexture, _1062).xyz;
    vec3 _1607 = texture(GBufferColorTexture, _1559).xyz;
    vec3 _1118 = (mix(mix(mix(_1414, (_1414 * _1414) * CB0[15].y, _1469).xyz, CB3[1].xyz, vec3(clamp(clamp(((_1412.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(mix(_1600, (_1600 * _1600) * CB0[15].w, _1469) * 1.0, mix(_1607, (_1607 * _1607) * CB0[15].y, _1469), vec3((((float(abs(_1559.x - 0.5) < 0.550000011920928955078125) * float(abs(_1559.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, _1557) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, _1961.xy / vec2(_1963)).x * 500.0) - _1963) < 10.0)) * float(_1619 > 0.0))), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_1036, _1043))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) * (min(((_1173.xyz * (_1173.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1178.x), vec3(CB0[17].w)) + (CB0[10].xyz * _1213))) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * _1213) * pow(clamp(dot(_1342, normalize((-CB0[11].xyz) + _1043)), 0.0, 1.0), 900.0)));
    vec4 _1817 = vec4(_1118.x, _1118.y, _1118.z, vec4(0.0).w);
    _1817.w = 1.0;
    vec3 _1718 = mix(CB0[14].xyz, mix(_1817.xyz, sqrt(clamp(_1817.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1469).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_1718.x, _1718.y, _1718.z, _1817.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
