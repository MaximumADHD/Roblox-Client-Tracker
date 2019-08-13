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
out vec4 _entryPointOutput;

void main()
{
    vec3 _1185 = vec3(VARYING1.xy, VARYING2.x);
    vec3 _1194 = vec3(VARYING1.zw, VARYING2.z);
    vec4 _1161 = ((texture(AlbedoMapTexture, _1185).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, _1194).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 _1165 = _1161.yz - vec2(0.5);
    float _1207 = _1161.x;
    float _1214 = _1207 - _1165.y;
    vec3 _986 = vec4(vec3(_1214, _1207, _1214) + (vec3(_1165.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1233 = vec3(CB0[15].x);
    float _1241 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    float _1310 = -VARYING6.x;
    vec2 _1371 = (((texture(NormalMapTexture, _1185) * VARYING0.x) + (texture(NormalMapTexture, _1194) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 _1373 = _1371 - vec2(1.0);
    vec3 _1345 = vec3(dot(VARYING8, VARYING0));
    vec3 _1366 = normalize(((mix(vec3(VARYING6.z, 0.0, _1310), vec3(VARYING6.y, _1310, 0.0), _1345) * _1373.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1345) * _1373.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1371, _1373), 0.0, 1.0))));
    vec4 _1417 = ((texture(SpecularMapTexture, _1185) * VARYING0.x) + (texture(SpecularMapTexture, _1194) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 _1022 = -CB0[11].xyz;
    float _1023 = dot(_1366, _1022);
    float _1536 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1480 = VARYING4.yzx - (VARYING4.yzx * _1536);
    vec4 _1490 = vec4(clamp(_1536, 0.0, 1.0));
    vec4 _1491 = mix(texture(LightMapTexture, _1480), vec4(0.0), _1490);
    vec4 _1496 = mix(texture(LightGridSkylightTexture, _1480), vec4(1.0), _1490);
    vec4 _1546 = texture(ShadowMapTexture, VARYING5.xy);
    float _1559 = (1.0 - ((step(_1546.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * _1546.y)) * _1496.y;
    vec3 _1103 = (((min(((_1491.xyz * (_1491.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1496.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1023, 0.0, 1.0)) + (CB0[12].xyz * max(-_1023, 0.0))) * _1559)) + vec3((_1417.z * 2.0) * _1241)) * mix(_986, _986 * _986, _1233).xyz) + (CB0[10].xyz * (((((step(0.0, _1023) * _1417.x) * _1241) * CB3[0].z) * _1559) * pow(clamp(dot(_1366, normalize(_1022 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_1417.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _1736 = vec4(_1103.x, _1103.y, _1103.z, vec4(0.0).w);
    _1736.w = 1.0;
    vec3 _1624 = mix(CB0[14].xyz, mix(_1736.xyz, sqrt(clamp(_1736.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1233).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_1624.x, _1624.y, _1624.z, _1736.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
