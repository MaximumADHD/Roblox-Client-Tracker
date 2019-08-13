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

uniform vec4 CB0[32];
uniform vec4 CB8[24];
uniform vec4 CB4[36];
uniform vec4 CB3[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
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
    vec3 _1659 = vec3(VARYING1.xy, VARYING2.x);
    vec4 _1660 = texture(AlbedoMapTexture, _1659);
    vec3 _1668 = vec3(VARYING1.zw, VARYING2.z);
    vec4 _1669 = texture(AlbedoMapTexture, _1668);
    vec4 _1673 = texture(AlbedoMapTexture, VARYING3.xyz);
    int _1577 = int(VARYING9.x + 0.5);
    int _1583 = int(VARYING9.y + 0.5);
    int _1589 = int(VARYING9.z + 0.5);
    vec2 _1595 = _1660.xz - vec2(0.5);
    vec2 _1601 = _1669.xz - vec2(0.5);
    vec2 _1607 = _1673.xz - vec2(0.5);
    vec3 _2586 = vec3(0.0);
    _2586.x = CB4[_1577 * 1 + 0].x * _1660.y;
    float _1692 = _1595.x;
    float _1696 = _1595.y;
    vec3 _2590 = _2586;
    _2590.y = (CB4[_1577 * 1 + 0].y * _1692) - (CB4[_1577 * 1 + 0].z * _1696);
    vec3 _2594 = _2590;
    _2594.z = (CB4[_1577 * 1 + 0].z * _1692) + (CB4[_1577 * 1 + 0].y * _1696);
    vec3 _2600 = vec3(0.0);
    _2600.x = CB4[_1583 * 1 + 0].x * _1669.y;
    float _1729 = _1601.x;
    float _1733 = _1601.y;
    vec3 _2604 = _2600;
    _2604.y = (CB4[_1583 * 1 + 0].y * _1729) - (CB4[_1583 * 1 + 0].z * _1733);
    vec3 _2608 = _2604;
    _2608.z = (CB4[_1583 * 1 + 0].z * _1729) + (CB4[_1583 * 1 + 0].y * _1733);
    vec3 _2614 = vec3(0.0);
    _2614.x = CB4[_1589 * 1 + 0].x * _1673.y;
    float _1766 = _1607.x;
    float _1770 = _1607.y;
    vec3 _2618 = _2614;
    _2618.y = (CB4[_1589 * 1 + 0].y * _1766) - (CB4[_1589 * 1 + 0].z * _1770);
    vec3 _2622 = _2618;
    _2622.z = (CB4[_1589 * 1 + 0].z * _1766) + (CB4[_1589 * 1 + 0].y * _1770);
    vec4 _1641 = ((vec4(_2594.x, _2594.y, _2594.z, _1660.w) * VARYING0.x) + (vec4(_2608.x, _2608.y, _2608.z, _1669.w) * VARYING0.y)) + (vec4(_2622.x, _2622.y, _2622.z, _1673.w) * VARYING0.z);
    float _1792 = _1641.x;
    float _1799 = _1792 - _1641.z;
    vec3 _1394 = vec4(vec3(_1799, _1792, _1799) + (vec3(_1641.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1818 = vec3(CB0[15].x);
    float _1826 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    float _1895 = -VARYING6.x;
    vec2 _1956 = (((texture(NormalMapTexture, _1659) * VARYING0.x) + (texture(NormalMapTexture, _1668) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 _1958 = _1956 - vec2(1.0);
    vec3 _1930 = vec3(dot(VARYING8, VARYING0));
    vec3 _1951 = normalize(((mix(vec3(VARYING6.z, 0.0, _1895), vec3(VARYING6.y, _1895, 0.0), _1930) * _1958.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1930) * _1958.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1956, _1958), 0.0, 1.0))));
    vec4 _2002 = ((texture(SpecularMapTexture, _1659) * VARYING0.x) + (texture(SpecularMapTexture, _1668) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 _1430 = -CB0[11].xyz;
    float _1431 = dot(_1951, _1430);
    float _2108 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _2052 = VARYING4.yzx - (VARYING4.yzx * _2108);
    vec4 _2062 = vec4(clamp(_2108, 0.0, 1.0));
    vec4 _2063 = mix(texture(LightMapTexture, _2052), vec4(0.0), _2062);
    vec4 _2068 = mix(texture(LightGridSkylightTexture, _2052), vec4(1.0), _2062);
    float _2103 = _2068.y;
    vec3 _2185 = VARYING5 - CB0[26].xyz;
    vec3 _2194 = VARYING5 - CB0[27].xyz;
    vec3 _2203 = VARYING5 - CB0[28].xyz;
    vec4 _2247 = vec4(VARYING5, 1.0) * mat4(CB8[((dot(_2185, _2185) < CB0[26].w) ? 0 : ((dot(_2194, _2194) < CB0[27].w) ? 1 : ((dot(_2203, _2203) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_2185, _2185) < CB0[26].w) ? 0 : ((dot(_2194, _2194) < CB0[27].w) ? 1 : ((dot(_2203, _2203) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_2185, _2185) < CB0[26].w) ? 0 : ((dot(_2194, _2194) < CB0[27].w) ? 1 : ((dot(_2203, _2203) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_2185, _2185) < CB0[26].w) ? 0 : ((dot(_2194, _2194) < CB0[27].w) ? 1 : ((dot(_2203, _2203) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _2298 = textureLod(ShadowAtlasTexture, _2247.xy, 0.0);
    vec2 _2670 = vec2(0.0);
    _2670.x = CB0[30].z;
    vec2 _2672 = _2670;
    _2672.y = CB0[30].w;
    float _2345 = (2.0 * _2247.z) - 1.0;
    float _2350 = exp(CB0[30].z * _2345);
    float _2357 = -exp((-CB0[30].w) * _2345);
    vec2 _2314 = (_2672 * CB0[31].y) * vec2(_2350, _2357);
    vec2 _2317 = _2314 * _2314;
    float _2370 = _2298.x;
    float _2377 = max(_2298.y - (_2370 * _2370), _2317.x);
    float _2381 = _2350 - _2370;
    float _2423 = _2298.z;
    float _2430 = max(_2298.w - (_2423 * _2423), _2317.y);
    float _2434 = _2357 - _2423;
    float _2230 = (_1431 > 0.0) ? mix(_2103, mix(min((_2350 <= _2370) ? 1.0 : clamp(((_2377 / (_2377 + (_2381 * _2381))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_2357 <= _2423) ? 1.0 : clamp(((_2430 / (_2430 + (_2434 * _2434))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _2103, clamp((length(VARYING5 - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _1520 = (((min(((_2063.xyz * (_2063.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _2068.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1431, 0.0, 1.0)) + (CB0[12].xyz * max(-_1431, 0.0))) * _2230)) + vec3((_2002.z * 2.0) * _1826)) * mix(_1394, _1394 * _1394, _1818).xyz) + (CB0[10].xyz * (((((step(0.0, _1431) * _2002.x) * _1826) * CB3[0].z) * _2230) * pow(clamp(dot(_1951, normalize(_1430 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_2002.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _2693 = vec4(_1520.x, _1520.y, _1520.z, vec4(0.0).w);
    _2693.w = 1.0;
    vec3 _2513 = mix(CB0[14].xyz, mix(_2693.xyz, sqrt(clamp(_2693.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1818).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_2513.x, _2513.y, _2513.z, _2693.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
