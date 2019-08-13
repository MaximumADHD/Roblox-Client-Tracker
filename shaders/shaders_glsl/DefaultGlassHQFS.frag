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
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
uniform samplerCube EnvironmentMapTexture;

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
    vec2 _1862 = VARYING1.xy;
    _1862.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1275 = clamp(1.0 - (VARYING4.w * CB0[24].y), 0.0, 1.0);
    vec2 _1313 = VARYING0.xy * CB2[0].x;
    vec4 _1320 = texture2D(DiffuseMapTexture, _1313);
    vec2 _1442 = texture2D(NormalMapTexture, _1313).wy * 2.0;
    vec2 _1444 = _1442 - vec2(1.0);
    float _1452 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1442, _1444), 0.0, 1.0));
    vec2 _1347 = (vec3(_1444, _1452).xy + (vec3((texture2D(NormalDetailMapTexture, _1313 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1275;
    float _1353 = _1347.x;
    float _1358 = _1320.w;
    vec3 _1382 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1358 + CB2[3].w, 0.0, 1.0))) * _1320.xyz) * (1.0 + (_1353 * CB2[1].x))) * (texture2D(StudsMapTexture, _1862).x * 2.0);
    vec4 _1493 = mix(texture2D(SpecularMapTexture, _1313 * CB2[2].w), texture2D(SpecularMapTexture, _1313), vec4(clamp((_1275 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    vec2 _1416 = mix(vec2(CB2[1].y, CB2[1].z), (_1493.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1275));
    float _1021 = VARYING2.w * 2.0;
    float _1022 = clamp(_1021, 0.0, 1.0);
    float _1031 = clamp((_1021 - 1.0) + _1358, 0.0, 1.0);
    vec3 _1063 = normalize(((VARYING6.xyz * _1353) + (cross(VARYING5.xyz, VARYING6.xyz) * _1347.y)) + (VARYING5.xyz * (_1452 * 10.0)));
    vec3 _1067 = -CB0[11].xyz;
    float _1068 = dot(_1063, _1067);
    float _1596 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1540 = VARYING3.yzx - (VARYING3.yzx * _1596);
    vec4 _1550 = vec4(clamp(_1596, 0.0, 1.0));
    vec4 _1551 = mix(texture3D(LightMapTexture, _1540), vec4(0.0), _1550);
    vec4 _1556 = mix(texture3D(LightGridSkylightTexture, _1540), vec4(1.0), _1550);
    vec3 _1566 = (_1551.xyz * (_1551.w * 120.0)).xyz;
    float _1573 = _1556.x;
    vec4 _1606 = texture2D(ShadowMapTexture, VARYING7.xy);
    float _1619 = (1.0 - ((step(_1606.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1606.y)) * _1556.y;
    vec3 _1645 = vec3(CB0[15].x);
    vec3 _1646 = mix(_1382, _1382 * _1382, _1645);
    vec3 _1126 = normalize(VARYING4.xyz);
    vec3 _1157 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1063)).xyz;
    vec3 _1171 = mix(_1566, mix(_1157, (_1157 * _1157) * CB0[15].w, _1645), vec3(_1573)) * mix(vec3(1.0), _1646, vec3(0.5));
    float _1683 = 1.0 - dot(_1063, _1126);
    vec4 _1207 = mix(vec4(mix((min((_1566 + CB0[8].xyz) + (CB0[9].xyz * _1573), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1068, 0.0, 1.0)) + (CB0[12].xyz * max(-_1068, 0.0))) * _1619)) * _1646, _1171, vec3(mix((_1493.y * _1275) * CB2[0].w, 1.0, VARYING7.w))) * _1031, _1031), vec4(_1171, 1.0), vec4(((_1683 * _1683) * 0.800000011920928955078125) * _1022)) + vec4(CB0[10].xyz * ((((step(0.0, _1068) * mix(_1416.x, CB2[0].y, VARYING7.w)) * _1619) * pow(clamp(dot(_1063, normalize(_1067 + _1126)), 0.0, 1.0), mix(_1416.y, CB2[0].z, VARYING7.w))) * _1022), 0.0);
    vec3 _1219 = _1207.xyz;
    vec3 _1701 = mix(_1219, sqrt(clamp(_1219 * CB0[15].z, vec3(0.0), vec3(1.0))), _1645);
    gl_FragData[0] = mix(vec4(CB0[14].xyz, 1.0), vec4(_1701.x, _1701.y, _1701.z, _1207.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$EnvironmentMapTexture=s2
