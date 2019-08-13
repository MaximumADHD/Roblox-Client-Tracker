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
    float _1206 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1150 = VARYING5.yzx - (VARYING5.yzx * _1206);
    vec4 _1160 = vec4(clamp(_1206, 0.0, 1.0));
    vec4 _1161 = mix(texture3D(LightMapTexture, _1150), vec4(0.0), _1160);
    vec4 _1166 = mix(texture3D(LightGridSkylightTexture, _1150), vec4(1.0), _1160);
    float _1201 = _1166.y;
    vec4 _1236 = vec4(CB3[0].w);
    float _1274 = -VARYING6.x;
    vec2 _1335 = (((mix(texture2D(NormalMap1Texture, VARYING2), texture2D(NormalMap2Texture, VARYING2), _1236) * VARYING0.x) + (mix(texture2D(NormalMap1Texture, VARYING3), texture2D(NormalMap2Texture, VARYING3), _1236) * VARYING0.y)) + (mix(texture2D(NormalMap1Texture, VARYING4), texture2D(NormalMap2Texture, VARYING4), _1236) * VARYING0.z)).wy * 2.0;
    vec2 _1337 = _1335 - vec2(1.0);
    vec3 _1309 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _1330 = normalize(((mix(vec3(VARYING6.z, 0.0, _1274), vec3(VARYING6.y, _1274, 0.0), _1309) * _1337.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1309) * _1337.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1335, _1337), 0.0, 1.0))));
    vec3 _1024 = mix(VARYING6, _1330, vec3(0.25));
    vec3 _1031 = normalize(VARYING7.xyz);
    vec2 _1373 = VARYING8.xy / vec2(VARYING8.w);
    vec2 _1378 = _1373 + (_1330.xz * 0.0500000007450580596923828125);
    vec4 _1785 = texture2D(GBufferColorTexture, _1373);
    _1785.w = texture2D(GBufferDepthTexture, _1373).x * 500.0;
    float _1444 = texture2D(GBufferDepthTexture, _1378).x * 500.0;
    vec4 _1787 = texture2D(GBufferColorTexture, _1378);
    _1787.w = _1444;
    vec4 _1400 = mix(_1785, _1787, vec4(clamp(_1444 - VARYING8.w, 0.0, 1.0)));
    vec3 _1402 = _1400.xyz;
    vec3 _1457 = vec3(CB0[15].x);
    vec3 _1050 = reflect(-_1031, _1024);
    float _1493 = VARYING8.w * 0.20000000298023223876953125;
    vec4 _1502 = vec4(_1050, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float _1607 = _1502.w;
    vec2 _1610 = (_1502.xy * 0.5) + vec2(0.5 * _1607);
    vec4 _1612 = vec4(_1610.x, _1610.y, _1502.z, _1502.w);
    float _1517 = 1.0 + clamp(0.0, VARYING8.w * (-0.20000000298023223876953125), _1493);
    vec4 _1522 = VARYING8 + (_1612 * _1517);
    float _1526 = _1522.w;
    float _1827 = _1517 + clamp((texture2D(GBufferDepthTexture, _1522.xy / vec2(_1526)).x * 500.0) - _1526, VARYING8.w * (-0.20000000298023223876953125), _1493);
    vec4 _1829 = VARYING8 + (_1612 * _1827);
    float _1831 = _1829.w;
    float _1847 = _1827 + clamp((texture2D(GBufferDepthTexture, _1829.xy / vec2(_1831)).x * 500.0) - _1831, VARYING8.w * (-0.20000000298023223876953125), _1493);
    vec4 _1849 = VARYING8 + (_1612 * _1847);
    float _1851 = _1849.w;
    float _1867 = _1847 + clamp((texture2D(GBufferDepthTexture, _1849.xy / vec2(_1851)).x * 500.0) - _1851, VARYING8.w * (-0.20000000298023223876953125), _1493);
    vec4 _1869 = VARYING8 + (_1612 * _1867);
    float _1871 = _1869.w;
    float _1887 = _1867 + clamp((texture2D(GBufferDepthTexture, _1869.xy / vec2(_1871)).x * 500.0) - _1871, VARYING8.w * (-0.20000000298023223876953125), _1493);
    vec4 _1889 = VARYING8 + (_1612 * _1887);
    float _1891 = _1889.w;
    float _1907 = _1887 + clamp((texture2D(GBufferDepthTexture, _1889.xy / vec2(_1891)).x * 500.0) - _1891, VARYING8.w * (-0.20000000298023223876953125), _1493);
    vec4 _1909 = VARYING8 + (_1612 * _1907);
    float _1911 = _1909.w;
    float _1927 = _1907 + clamp((texture2D(GBufferDepthTexture, _1909.xy / vec2(_1911)).x * 500.0) - _1911, VARYING8.w * (-0.20000000298023223876953125), _1493);
    vec4 _1929 = VARYING8 + (_1612 * _1927);
    float _1931 = _1929.w;
    float _1947 = _1927 + clamp((texture2D(GBufferDepthTexture, _1929.xy / vec2(_1931)).x * 500.0) - _1931, VARYING8.w * (-0.20000000298023223876953125), _1493);
    vec4 _1949 = VARYING8 + (_1612 * _1947);
    float _1951 = _1949.w;
    vec4 _1541 = VARYING8 + (_1612 * _1947);
    float _1545 = _1541.w;
    vec2 _1547 = _1541.xy / vec2(_1545);
    vec3 _1588 = textureCube(EnvMapTexture, _1050).xyz;
    vec3 _1595 = texture2D(GBufferColorTexture, _1547).xyz;
    vec3 _1106 = (mix(mix(mix(_1402, (_1402 * _1402) * CB0[15].y, _1457).xyz, CB3[1].xyz, vec3(clamp(clamp(((_1400.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(mix(_1588, (_1588 * _1588) * CB0[15].w, _1457) * 1.0, mix(_1595, (_1595 * _1595) * CB0[15].y, _1457), vec3((((float(abs(_1547.x - 0.5) < 0.550000011920928955078125) * float(abs(_1547.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, _1545) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, _1949.xy / vec2(_1951)).x * 500.0) - _1951) < 10.0)) * float(_1607 > 0.0))), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_1024, _1031))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) * (min(((_1161.xyz * (_1161.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1166.x), vec3(CB0[17].w)) + (CB0[10].xyz * _1201))) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * _1201) * pow(clamp(dot(_1330, normalize((-CB0[11].xyz) + _1031)), 0.0, 1.0), 900.0)));
    vec4 _1805 = vec4(_1106.x, _1106.y, _1106.z, vec4(0.0).w);
    _1805.w = 1.0;
    vec3 _1706 = mix(CB0[14].xyz, mix(_1805.xyz, sqrt(clamp(_1805.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1457).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1706.x, _1706.y, _1706.z, _1805.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
