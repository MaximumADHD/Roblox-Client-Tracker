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
    vec2 _1880 = VARYING1.xy;
    _1880.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1278 = VARYING4.w * CB0[24].y;
    float _1290 = clamp(1.0 - _1278, 0.0, 1.0);
    vec2 _1328 = VARYING0.xy * CB2[0].x;
    vec4 _1469 = mix(texture(DiffuseMapTexture, _1328 * CB2[2].y), texture(DiffuseMapTexture, _1328), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[4].x) - (CB2[3].x * CB2[4].x), 0.0, 1.0)));
    vec2 _1477 = texture(NormalMapTexture, _1328).wy * 2.0;
    vec2 _1479 = _1477 - vec2(1.0);
    float _1487 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1477, _1479), 0.0, 1.0));
    vec2 _1369 = (vec3(_1479, _1487).xy + (vec3((texture(NormalDetailMapTexture, _1328 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1290;
    float _1375 = _1369.x;
    vec4 _1407 = texture(SpecularMapTexture, _1328);
    vec2 _1431 = mix(vec2(CB2[1].y, CB2[1].z), (_1407.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1290));
    vec3 _1067 = normalize(((VARYING6.xyz * _1375) + (cross(VARYING5.xyz, VARYING6.xyz) * _1369.y)) + (VARYING5.xyz * _1487));
    vec3 _1071 = -CB0[11].xyz;
    float _1072 = dot(_1067, _1071);
    vec3 _1095 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1469.w + CB2[3].w, 0.0, 1.0))) * _1469.xyz) * (1.0 + (_1375 * CB2[1].x))) * (texture(StudsMapTexture, _1880).x * 2.0), VARYING2.w).xyz;
    vec3 _1519 = vec3(CB0[15].x);
    float _1621 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1565 = VARYING3.yzx - (VARYING3.yzx * _1621);
    vec4 _1575 = vec4(clamp(_1621, 0.0, 1.0));
    vec4 _1576 = mix(texture(LightMapTexture, _1565), vec4(0.0), _1575);
    vec4 _1581 = mix(texture(LightGridSkylightTexture, _1565), vec4(1.0), _1575);
    vec4 _1631 = texture(ShadowMapTexture, VARYING7.xy);
    float _1644 = (1.0 - ((step(_1631.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _1631.y)) * _1581.y;
    vec3 _1114 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1067)).xyz;
    vec3 _1163 = ((min(((_1576.xyz * (_1576.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1581.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1072, 0.0, 1.0)) + (CB0[12].xyz * max(-_1072, 0.0))) * _1644)) * mix(mix(_1095, _1095 * _1095, _1519).xyz, mix(_1114, (_1114 * _1114) * CB0[15].w, _1519), vec3((_1407.y * _1290) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, _1072) * _1431.x) * _1644) * pow(clamp(dot(_1067, normalize(_1071 + normalize(VARYING4.xyz))), 0.0, 1.0), _1431.y)));
    vec4 _1908 = vec4(_1163.x, _1163.y, _1163.z, vec4(0.0).w);
    _1908.w = VARYING2.w;
    vec2 _1188 = min(VARYING0.wz, VARYING1.wz);
    float _1195 = min(_1188.x, _1188.y) / _1278;
    vec3 _1219 = (_1908.xyz * clamp((clamp((_1278 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1195)) + _1195, 0.0, 1.0)).xyz;
    vec3 _1752 = mix(CB0[14].xyz, mix(_1219, sqrt(clamp(_1219 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1519).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_1752.x, _1752.y, _1752.z, _1908.w);
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
