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
uniform vec4 CB3[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec3 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 _1377 = vec3(VARYING1.xy, VARYING2.x);
    vec3 _1386 = vec3(VARYING1.zw, VARYING2.z);
    vec4 _1347 = ((texture(AlbedoMapTexture, _1377).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, _1386).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 _1351 = _1347.yz - vec2(0.5);
    float _1406 = VARYING9.x * _1347.x;
    float _1410 = _1351.x;
    float _1414 = _1351.y;
    float _1416 = (VARYING9.y * _1410) - (VARYING9.z * _1414);
    float _1426 = (VARYING9.z * _1410) + (VARYING9.y * _1414);
    float _1443 = _1406 - _1426;
    vec3 _1172 = vec4(vec3(_1443, _1406, _1443) + (vec3(_1416, _1426, _1416) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1462 = vec3(CB0[15].x);
    float _1470 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    vec4 _1503 = ((texture(SpecularMapTexture, _1377) * VARYING0.x) + (texture(SpecularMapTexture, _1386) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 _1197 = -CB0[11].xyz;
    float _1198 = dot(VARYING6, _1197);
    float _1609 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1553 = VARYING4.yzx - (VARYING4.yzx * _1609);
    vec4 _1563 = vec4(clamp(_1609, 0.0, 1.0));
    vec4 _1564 = mix(texture(LightMapTexture, _1553), vec4(0.0), _1563);
    vec4 _1569 = mix(texture(LightGridSkylightTexture, _1553), vec4(1.0), _1563);
    float _1604 = _1569.y;
    vec3 _1686 = VARYING5 - CB0[26].xyz;
    vec3 _1695 = VARYING5 - CB0[27].xyz;
    vec3 _1704 = VARYING5 - CB0[28].xyz;
    vec4 _1748 = vec4(VARYING5, 1.0) * mat4(CB8[((dot(_1686, _1686) < CB0[26].w) ? 0 : ((dot(_1695, _1695) < CB0[27].w) ? 1 : ((dot(_1704, _1704) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1686, _1686) < CB0[26].w) ? 0 : ((dot(_1695, _1695) < CB0[27].w) ? 1 : ((dot(_1704, _1704) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1686, _1686) < CB0[26].w) ? 0 : ((dot(_1695, _1695) < CB0[27].w) ? 1 : ((dot(_1704, _1704) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1686, _1686) < CB0[26].w) ? 0 : ((dot(_1695, _1695) < CB0[27].w) ? 1 : ((dot(_1704, _1704) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _1799 = textureLod(ShadowAtlasTexture, _1748.xy, 0.0);
    vec2 _2126 = vec2(0.0);
    _2126.x = CB0[30].z;
    vec2 _2128 = _2126;
    _2128.y = CB0[30].w;
    float _1846 = (2.0 * _1748.z) - 1.0;
    float _1851 = exp(CB0[30].z * _1846);
    float _1858 = -exp((-CB0[30].w) * _1846);
    vec2 _1815 = (_2128 * CB0[31].y) * vec2(_1851, _1858);
    vec2 _1818 = _1815 * _1815;
    float _1871 = _1799.x;
    float _1878 = max(_1799.y - (_1871 * _1871), _1818.x);
    float _1882 = _1851 - _1871;
    float _1924 = _1799.z;
    float _1931 = max(_1799.w - (_1924 * _1924), _1818.y);
    float _1935 = _1858 - _1924;
    float _1731 = (_1198 > 0.0) ? mix(_1604, mix(min((_1851 <= _1871) ? 1.0 : clamp(((_1878 / (_1878 + (_1882 * _1882))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_1858 <= _1924) ? 1.0 : clamp(((_1931 / (_1931 + (_1935 * _1935))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1604, clamp((length(VARYING5 - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _1287 = (((min(((_1564.xyz * (_1564.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1569.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1198, 0.0, 1.0)) + (CB0[12].xyz * max(-_1198, 0.0))) * _1731)) + vec3((_1503.z * 2.0) * _1470)) * mix(_1172, _1172 * _1172, _1462).xyz) + (CB0[10].xyz * (((((step(0.0, _1198) * _1503.x) * _1470) * CB3[0].z) * _1731) * pow(clamp(dot(VARYING6, normalize(_1197 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_1503.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _2149 = vec4(_1287.x, _1287.y, _1287.z, vec4(0.0).w);
    _2149.w = 1.0;
    vec3 _2014 = mix(CB0[14].xyz, mix(_2149.xyz, sqrt(clamp(_2149.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1462).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_2014.x, _2014.y, _2014.z, _2149.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
