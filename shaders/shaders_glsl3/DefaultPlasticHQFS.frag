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
    vec2 _1703 = VARYING1.xy;
    _1703.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1182 = VARYING4.w * CB0[24].y;
    vec2 _1289 = texture(NormalMapTexture, _1703).wy * 2.0;
    vec2 _1291 = _1289 - vec2(1.0);
    float _1299 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1289, _1291), 0.0, 1.0));
    vec2 _1260 = ((vec3(_1291, _1299).xy + (vec3((texture(NormalDetailMapTexture, VARYING0.xy * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * clamp(1.0 - _1182, 0.0, 1.0)).xy * CB2[4].w;
    vec3 _968 = normalize(((VARYING6.xyz * _1260.x) + (cross(VARYING5.xyz, VARYING6.xyz) * _1260.y)) + (VARYING5.xyz * _1299));
    vec3 _972 = -CB0[11].xyz;
    float _973 = dot(_968, _972);
    vec3 _996 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, _1703).x * 2.0), VARYING2.w).xyz;
    vec3 _1334 = vec3(CB0[15].x);
    float _1436 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1380 = VARYING3.yzx - (VARYING3.yzx * _1436);
    vec4 _1390 = vec4(clamp(_1436, 0.0, 1.0));
    vec4 _1391 = mix(texture(LightMapTexture, _1380), vec4(0.0), _1390);
    vec4 _1396 = mix(texture(LightGridSkylightTexture, _1380), vec4(1.0), _1390);
    vec4 _1446 = texture(ShadowMapTexture, VARYING7.xy);
    float _1459 = (1.0 - ((step(_1446.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1446.y)) * _1396.y;
    vec3 _1015 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _968)).xyz;
    vec3 _1064 = ((min(((_1391.xyz * (_1391.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1396.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_973, 0.0, 1.0)) + (CB0[12].xyz * max(-_973, 0.0))) * _1459)) * mix(mix(_996, _996 * _996, _1334).xyz, mix(_1015, (_1015 * _1015) * CB0[15].w, _1334), vec3(VARYING7.w)).xyz) + (CB0[10].xyz * (((step(0.0, _973) * CB2[0].y) * _1459) * pow(clamp(dot(_968, normalize(_972 + normalize(VARYING4.xyz))), 0.0, 1.0), CB2[0].z)));
    vec4 _1727 = vec4(_1064.x, _1064.y, _1064.z, vec4(0.0).w);
    _1727.w = VARYING2.w;
    vec2 _1089 = min(VARYING0.wz, VARYING1.wz);
    float _1096 = min(_1089.x, _1089.y) / _1182;
    vec3 _1120 = (_1727.xyz * clamp((clamp((_1182 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1096)) + _1096, 0.0, 1.0)).xyz;
    vec3 _1567 = mix(CB0[14].xyz, mix(_1120, sqrt(clamp(_1120 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1334).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_1567.x, _1567.y, _1567.z, _1727.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$EnvironmentMapTexture=s2
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
