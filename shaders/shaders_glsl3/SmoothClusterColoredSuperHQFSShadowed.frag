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

uniform vec4 CB0[32];
uniform vec4 CB4[36];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray NormalMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec3 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
in vec3 VARYING8;
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 _1355 = vec3(VARYING1.xy, VARYING2.x);
    vec4 _1356 = texture(AlbedoMapTexture, _1355);
    vec3 _1364 = vec3(VARYING1.zw, VARYING2.z);
    vec4 _1365 = texture(AlbedoMapTexture, _1364);
    vec4 _1369 = texture(AlbedoMapTexture, VARYING3.xyz);
    int _1273 = int(VARYING9.x + 0.5);
    int _1279 = int(VARYING9.y + 0.5);
    int _1285 = int(VARYING9.z + 0.5);
    vec2 _1291 = _1356.xz - vec2(0.5);
    vec2 _1297 = _1365.xz - vec2(0.5);
    vec2 _1303 = _1369.xz - vec2(0.5);
    vec3 _1991 = vec3(0.0);
    _1991.x = CB4[_1273 * 1 + 0].x * _1356.y;
    float _1388 = _1291.x;
    float _1392 = _1291.y;
    vec3 _1995 = _1991;
    _1995.y = (CB4[_1273 * 1 + 0].y * _1388) - (CB4[_1273 * 1 + 0].z * _1392);
    vec3 _1999 = _1995;
    _1999.z = (CB4[_1273 * 1 + 0].z * _1388) + (CB4[_1273 * 1 + 0].y * _1392);
    vec3 _2005 = vec3(0.0);
    _2005.x = CB4[_1279 * 1 + 0].x * _1365.y;
    float _1425 = _1297.x;
    float _1429 = _1297.y;
    vec3 _2009 = _2005;
    _2009.y = (CB4[_1279 * 1 + 0].y * _1425) - (CB4[_1279 * 1 + 0].z * _1429);
    vec3 _2013 = _2009;
    _2013.z = (CB4[_1279 * 1 + 0].z * _1425) + (CB4[_1279 * 1 + 0].y * _1429);
    vec3 _2019 = vec3(0.0);
    _2019.x = CB4[_1285 * 1 + 0].x * _1369.y;
    float _1462 = _1303.x;
    float _1466 = _1303.y;
    vec3 _2023 = _2019;
    _2023.y = (CB4[_1285 * 1 + 0].y * _1462) - (CB4[_1285 * 1 + 0].z * _1466);
    vec3 _2027 = _2023;
    _2027.z = (CB4[_1285 * 1 + 0].z * _1462) + (CB4[_1285 * 1 + 0].y * _1466);
    vec4 _1337 = ((vec4(_1999.x, _1999.y, _1999.z, _1356.w) * VARYING0.x) + (vec4(_2013.x, _2013.y, _2013.z, _1365.w) * VARYING0.y)) + (vec4(_2027.x, _2027.y, _2027.z, _1369.w) * VARYING0.z);
    float _1488 = _1337.x;
    float _1495 = _1488 - _1337.z;
    vec3 _1099 = vec4(vec3(_1495, _1488, _1495) + (vec3(_1337.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1514 = vec3(CB0[15].x);
    float _1522 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    float _1591 = -VARYING6.x;
    vec2 _1652 = (((texture(NormalMapTexture, _1355) * VARYING0.x) + (texture(NormalMapTexture, _1364) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 _1654 = _1652 - vec2(1.0);
    vec3 _1626 = vec3(dot(VARYING8, VARYING0));
    vec3 _1647 = normalize(((mix(vec3(VARYING6.z, 0.0, _1591), vec3(VARYING6.y, _1591, 0.0), _1626) * _1654.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1626) * _1654.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1652, _1654), 0.0, 1.0))));
    vec4 _1698 = ((texture(SpecularMapTexture, _1355) * VARYING0.x) + (texture(SpecularMapTexture, _1364) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 _1135 = -CB0[11].xyz;
    float _1136 = dot(_1647, _1135);
    float _1817 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1761 = VARYING4.yzx - (VARYING4.yzx * _1817);
    vec4 _1771 = vec4(clamp(_1817, 0.0, 1.0));
    vec4 _1772 = mix(texture(LightMapTexture, _1761), vec4(0.0), _1771);
    vec4 _1777 = mix(texture(LightGridSkylightTexture, _1761), vec4(1.0), _1771);
    vec4 _1827 = texture(ShadowMapTexture, VARYING5.xy);
    float _1840 = (1.0 - ((step(_1827.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * _1827.y)) * _1777.y;
    vec3 _1216 = (((min(((_1772.xyz * (_1772.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1777.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1136, 0.0, 1.0)) + (CB0[12].xyz * max(-_1136, 0.0))) * _1840)) + vec3((_1698.z * 2.0) * _1522)) * mix(_1099, _1099 * _1099, _1514).xyz) + (CB0[10].xyz * (((((step(0.0, _1136) * _1698.x) * _1522) * CB3[0].z) * _1840) * pow(clamp(dot(_1647, normalize(_1135 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_1698.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _2066 = vec4(_1216.x, _1216.y, _1216.z, vec4(0.0).w);
    _2066.w = 1.0;
    vec3 _1905 = mix(CB0[14].xyz, mix(_2066.xyz, sqrt(clamp(_2066.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1514).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_1905.x, _1905.y, _1905.z, _2066.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
