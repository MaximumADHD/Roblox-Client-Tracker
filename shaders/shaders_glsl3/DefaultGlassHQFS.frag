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
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
uniform samplerCube EnvironmentMapTexture;

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
    vec2 _1874 = VARYING1.xy;
    _1874.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1287 = clamp(1.0 - (VARYING4.w * CB0[24].y), 0.0, 1.0);
    vec2 _1325 = VARYING0.xy * CB2[0].x;
    vec4 _1332 = texture(DiffuseMapTexture, _1325);
    vec2 _1454 = texture(NormalMapTexture, _1325).wy * 2.0;
    vec2 _1456 = _1454 - vec2(1.0);
    float _1464 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1454, _1456), 0.0, 1.0));
    vec2 _1359 = (vec3(_1456, _1464).xy + (vec3((texture(NormalDetailMapTexture, _1325 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1287;
    float _1365 = _1359.x;
    float _1370 = _1332.w;
    vec3 _1394 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1370 + CB2[3].w, 0.0, 1.0))) * _1332.xyz) * (1.0 + (_1365 * CB2[1].x))) * (texture(StudsMapTexture, _1874).x * 2.0);
    vec4 _1505 = mix(texture(SpecularMapTexture, _1325 * CB2[2].w), texture(SpecularMapTexture, _1325), vec4(clamp((_1287 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    vec2 _1428 = mix(vec2(CB2[1].y, CB2[1].z), (_1505.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1287));
    float _1033 = VARYING2.w * 2.0;
    float _1034 = clamp(_1033, 0.0, 1.0);
    float _1043 = clamp((_1033 - 1.0) + _1370, 0.0, 1.0);
    vec3 _1075 = normalize(((VARYING6.xyz * _1365) + (cross(VARYING5.xyz, VARYING6.xyz) * _1359.y)) + (VARYING5.xyz * (_1464 * 10.0)));
    vec3 _1079 = -CB0[11].xyz;
    float _1080 = dot(_1075, _1079);
    float _1608 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1552 = VARYING3.yzx - (VARYING3.yzx * _1608);
    vec4 _1562 = vec4(clamp(_1608, 0.0, 1.0));
    vec4 _1563 = mix(texture(LightMapTexture, _1552), vec4(0.0), _1562);
    vec4 _1568 = mix(texture(LightGridSkylightTexture, _1552), vec4(1.0), _1562);
    vec3 _1578 = (_1563.xyz * (_1563.w * 120.0)).xyz;
    float _1585 = _1568.x;
    vec4 _1618 = texture(ShadowMapTexture, VARYING7.xy);
    float _1631 = (1.0 - ((step(_1618.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1618.y)) * _1568.y;
    vec3 _1657 = vec3(CB0[15].x);
    vec3 _1658 = mix(_1394, _1394 * _1394, _1657);
    vec3 _1138 = normalize(VARYING4.xyz);
    vec3 _1169 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1075)).xyz;
    vec3 _1183 = mix(_1578, mix(_1169, (_1169 * _1169) * CB0[15].w, _1657), vec3(_1585)) * mix(vec3(1.0), _1658, vec3(0.5));
    float _1695 = 1.0 - dot(_1075, _1138);
    vec4 _1219 = mix(vec4(mix((min((_1578 + CB0[8].xyz) + (CB0[9].xyz * _1585), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1080, 0.0, 1.0)) + (CB0[12].xyz * max(-_1080, 0.0))) * _1631)) * _1658, _1183, vec3(mix((_1505.y * _1287) * CB2[0].w, 1.0, VARYING7.w))) * _1043, _1043), vec4(_1183, 1.0), vec4(((_1695 * _1695) * 0.800000011920928955078125) * _1034)) + vec4(CB0[10].xyz * ((((step(0.0, _1080) * mix(_1428.x, CB2[0].y, VARYING7.w)) * _1631) * pow(clamp(dot(_1075, normalize(_1079 + _1138)), 0.0, 1.0), mix(_1428.y, CB2[0].z, VARYING7.w))) * _1034), 0.0);
    vec3 _1231 = _1219.xyz;
    vec3 _1713 = mix(_1231, sqrt(clamp(_1231 * CB0[15].z, vec3(0.0), vec3(1.0))), _1657);
    _entryPointOutput = mix(vec4(CB0[14].xyz, 1.0), vec4(_1713.x, _1713.y, _1713.z, _1219.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
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
