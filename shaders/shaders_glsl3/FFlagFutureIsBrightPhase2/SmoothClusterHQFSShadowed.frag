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
out vec4 _entryPointOutput;

void main()
{
    vec3 _1305 = vec3(VARYING1.xy, VARYING2.x);
    vec3 _1314 = vec3(VARYING1.zw, VARYING2.z);
    vec4 _1281 = ((texture(AlbedoMapTexture, _1305).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, _1314).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 _1285 = _1281.yz - vec2(0.5);
    float _1327 = _1281.x;
    float _1334 = _1327 - _1285.y;
    vec3 _1108 = vec4(vec3(_1334, _1327, _1334) + (vec3(_1285.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1353 = vec3(CB0[15].x);
    float _1361 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    vec4 _1394 = ((texture(SpecularMapTexture, _1305) * VARYING0.x) + (texture(SpecularMapTexture, _1314) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 _1133 = -CB0[11].xyz;
    float _1134 = dot(VARYING6, _1133);
    float _1500 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1444 = VARYING4.yzx - (VARYING4.yzx * _1500);
    vec4 _1454 = vec4(clamp(_1500, 0.0, 1.0));
    vec4 _1455 = mix(texture(LightMapTexture, _1444), vec4(0.0), _1454);
    vec4 _1460 = mix(texture(LightGridSkylightTexture, _1444), vec4(1.0), _1454);
    float _1495 = _1460.y;
    vec3 _1577 = VARYING5 - CB0[26].xyz;
    vec3 _1586 = VARYING5 - CB0[27].xyz;
    vec3 _1595 = VARYING5 - CB0[28].xyz;
    vec4 _1639 = vec4(VARYING5, 1.0) * mat4(CB8[((dot(_1577, _1577) < CB0[26].w) ? 0 : ((dot(_1586, _1586) < CB0[27].w) ? 1 : ((dot(_1595, _1595) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1577, _1577) < CB0[26].w) ? 0 : ((dot(_1586, _1586) < CB0[27].w) ? 1 : ((dot(_1595, _1595) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1577, _1577) < CB0[26].w) ? 0 : ((dot(_1586, _1586) < CB0[27].w) ? 1 : ((dot(_1595, _1595) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1577, _1577) < CB0[26].w) ? 0 : ((dot(_1586, _1586) < CB0[27].w) ? 1 : ((dot(_1595, _1595) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _1690 = textureLod(ShadowAtlasTexture, _1639.xy, 0.0);
    vec2 _1999 = vec2(0.0);
    _1999.x = CB0[30].z;
    vec2 _2001 = _1999;
    _2001.y = CB0[30].w;
    float _1737 = (2.0 * _1639.z) - 1.0;
    float _1742 = exp(CB0[30].z * _1737);
    float _1749 = -exp((-CB0[30].w) * _1737);
    vec2 _1706 = (_2001 * CB0[31].y) * vec2(_1742, _1749);
    vec2 _1709 = _1706 * _1706;
    float _1762 = _1690.x;
    float _1769 = max(_1690.y - (_1762 * _1762), _1709.x);
    float _1773 = _1742 - _1762;
    float _1815 = _1690.z;
    float _1822 = max(_1690.w - (_1815 * _1815), _1709.y);
    float _1826 = _1749 - _1815;
    float _1622 = (_1134 > 0.0) ? mix(_1495, mix(min((_1742 <= _1762) ? 1.0 : clamp(((_1769 / (_1769 + (_1773 * _1773))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_1749 <= _1815) ? 1.0 : clamp(((_1822 / (_1822 + (_1826 * _1826))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1495, clamp((length(VARYING5 - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _1223 = (((min(((_1455.xyz * (_1455.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1460.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1134, 0.0, 1.0)) + (CB0[12].xyz * max(-_1134, 0.0))) * _1622)) + vec3((_1394.z * 2.0) * _1361)) * mix(_1108, _1108 * _1108, _1353).xyz) + (CB0[10].xyz * (((((step(0.0, _1134) * _1394.x) * _1361) * CB3[0].z) * _1622) * pow(clamp(dot(VARYING6, normalize(_1133 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_1394.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _2022 = vec4(_1223.x, _1223.y, _1223.z, vec4(0.0).w);
    _2022.w = 1.0;
    vec3 _1905 = mix(CB0[14].xyz, mix(_2022.xyz, sqrt(clamp(_2022.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1353).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_1905.x, _1905.y, _1905.z, _2022.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
