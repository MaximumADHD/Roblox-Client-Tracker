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

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec2 _1959 = VARYING1.xy;
    _1959.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1309 = VARYING4.w * CB0[24].y;
    float _1321 = clamp(1.0 - _1309, 0.0, 1.0);
    vec2 _1500 = VARYING0.xy * CB2[0].x;
    vec2 _1501 = _1500 * 4.0;
    vec2 _1511 = _1501 * 0.25;
    vec4 _1520 = vec4(dFdx(_1511), dFdy(_1511));
    vec2 _1527 = (texture2D(WangTileMapTexture, _1501 * vec2(0.0078125)).zw * 0.99609375) + (fract(_1501) * 0.25);
    vec2 _1532 = _1520.xy;
    vec2 _1534 = _1520.zw;
    vec4 _1535 = texture2DGradARB(DiffuseMapTexture, _1527, _1532, _1534);
    vec2 _1548 = texture2DGradARB(NormalMapTexture, _1527, _1532, _1534).wy * 2.0;
    vec2 _1550 = _1548 - vec2(1.0);
    float _1558 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1548, _1550), 0.0, 1.0));
    vec2 _1412 = (vec3(_1550, _1558).xy + (vec3((texture2D(NormalDetailMapTexture, _1500 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1321;
    float _1418 = _1412.x;
    vec4 _1587 = texture2DGradARB(SpecularMapTexture, _1527, _1532, _1534);
    vec2 _1475 = mix(vec2(CB2[1].y, CB2[1].z), (_1587.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1321));
    vec3 _1098 = normalize(((VARYING6.xyz * _1418) + (cross(VARYING5.xyz, VARYING6.xyz) * _1412.y)) + (VARYING5.xyz * _1558));
    vec3 _1102 = -CB0[11].xyz;
    float _1103 = dot(_1098, _1102);
    vec3 _1126 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1535.w + CB2[3].w, 0.0, 1.0))) * _1535.xyz) * (1.0 + (_1418 * CB2[1].x))) * (texture2D(StudsMapTexture, _1959).x * 2.0), VARYING2.w).xyz;
    vec3 _1598 = vec3(CB0[15].x);
    float _1700 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1644 = VARYING3.yzx - (VARYING3.yzx * _1700);
    vec4 _1654 = vec4(clamp(_1700, 0.0, 1.0));
    vec4 _1655 = mix(texture3D(LightMapTexture, _1644), vec4(0.0), _1654);
    vec4 _1660 = mix(texture3D(LightGridSkylightTexture, _1644), vec4(1.0), _1654);
    vec4 _1710 = texture2D(ShadowMapTexture, VARYING7.xy);
    float _1723 = (1.0 - ((step(_1710.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1710.y)) * _1660.y;
    vec3 _1145 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1098)).xyz;
    vec3 _1194 = ((min(((_1655.xyz * (_1655.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1660.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1103, 0.0, 1.0)) + (CB0[12].xyz * max(-_1103, 0.0))) * _1723)) * mix(mix(_1126, _1126 * _1126, _1598).xyz, mix(_1145, (_1145 * _1145) * CB0[15].w, _1598), vec3((_1587.y * _1321) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, _1103) * _1475.x) * _1723) * pow(clamp(dot(_1098, normalize(_1102 + normalize(VARYING4.xyz))), 0.0, 1.0), _1475.y)));
    vec4 _1986 = vec4(_1194.x, _1194.y, _1194.z, vec4(0.0).w);
    _1986.w = VARYING2.w;
    vec2 _1219 = min(VARYING0.wz, VARYING1.wz);
    float _1226 = min(_1219.x, _1219.y) / _1309;
    vec3 _1250 = (_1986.xyz * clamp((clamp((_1309 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1226)) + _1226, 0.0, 1.0)).xyz;
    vec3 _1831 = mix(CB0[14].xyz, mix(_1250, sqrt(clamp(_1250 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1598).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1831.x, _1831.y, _1831.z, _1986.w);
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
