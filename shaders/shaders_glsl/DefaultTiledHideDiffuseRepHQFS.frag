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
    vec2 _1868 = VARYING1.xy;
    _1868.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1266 = VARYING4.w * CB0[24].y;
    float _1278 = clamp(1.0 - _1266, 0.0, 1.0);
    vec2 _1316 = VARYING0.xy * CB2[0].x;
    vec4 _1457 = mix(texture2D(DiffuseMapTexture, _1316 * CB2[2].y), texture2D(DiffuseMapTexture, _1316), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[4].x) - (CB2[3].x * CB2[4].x), 0.0, 1.0)));
    vec2 _1465 = texture2D(NormalMapTexture, _1316).wy * 2.0;
    vec2 _1467 = _1465 - vec2(1.0);
    float _1475 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1465, _1467), 0.0, 1.0));
    vec2 _1357 = (vec3(_1467, _1475).xy + (vec3((texture2D(NormalDetailMapTexture, _1316 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1278;
    float _1363 = _1357.x;
    vec4 _1395 = texture2D(SpecularMapTexture, _1316);
    vec2 _1419 = mix(vec2(CB2[1].y, CB2[1].z), (_1395.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1278));
    vec3 _1055 = normalize(((VARYING6.xyz * _1363) + (cross(VARYING5.xyz, VARYING6.xyz) * _1357.y)) + (VARYING5.xyz * _1475));
    vec3 _1059 = -CB0[11].xyz;
    float _1060 = dot(_1055, _1059);
    vec3 _1083 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1457.w + CB2[3].w, 0.0, 1.0))) * _1457.xyz) * (1.0 + (_1363 * CB2[1].x))) * (texture2D(StudsMapTexture, _1868).x * 2.0), VARYING2.w).xyz;
    vec3 _1507 = vec3(CB0[15].x);
    float _1609 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1553 = VARYING3.yzx - (VARYING3.yzx * _1609);
    vec4 _1563 = vec4(clamp(_1609, 0.0, 1.0));
    vec4 _1564 = mix(texture3D(LightMapTexture, _1553), vec4(0.0), _1563);
    vec4 _1569 = mix(texture3D(LightGridSkylightTexture, _1553), vec4(1.0), _1563);
    vec4 _1619 = texture2D(ShadowMapTexture, VARYING7.xy);
    float _1632 = (1.0 - ((step(_1619.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1619.y)) * _1569.y;
    vec3 _1102 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1055)).xyz;
    vec3 _1151 = ((min(((_1564.xyz * (_1564.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1569.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1060, 0.0, 1.0)) + (CB0[12].xyz * max(-_1060, 0.0))) * _1632)) * mix(mix(_1083, _1083 * _1083, _1507).xyz, mix(_1102, (_1102 * _1102) * CB0[15].w, _1507), vec3((_1395.y * _1278) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, _1060) * _1419.x) * _1632) * pow(clamp(dot(_1055, normalize(_1059 + normalize(VARYING4.xyz))), 0.0, 1.0), _1419.y)));
    vec4 _1896 = vec4(_1151.x, _1151.y, _1151.z, vec4(0.0).w);
    _1896.w = VARYING2.w;
    vec2 _1176 = min(VARYING0.wz, VARYING1.wz);
    float _1183 = min(_1176.x, _1176.y) / _1266;
    vec3 _1207 = (_1896.xyz * clamp((clamp((_1266 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1183)) + _1183, 0.0, 1.0)).xyz;
    vec3 _1740 = mix(CB0[14].xyz, mix(_1207, sqrt(clamp(_1207 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1507).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1740.x, _1740.y, _1740.z, _1896.w);
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
