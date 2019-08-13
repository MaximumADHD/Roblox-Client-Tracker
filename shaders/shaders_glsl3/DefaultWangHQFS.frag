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
uniform sampler2D WangTileMapTexture;
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
    vec2 _1971 = VARYING1.xy;
    _1971.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1321 = VARYING4.w * CB0[24].y;
    float _1333 = clamp(1.0 - _1321, 0.0, 1.0);
    vec2 _1512 = VARYING0.xy * CB2[0].x;
    vec2 _1513 = _1512 * 4.0;
    vec2 _1523 = _1513 * 0.25;
    vec4 _1532 = vec4(dFdx(_1523), dFdy(_1523));
    vec2 _1539 = (texture(WangTileMapTexture, _1513 * vec2(0.0078125)).xy * 0.99609375) + (fract(_1513) * 0.25);
    vec2 _1544 = _1532.xy;
    vec2 _1546 = _1532.zw;
    vec4 _1547 = textureGrad(DiffuseMapTexture, _1539, _1544, _1546);
    vec2 _1560 = textureGrad(NormalMapTexture, _1539, _1544, _1546).wy * 2.0;
    vec2 _1562 = _1560 - vec2(1.0);
    float _1570 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1560, _1562), 0.0, 1.0));
    vec2 _1424 = (vec3(_1562, _1570).xy + (vec3((texture(NormalDetailMapTexture, _1512 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1333;
    float _1430 = _1424.x;
    vec4 _1599 = textureGrad(SpecularMapTexture, _1539, _1544, _1546);
    vec2 _1487 = mix(vec2(CB2[1].y, CB2[1].z), (_1599.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1333));
    vec3 _1110 = normalize(((VARYING6.xyz * _1430) + (cross(VARYING5.xyz, VARYING6.xyz) * _1424.y)) + (VARYING5.xyz * _1570));
    vec3 _1114 = -CB0[11].xyz;
    float _1115 = dot(_1110, _1114);
    vec3 _1138 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1547.w + CB2[3].w, 0.0, 1.0))) * _1547.xyz) * (1.0 + (_1430 * CB2[1].x))) * (texture(StudsMapTexture, _1971).x * 2.0), VARYING2.w).xyz;
    vec3 _1610 = vec3(CB0[15].x);
    float _1712 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1656 = VARYING3.yzx - (VARYING3.yzx * _1712);
    vec4 _1666 = vec4(clamp(_1712, 0.0, 1.0));
    vec4 _1667 = mix(texture(LightMapTexture, _1656), vec4(0.0), _1666);
    vec4 _1672 = mix(texture(LightGridSkylightTexture, _1656), vec4(1.0), _1666);
    vec4 _1722 = texture(ShadowMapTexture, VARYING7.xy);
    float _1735 = (1.0 - ((step(_1722.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1722.y)) * _1672.y;
    vec3 _1157 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1110)).xyz;
    vec3 _1206 = ((min(((_1667.xyz * (_1667.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1672.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1115, 0.0, 1.0)) + (CB0[12].xyz * max(-_1115, 0.0))) * _1735)) * mix(mix(_1138, _1138 * _1138, _1610).xyz, mix(_1157, (_1157 * _1157) * CB0[15].w, _1610), vec3((_1599.y * _1333) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, _1115) * _1487.x) * _1735) * pow(clamp(dot(_1110, normalize(_1114 + normalize(VARYING4.xyz))), 0.0, 1.0), _1487.y)));
    vec4 _1998 = vec4(_1206.x, _1206.y, _1206.z, vec4(0.0).w);
    _1998.w = VARYING2.w;
    vec2 _1231 = min(VARYING0.wz, VARYING1.wz);
    float _1238 = min(_1231.x, _1231.y) / _1321;
    vec3 _1262 = (_1998.xyz * clamp((clamp((_1321 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1238)) + _1238, 0.0, 1.0)).xyz;
    vec3 _1843 = mix(CB0[14].xyz, mix(_1262, sqrt(clamp(_1262 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1610).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_1843.x, _1843.y, _1843.z, _1998.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$EnvironmentMapTexture=s2
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
