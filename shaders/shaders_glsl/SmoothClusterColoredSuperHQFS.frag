#version 110
#extension GL_ARB_shader_texture_lod : require

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
uniform vec4 CB3[1];
uniform vec4 CB4[36];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;
varying vec3 VARYING8;
varying vec4 VARYING9;

void main()
{
    vec4 _1382 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 _1392 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 _1397 = VARYING1 * CB3[0].xyxy;
    vec2 _1403 = VARYING3.xy * CB3[0].xy;
    vec2 _1406 = _1382.xy;
    vec2 _1408 = _1397.xy;
    vec4 _1413 = texture2DGradARB(AlbedoMapTexture, _1406, dFdx(_1408), dFdy(_1408));
    vec2 _1416 = _1382.zw;
    vec2 _1418 = _1397.zw;
    vec4 _1423 = texture2DGradARB(AlbedoMapTexture, _1416, dFdx(_1418), dFdy(_1418));
    vec4 _1430 = texture2DGradARB(AlbedoMapTexture, _1392, dFdx(_1403), dFdy(_1403));
    int _1296 = int(VARYING9.x + 0.5);
    int _1302 = int(VARYING9.y + 0.5);
    int _1308 = int(VARYING9.z + 0.5);
    vec2 _1314 = _1413.xz - vec2(0.5);
    vec2 _1320 = _1423.xz - vec2(0.5);
    vec2 _1326 = _1430.xz - vec2(0.5);
    vec3 _2126 = vec3(0.0);
    _2126.x = CB4[_1296 * 1 + 0].x * _1413.y;
    float _1449 = _1314.x;
    float _1453 = _1314.y;
    vec3 _2130 = _2126;
    _2130.y = (CB4[_1296 * 1 + 0].y * _1449) - (CB4[_1296 * 1 + 0].z * _1453);
    vec3 _2134 = _2130;
    _2134.z = (CB4[_1296 * 1 + 0].z * _1449) + (CB4[_1296 * 1 + 0].y * _1453);
    vec3 _2140 = vec3(0.0);
    _2140.x = CB4[_1302 * 1 + 0].x * _1423.y;
    float _1486 = _1320.x;
    float _1490 = _1320.y;
    vec3 _2144 = _2140;
    _2144.y = (CB4[_1302 * 1 + 0].y * _1486) - (CB4[_1302 * 1 + 0].z * _1490);
    vec3 _2148 = _2144;
    _2148.z = (CB4[_1302 * 1 + 0].z * _1486) + (CB4[_1302 * 1 + 0].y * _1490);
    vec3 _2154 = vec3(0.0);
    _2154.x = CB4[_1308 * 1 + 0].x * _1430.y;
    float _1523 = _1326.x;
    float _1527 = _1326.y;
    vec3 _2158 = _2154;
    _2158.y = (CB4[_1308 * 1 + 0].y * _1523) - (CB4[_1308 * 1 + 0].z * _1527);
    vec3 _2162 = _2158;
    _2162.z = (CB4[_1308 * 1 + 0].z * _1523) + (CB4[_1308 * 1 + 0].y * _1527);
    vec4 _1360 = ((vec4(_2134.x, _2134.y, _2134.z, _1413.w) * VARYING0.x) + (vec4(_2148.x, _2148.y, _2148.z, _1423.w) * VARYING0.y)) + (vec4(_2162.x, _2162.y, _2162.z, _1430.w) * VARYING0.z);
    float _1549 = _1360.x;
    float _1556 = _1549 - _1360.z;
    vec3 _1122 = vec4(vec3(_1556, _1549, _1556) + (vec3(_1360.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1575 = vec3(CB0[15].x);
    float _1583 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    float _1690 = -VARYING6.x;
    vec2 _1751 = (((texture2DGradARB(NormalMapTexture, _1406, dFdx(_1408), dFdy(_1408)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, _1416, dFdx(_1418), dFdy(_1418)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, _1392, dFdx(_1403), dFdy(_1403)) * VARYING0.z)).wy * 2.0;
    vec2 _1753 = _1751 - vec2(1.0);
    vec3 _1725 = vec3(dot(VARYING8, VARYING0));
    vec3 _1746 = normalize(((mix(vec3(VARYING6.z, 0.0, _1690), vec3(VARYING6.y, _1690, 0.0), _1725) * _1753.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1725) * _1753.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1751, _1753), 0.0, 1.0))));
    vec4 _1797 = ((texture2DGradARB(SpecularMapTexture, _1406, dFdx(_1408), dFdy(_1408)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, _1416, dFdx(_1418), dFdy(_1418)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, _1392, dFdx(_1403), dFdy(_1403)) * VARYING0.z);
    vec3 _1158 = -CB0[11].xyz;
    float _1159 = dot(_1746, _1158);
    float _1954 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1898 = VARYING4.yzx - (VARYING4.yzx * _1954);
    vec4 _1908 = vec4(clamp(_1954, 0.0, 1.0));
    vec4 _1909 = mix(texture3D(LightMapTexture, _1898), vec4(0.0), _1908);
    vec4 _1914 = mix(texture3D(LightGridSkylightTexture, _1898), vec4(1.0), _1908);
    vec4 _1964 = texture2D(ShadowMapTexture, VARYING5.xy);
    float _1977 = (1.0 - ((step(_1964.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * _1964.y)) * _1914.y;
    vec3 _1239 = (((min(((_1909.xyz * (_1909.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1914.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1159, 0.0, 1.0)) + (CB0[12].xyz * max(-_1159, 0.0))) * _1977)) + vec3((_1797.z * 2.0) * _1583)) * mix(_1122, _1122 * _1122, _1575).xyz) + (CB0[10].xyz * (((((step(0.0, _1159) * _1797.x) * _1583) * CB3[0].z) * _1977) * pow(clamp(dot(_1746, normalize(_1158 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_1797.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _2197 = vec4(_1239.x, _1239.y, _1239.z, vec4(0.0).w);
    _2197.w = 1.0;
    vec3 _2042 = mix(CB0[14].xyz, mix(_2197.xyz, sqrt(clamp(_2197.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1575).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(_2042.x, _2042.y, _2042.z, _2197.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
