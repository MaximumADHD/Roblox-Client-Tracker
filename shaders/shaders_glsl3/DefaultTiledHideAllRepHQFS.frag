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
    vec2 _1980 = VARYING1.xy;
    _1980.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1306 = VARYING4.w * CB0[24].y;
    float _1318 = clamp(1.0 - _1306, 0.0, 1.0);
    vec2 _1368 = VARYING0.xy * CB2[0].x;
    vec4 _1523 = mix(texture(DiffuseMapTexture, _1368 * CB2[2].y), texture(DiffuseMapTexture, _1368), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[4].x) - (CB2[3].x * CB2[4].x), 0.0, 1.0)));
    vec2 _1554 = mix(texture(NormalMapTexture, _1368 * CB2[2].z), texture(NormalMapTexture, _1368), vec4(clamp((_1318 * CB2[4].y) - (CB2[3].y * CB2[4].y), 0.0, 1.0))).wy * 2.0;
    vec2 _1556 = _1554 - vec2(1.0);
    float _1564 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1554, _1556), 0.0, 1.0));
    vec2 _1416 = (vec3(_1556, _1564).xy + (vec3((texture(NormalDetailMapTexture, _1368 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1318;
    float _1422 = _1416.x;
    vec4 _1605 = mix(texture(SpecularMapTexture, _1368 * CB2[2].w), texture(SpecularMapTexture, _1368), vec4(clamp((_1318 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    vec2 _1485 = mix(vec2(CB2[1].y, CB2[1].z), (_1605.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1318));
    vec3 _1095 = normalize(((VARYING6.xyz * _1422) + (cross(VARYING5.xyz, VARYING6.xyz) * _1416.y)) + (VARYING5.xyz * _1564));
    vec3 _1099 = -CB0[11].xyz;
    float _1100 = dot(_1095, _1099);
    vec3 _1123 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1523.w + CB2[3].w, 0.0, 1.0))) * _1523.xyz) * (1.0 + (_1422 * CB2[1].x))) * (texture(StudsMapTexture, _1980).x * 2.0), VARYING2.w).xyz;
    vec3 _1619 = vec3(CB0[15].x);
    float _1721 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1665 = VARYING3.yzx - (VARYING3.yzx * _1721);
    vec4 _1675 = vec4(clamp(_1721, 0.0, 1.0));
    vec4 _1676 = mix(texture(LightMapTexture, _1665), vec4(0.0), _1675);
    vec4 _1681 = mix(texture(LightGridSkylightTexture, _1665), vec4(1.0), _1675);
    vec4 _1731 = texture(ShadowMapTexture, VARYING7.xy);
    float _1744 = (1.0 - ((step(_1731.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1731.y)) * _1681.y;
    vec3 _1142 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1095)).xyz;
    vec3 _1191 = ((min(((_1676.xyz * (_1676.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1681.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1100, 0.0, 1.0)) + (CB0[12].xyz * max(-_1100, 0.0))) * _1744)) * mix(mix(_1123, _1123 * _1123, _1619).xyz, mix(_1142, (_1142 * _1142) * CB0[15].w, _1619), vec3((_1605.y * _1318) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, _1100) * _1485.x) * _1744) * pow(clamp(dot(_1095, normalize(_1099 + normalize(VARYING4.xyz))), 0.0, 1.0), _1485.y)));
    vec4 _2008 = vec4(_1191.x, _1191.y, _1191.z, vec4(0.0).w);
    _2008.w = VARYING2.w;
    vec2 _1216 = min(VARYING0.wz, VARYING1.wz);
    float _1223 = min(_1216.x, _1216.y) / _1306;
    vec3 _1247 = (_2008.xyz * clamp((clamp((_1306 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1223)) + _1223, 0.0, 1.0)).xyz;
    vec3 _1852 = mix(CB0[14].xyz, mix(_1247, sqrt(clamp(_1247 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1619).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_1852.x, _1852.y, _1852.z, _2008.w);
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
