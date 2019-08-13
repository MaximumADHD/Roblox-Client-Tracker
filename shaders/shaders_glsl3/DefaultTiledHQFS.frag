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

struct MaterialParams
{
    float textureTiling;
    float specularScale;
    float glossScale;
    float reflectionScale;
    float normalShadowScale;
    float specularLod;
    float glossLod;
    float normalDetailTiling;
    float normalDetailScale;
    float farTilingDiffuse;
    float farTilingNormal;
    float farTilingSpecular;
    float farDiffuseCutoff;
    float farNormalCutoff;
    float farSpecularCutoff;
    float optBlendColorK;
    float farDiffuseCutoffScale;
    float farNormalCutoffScale;
    float farSpecularCutoffScale;
    float isNonSmoothPlastic;
};

uniform vec4 CB0[32];
uniform vec4 CB2[5];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube EnvironmentMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec2 _1800 = VARYING1.xy;
    _1800.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1234 = VARYING4.w * CB0[24].y;
    float _1246 = clamp(1.0 - _1234, 0.0, 1.0);
    vec2 _1278 = VARYING0.xy * CB2[0].x;
    vec4 _1285 = texture(DiffuseMapTexture, _1278);
    vec2 _1397 = texture(NormalMapTexture, _1278).wy * 2.0;
    vec2 _1399 = _1397 - vec2(1.0);
    float _1407 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1397, _1399), 0.0, 1.0));
    vec2 _1312 = (vec3(_1399, _1407).xy + (vec3((texture(NormalDetailMapTexture, _1278 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1246;
    float _1318 = _1312.x;
    vec4 _1350 = texture(SpecularMapTexture, _1278);
    vec2 _1374 = mix(vec2(CB2[1].y, CB2[1].z), (_1350.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1246));
    vec3 _1023 = normalize(((VARYING6.xyz * _1318) + (cross(VARYING5.xyz, VARYING6.xyz) * _1312.y)) + (VARYING5.xyz * _1407));
    vec3 _1027 = -CB0[11].xyz;
    float _1028 = dot(_1023, _1027);
    vec3 _1051 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1285.w + CB2[3].w, 0.0, 1.0))) * _1285.xyz) * (1.0 + (_1318 * CB2[1].x))) * (texture(StudsMapTexture, _1800).x * 2.0), VARYING2.w).xyz;
    vec3 _1439 = vec3(CB0[15].x);
    float _1541 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1485 = VARYING3.yzx - (VARYING3.yzx * _1541);
    vec4 _1495 = vec4(clamp(_1541, 0.0, 1.0));
    vec4 _1496 = mix(texture(LightMapTexture, _1485), vec4(0.0), _1495);
    vec4 _1501 = mix(texture(LightGridSkylightTexture, _1485), vec4(1.0), _1495);
    vec4 _1551 = texture(ShadowMapTexture, VARYING7.xy);
    float _1564 = (1.0 - ((step(_1551.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1551.y)) * _1501.y;
    vec3 _1070 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1023)).xyz;
    vec3 _1119 = ((min(((_1496.xyz * (_1496.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1501.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1028, 0.0, 1.0)) + (CB0[12].xyz * max(-_1028, 0.0))) * _1564)) * mix(mix(_1051, _1051 * _1051, _1439).xyz, mix(_1070, (_1070 * _1070) * CB0[15].w, _1439), vec3((_1350.y * _1246) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, _1028) * _1374.x) * _1564) * pow(clamp(dot(_1023, normalize(_1027 + normalize(VARYING4.xyz))), 0.0, 1.0), _1374.y)));
    vec4 _1827 = vec4(_1119.x, _1119.y, _1119.z, vec4(0.0).w);
    _1827.w = VARYING2.w;
    vec2 _1144 = min(VARYING0.wz, VARYING1.wz);
    float _1151 = min(_1144.x, _1144.y) / _1234;
    vec3 _1175 = (_1827.xyz * clamp((clamp((_1234 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1151)) + _1151, 0.0, 1.0)).xyz;
    vec3 _1672 = mix(CB0[14].xyz, mix(_1175, sqrt(clamp(_1175 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1439).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_1672.x, _1672.y, _1672.z, _1827.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$EnvironmentMapTexture=s2
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
