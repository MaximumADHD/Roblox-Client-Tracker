#version 110

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
    vec2 _1968 = VARYING1.xy;
    _1968.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1294 = VARYING4.w * CB0[24].y;
    float _1306 = clamp(1.0 - _1294, 0.0, 1.0);
    vec2 _1356 = VARYING0.xy * CB2[0].x;
    vec4 _1511 = mix(texture2D(DiffuseMapTexture, _1356 * CB2[2].y), texture2D(DiffuseMapTexture, _1356), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[4].x) - (CB2[3].x * CB2[4].x), 0.0, 1.0)));
    vec2 _1542 = mix(texture2D(NormalMapTexture, _1356 * CB2[2].z), texture2D(NormalMapTexture, _1356), vec4(clamp((_1306 * CB2[4].y) - (CB2[3].y * CB2[4].y), 0.0, 1.0))).wy * 2.0;
    vec2 _1544 = _1542 - vec2(1.0);
    float _1552 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1542, _1544), 0.0, 1.0));
    vec2 _1404 = (vec3(_1544, _1552).xy + (vec3((texture2D(NormalDetailMapTexture, _1356 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1306;
    float _1410 = _1404.x;
    vec4 _1593 = mix(texture2D(SpecularMapTexture, _1356 * CB2[2].w), texture2D(SpecularMapTexture, _1356), vec4(clamp((_1306 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    vec2 _1473 = mix(vec2(CB2[1].y, CB2[1].z), (_1593.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1306));
    vec3 _1083 = normalize(((VARYING6.xyz * _1410) + (cross(VARYING5.xyz, VARYING6.xyz) * _1404.y)) + (VARYING5.xyz * _1552));
    vec3 _1087 = -CB0[11].xyz;
    float _1088 = dot(_1083, _1087);
    vec3 _1111 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1511.w + CB2[3].w, 0.0, 1.0))) * _1511.xyz) * (1.0 + (_1410 * CB2[1].x))) * (texture2D(StudsMapTexture, _1968).x * 2.0), VARYING2.w).xyz;
    vec3 _1607 = vec3(CB0[15].x);
    float _1709 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1653 = VARYING3.yzx - (VARYING3.yzx * _1709);
    vec4 _1663 = vec4(clamp(_1709, 0.0, 1.0));
    vec4 _1664 = mix(texture3D(LightMapTexture, _1653), vec4(0.0), _1663);
    vec4 _1669 = mix(texture3D(LightGridSkylightTexture, _1653), vec4(1.0), _1663);
    vec4 _1719 = texture2D(ShadowMapTexture, VARYING7.xy);
    float _1732 = (1.0 - ((step(_1719.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1719.y)) * _1669.y;
    vec3 _1130 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1083)).xyz;
    vec3 _1179 = ((min(((_1664.xyz * (_1664.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1669.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1088, 0.0, 1.0)) + (CB0[12].xyz * max(-_1088, 0.0))) * _1732)) * mix(mix(_1111, _1111 * _1111, _1607).xyz, mix(_1130, (_1130 * _1130) * CB0[15].w, _1607), vec3((_1593.y * _1306) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, _1088) * _1473.x) * _1732) * pow(clamp(dot(_1083, normalize(_1087 + normalize(VARYING4.xyz))), 0.0, 1.0), _1473.y)));
    vec4 _1996 = vec4(_1179.x, _1179.y, _1179.z, vec4(0.0).w);
    _1996.w = VARYING2.w;
    vec2 _1204 = min(VARYING0.wz, VARYING1.wz);
    float _1211 = min(_1204.x, _1204.y) / _1294;
    vec3 _1235 = (_1996.xyz * clamp((clamp((_1294 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1211)) + _1211, 0.0, 1.0)).xyz;
    vec3 _1840 = mix(CB0[14].xyz, mix(_1235, sqrt(clamp(_1235 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1607).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1840.x, _1840.y, _1840.z, _1996.w);
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
