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
    vec3 _1396 = CB0[7].xyz - VARYING7.xyz;
    vec3 _1401 = -CB0[11].xyz;
    float _1624 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1568 = VARYING5.yzx - (VARYING5.yzx * _1624);
    vec4 _1578 = vec4(clamp(_1624, 0.0, 1.0));
    vec4 _1579 = mix(texture(LightMapTexture, _1568), vec4(0.0), _1578);
    vec4 _1584 = mix(texture(LightGridSkylightTexture, _1568), vec4(1.0), _1578);
    vec3 _1594 = (_1579.xyz * (_1579.w * 120.0)).xyz;
    float _1601 = _1584.x;
    float _1619 = _1584.y;
    vec3 _1701 = _1396 - CB0[26].xyz;
    vec3 _1710 = _1396 - CB0[27].xyz;
    vec3 _1719 = _1396 - CB0[28].xyz;
    vec4 _1763 = vec4(_1396, 1.0) * mat4(CB8[((dot(_1701, _1701) < CB0[26].w) ? 0 : ((dot(_1710, _1710) < CB0[27].w) ? 1 : ((dot(_1719, _1719) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1701, _1701) < CB0[26].w) ? 0 : ((dot(_1710, _1710) < CB0[27].w) ? 1 : ((dot(_1719, _1719) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1701, _1701) < CB0[26].w) ? 0 : ((dot(_1710, _1710) < CB0[27].w) ? 1 : ((dot(_1719, _1719) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1701, _1701) < CB0[26].w) ? 0 : ((dot(_1710, _1710) < CB0[27].w) ? 1 : ((dot(_1719, _1719) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _1814 = textureLod(ShadowAtlasTexture, _1763.xy, 0.0);
    vec2 _2564 = vec2(0.0);
    _2564.x = CB0[30].z;
    vec2 _2566 = _2564;
    _2566.y = CB0[30].w;
    float _1861 = (2.0 * _1763.z) - 1.0;
    float _1866 = exp(CB0[30].z * _1861);
    float _1873 = -exp((-CB0[30].w) * _1861);
    vec2 _1830 = (_2566 * CB0[31].y) * vec2(_1866, _1873);
    vec2 _1833 = _1830 * _1830;
    float _1886 = _1814.x;
    float _1893 = max(_1814.y - (_1886 * _1886), _1833.x);
    float _1897 = _1866 - _1886;
    float _1939 = _1814.z;
    float _1946 = max(_1814.w - (_1939 * _1939), _1833.y);
    float _1950 = _1873 - _1939;
    float _1746 = (dot(VARYING6, _1401) > 0.0) ? mix(_1619, mix(min((_1866 <= _1886) ? 1.0 : clamp(((_1893 / (_1893 + (_1897 * _1897))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_1873 <= _1939) ? 1.0 : clamp(((_1946 / (_1946 + (_1950 * _1950))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1619, clamp((length(_1396 - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec4 _2012 = vec4(CB3[0].w);
    float _2050 = -VARYING6.x;
    vec2 _2111 = (((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), _2012) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), _2012) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), _2012) * VARYING0.z)).wy * 2.0;
    vec2 _2113 = _2111 - vec2(1.0);
    vec3 _2085 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _2106 = normalize(((mix(vec3(VARYING6.z, 0.0, _2050), vec3(VARYING6.y, _2050, 0.0), _2085) * _2113.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _2085) * _2113.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _2111, _2113), 0.0, 1.0))));
    vec3 _1435 = mix(VARYING6, _2106, vec3(0.25));
    vec3 _1442 = normalize(VARYING7.xyz);
    vec2 _2149 = VARYING8.xy / vec2(VARYING8.w);
    vec2 _2154 = _2149 + (_2106.xz * 0.0500000007450580596923828125);
    vec4 _2598 = texture(GBufferColorTexture, _2149);
    _2598.w = texture(GBufferDepthTexture, _2149).x * 500.0;
    float _2220 = texture(GBufferDepthTexture, _2154).x * 500.0;
    vec4 _2600 = texture(GBufferColorTexture, _2154);
    _2600.w = _2220;
    vec4 _2176 = mix(_2598, _2600, vec4(clamp(_2220 - VARYING8.w, 0.0, 1.0)));
    vec3 _2178 = _2176.xyz;
    vec3 _2233 = vec3(CB0[15].x);
    vec3 _1473 = reflect(-_1442, _1435);
    float _2269 = VARYING8.w * 0.20000000298023223876953125;
    vec4 _2278 = vec4(_1473, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float _2383 = _2278.w;
    vec2 _2386 = (_2278.xy * 0.5) + vec2(0.5 * _2383);
    vec4 _2388 = vec4(_2386.x, _2386.y, _2278.z, _2278.w);
    float _2293 = 1.0 + clamp(0.0, VARYING8.w * (-0.20000000298023223876953125), _2269);
    vec4 _2298 = VARYING8 + (_2388 * _2293);
    float _2302 = _2298.w;
    float _2644 = _2293 + clamp((texture(GBufferDepthTexture, _2298.xy / vec2(_2302)).x * 500.0) - _2302, VARYING8.w * (-0.20000000298023223876953125), _2269);
    vec4 _2646 = VARYING8 + (_2388 * _2644);
    float _2648 = _2646.w;
    float _2664 = _2644 + clamp((texture(GBufferDepthTexture, _2646.xy / vec2(_2648)).x * 500.0) - _2648, VARYING8.w * (-0.20000000298023223876953125), _2269);
    vec4 _2666 = VARYING8 + (_2388 * _2664);
    float _2668 = _2666.w;
    float _2684 = _2664 + clamp((texture(GBufferDepthTexture, _2666.xy / vec2(_2668)).x * 500.0) - _2668, VARYING8.w * (-0.20000000298023223876953125), _2269);
    vec4 _2686 = VARYING8 + (_2388 * _2684);
    float _2688 = _2686.w;
    float _2704 = _2684 + clamp((texture(GBufferDepthTexture, _2686.xy / vec2(_2688)).x * 500.0) - _2688, VARYING8.w * (-0.20000000298023223876953125), _2269);
    vec4 _2706 = VARYING8 + (_2388 * _2704);
    float _2708 = _2706.w;
    float _2724 = _2704 + clamp((texture(GBufferDepthTexture, _2706.xy / vec2(_2708)).x * 500.0) - _2708, VARYING8.w * (-0.20000000298023223876953125), _2269);
    vec4 _2726 = VARYING8 + (_2388 * _2724);
    float _2728 = _2726.w;
    float _2744 = _2724 + clamp((texture(GBufferDepthTexture, _2726.xy / vec2(_2728)).x * 500.0) - _2728, VARYING8.w * (-0.20000000298023223876953125), _2269);
    vec4 _2746 = VARYING8 + (_2388 * _2744);
    float _2748 = _2746.w;
    float _2764 = _2744 + clamp((texture(GBufferDepthTexture, _2746.xy / vec2(_2748)).x * 500.0) - _2748, VARYING8.w * (-0.20000000298023223876953125), _2269);
    vec4 _2766 = VARYING8 + (_2388 * _2764);
    float _2768 = _2766.w;
    vec4 _2317 = VARYING8 + (_2388 * _2764);
    float _2321 = _2317.w;
    vec2 _2323 = _2317.xy / vec2(_2321);
    vec3 _2364 = texture(EnvMapTexture, _1473).xyz;
    vec3 _2371 = texture(GBufferColorTexture, _2323).xyz;
    vec3 _1524 = mix(mix(mix(_2178, (_2178 * _2178) * CB0[15].y, _2233).xyz, CB3[1].xyz * (min((_1594 + CB0[8].xyz) + (CB0[9].xyz * _1601), vec3(CB0[17].w)) + (CB0[10].xyz * _1746)), vec3(clamp(clamp(((_2176.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(mix(_2364, (_2364 * _2364) * CB0[15].w, _2233) * _1601, mix(_2371, (_2371 * _2371) * CB0[15].y, _2233), vec3((((float(abs(_2323.x - 0.5) < 0.550000011920928955078125) * float(abs(_2323.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, _2321) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, _2766.xy / vec2(_2768)).x * 500.0) - _2768) < 10.0)) * float(_2383 > 0.0))) + (_1594 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_1435, _1442))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * _1746) * pow(clamp(dot(_2106, normalize(_1401 + _1442)), 0.0, 1.0), 900.0)));
    vec4 _2618 = vec4(_1524.x, _1524.y, _1524.z, vec4(0.0).w);
    _2618.w = 1.0;
    vec3 _2482 = mix(CB0[14].xyz, mix(_2618.xyz, sqrt(clamp(_2618.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _2233).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_2482.x, _2482.y, _2482.z, _2618.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
