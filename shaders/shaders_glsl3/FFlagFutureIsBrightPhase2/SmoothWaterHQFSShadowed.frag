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

struct Params
{
    vec4 WaveParams;
    vec4 WaterColor;
    vec4 WaterParams;
};

uniform vec4 CB0[32];
uniform vec4 CB8[24];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform samplerCube EnvMapTexture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec2 VARYING2;
in vec2 VARYING3;
in vec2 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 _1097 = CB0[7].xyz - VARYING7.xyz;
    vec3 _1102 = -CB0[11].xyz;
    float _1322 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1266 = VARYING5.yzx - (VARYING5.yzx * _1322);
    vec4 _1276 = vec4(clamp(_1322, 0.0, 1.0));
    vec4 _1277 = mix(texture(LightMapTexture, _1266), vec4(0.0), _1276);
    vec4 _1282 = mix(texture(LightGridSkylightTexture, _1266), vec4(1.0), _1276);
    vec3 _1292 = (_1277.xyz * (_1277.w * 120.0)).xyz;
    float _1299 = _1282.x;
    float _1317 = _1282.y;
    vec3 _1399 = _1097 - CB0[26].xyz;
    vec3 _1408 = _1097 - CB0[27].xyz;
    vec3 _1417 = _1097 - CB0[28].xyz;
    vec4 _1461 = vec4(_1097, 1.0) * mat4(CB8[((dot(_1399, _1399) < CB0[26].w) ? 0 : ((dot(_1408, _1408) < CB0[27].w) ? 1 : ((dot(_1417, _1417) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1399, _1399) < CB0[26].w) ? 0 : ((dot(_1408, _1408) < CB0[27].w) ? 1 : ((dot(_1417, _1417) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1399, _1399) < CB0[26].w) ? 0 : ((dot(_1408, _1408) < CB0[27].w) ? 1 : ((dot(_1417, _1417) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1399, _1399) < CB0[26].w) ? 0 : ((dot(_1408, _1408) < CB0[27].w) ? 1 : ((dot(_1417, _1417) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _1512 = textureLod(ShadowAtlasTexture, _1461.xy, 0.0);
    vec2 _1978 = vec2(0.0);
    _1978.x = CB0[30].z;
    vec2 _1980 = _1978;
    _1980.y = CB0[30].w;
    float _1559 = (2.0 * _1461.z) - 1.0;
    float _1564 = exp(CB0[30].z * _1559);
    float _1571 = -exp((-CB0[30].w) * _1559);
    vec2 _1528 = (_1980 * CB0[31].y) * vec2(_1564, _1571);
    vec2 _1531 = _1528 * _1528;
    float _1584 = _1512.x;
    float _1591 = max(_1512.y - (_1584 * _1584), _1531.x);
    float _1595 = _1564 - _1584;
    float _1637 = _1512.z;
    float _1644 = max(_1512.w - (_1637 * _1637), _1531.y);
    float _1648 = _1571 - _1637;
    float _1444 = (dot(VARYING6, _1102) > 0.0) ? mix(_1317, mix(min((_1564 <= _1584) ? 1.0 : clamp(((_1591 / (_1591 + (_1595 * _1595))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_1571 <= _1637) ? 1.0 : clamp(((_1644 / (_1644 + (_1648 * _1648))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1317, clamp((length(_1097 - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec4 _1710 = vec4(CB3[0].w);
    float _1748 = -VARYING6.x;
    vec2 _1809 = (((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), _1710) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), _1710) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), _1710) * VARYING0.z)).wy * 2.0;
    vec2 _1811 = _1809 - vec2(1.0);
    vec3 _1783 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _1804 = normalize(((mix(vec3(VARYING6.z, 0.0, _1748), vec3(VARYING6.y, _1748, 0.0), _1783) * _1811.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1783) * _1811.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1809, _1811), 0.0, 1.0))));
    vec3 _1136 = mix(VARYING6, _1804, vec3(0.25));
    vec3 _1143 = normalize(VARYING7.xyz);
    vec3 _1173 = texture(EnvMapTexture, reflect(-_1143, _1136)).xyz;
    vec3 _1842 = vec3(CB0[15].x);
    vec3 _1222 = mix(CB3[1].xyz * (min((_1292 + CB0[8].xyz) + (CB0[9].xyz * _1299), vec3(CB0[17].w)) + (CB0[10].xyz * _1444)), (mix(_1173, (_1173 * _1173) * CB0[15].w, _1842) * _1299) + (_1292 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_1136, _1143))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * _1444) * pow(clamp(dot(_1804, normalize(_1102 + _1143)), 0.0, 1.0), 900.0)));
    vec4 _2012 = vec4(_1222.x, _1222.y, _1222.z, vec4(0.0).w);
    _2012.w = 1.0;
    vec3 _1896 = mix(CB0[14].xyz, mix(_2012.xyz, sqrt(clamp(_2012.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1842).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_1896.x, _1896.y, _1896.z, _2012.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$EnvMapTexture=s3
