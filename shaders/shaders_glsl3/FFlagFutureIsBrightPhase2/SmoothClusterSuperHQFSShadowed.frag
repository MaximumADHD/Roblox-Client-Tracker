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
out vec4 _entryPointOutput;

void main()
{
    vec3 _1489 = vec3(VARYING1.xy, VARYING2.x);
    vec3 _1498 = vec3(VARYING1.zw, VARYING2.z);
    vec4 _1465 = ((texture(AlbedoMapTexture, _1489).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, _1498).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 _1469 = _1465.yz - vec2(0.5);
    float _1511 = _1465.x;
    float _1518 = _1511 - _1469.y;
    vec3 _1281 = vec4(vec3(_1518, _1511, _1518) + (vec3(_1469.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1537 = vec3(CB0[15].x);
    float _1545 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    float _1614 = -VARYING6.x;
    vec2 _1675 = (((texture(NormalMapTexture, _1489) * VARYING0.x) + (texture(NormalMapTexture, _1498) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 _1677 = _1675 - vec2(1.0);
    vec3 _1649 = vec3(dot(VARYING8, VARYING0));
    vec3 _1670 = normalize(((mix(vec3(VARYING6.z, 0.0, _1614), vec3(VARYING6.y, _1614, 0.0), _1649) * _1677.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1649) * _1677.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1675, _1677), 0.0, 1.0))));
    vec4 _1721 = ((texture(SpecularMapTexture, _1489) * VARYING0.x) + (texture(SpecularMapTexture, _1498) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 _1317 = -CB0[11].xyz;
    float _1318 = dot(_1670, _1317);
    float _1827 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1771 = VARYING4.yzx - (VARYING4.yzx * _1827);
    vec4 _1781 = vec4(clamp(_1827, 0.0, 1.0));
    vec4 _1782 = mix(texture(LightMapTexture, _1771), vec4(0.0), _1781);
    vec4 _1787 = mix(texture(LightGridSkylightTexture, _1771), vec4(1.0), _1781);
    float _1822 = _1787.y;
    vec3 _1904 = VARYING5 - CB0[26].xyz;
    vec3 _1913 = VARYING5 - CB0[27].xyz;
    vec3 _1922 = VARYING5 - CB0[28].xyz;
    vec4 _1966 = vec4(VARYING5, 1.0) * mat4(CB8[((dot(_1904, _1904) < CB0[26].w) ? 0 : ((dot(_1913, _1913) < CB0[27].w) ? 1 : ((dot(_1922, _1922) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1904, _1904) < CB0[26].w) ? 0 : ((dot(_1913, _1913) < CB0[27].w) ? 1 : ((dot(_1922, _1922) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1904, _1904) < CB0[26].w) ? 0 : ((dot(_1913, _1913) < CB0[27].w) ? 1 : ((dot(_1922, _1922) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1904, _1904) < CB0[26].w) ? 0 : ((dot(_1913, _1913) < CB0[27].w) ? 1 : ((dot(_1922, _1922) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _2017 = textureLod(ShadowAtlasTexture, _1966.xy, 0.0);
    vec2 _2340 = vec2(0.0);
    _2340.x = CB0[30].z;
    vec2 _2342 = _2340;
    _2342.y = CB0[30].w;
    float _2064 = (2.0 * _1966.z) - 1.0;
    float _2069 = exp(CB0[30].z * _2064);
    float _2076 = -exp((-CB0[30].w) * _2064);
    vec2 _2033 = (_2342 * CB0[31].y) * vec2(_2069, _2076);
    vec2 _2036 = _2033 * _2033;
    float _2089 = _2017.x;
    float _2096 = max(_2017.y - (_2089 * _2089), _2036.x);
    float _2100 = _2069 - _2089;
    float _2142 = _2017.z;
    float _2149 = max(_2017.w - (_2142 * _2142), _2036.y);
    float _2153 = _2076 - _2142;
    float _1949 = (_1318 > 0.0) ? mix(_1822, mix(min((_2069 <= _2089) ? 1.0 : clamp(((_2096 / (_2096 + (_2100 * _2100))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_2076 <= _2142) ? 1.0 : clamp(((_2149 / (_2149 + (_2153 * _2153))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1822, clamp((length(VARYING5 - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _1407 = (((min(((_1782.xyz * (_1782.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1787.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1318, 0.0, 1.0)) + (CB0[12].xyz * max(-_1318, 0.0))) * _1949)) + vec3((_1721.z * 2.0) * _1545)) * mix(_1281, _1281 * _1281, _1537).xyz) + (CB0[10].xyz * (((((step(0.0, _1318) * _1721.x) * _1545) * CB3[0].z) * _1949) * pow(clamp(dot(_1670, normalize(_1317 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_1721.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _2363 = vec4(_1407.x, _1407.y, _1407.z, vec4(0.0).w);
    _2363.w = 1.0;
    vec3 _2232 = mix(CB0[14].xyz, mix(_2363.xyz, sqrt(clamp(_2363.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1537).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_2232.x, _2232.y, _2232.z, _2363.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
