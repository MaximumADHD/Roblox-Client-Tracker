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

struct LightShadowGPUTransform
{
    mat4 transform;
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
uniform vec4 CB8[24];
uniform vec4 CB2[5];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
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
    vec2 _2299 = VARYING1.xy;
    _2299.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1487 = VARYING4.w * CB0[24].y;
    vec2 _1594 = texture(NormalMapTexture, _2299).wy * 2.0;
    vec2 _1596 = _1594 - vec2(1.0);
    float _1604 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1594, _1596), 0.0, 1.0));
    vec2 _1565 = ((vec3(_1596, _1604).xy + (vec3((texture(NormalDetailMapTexture, VARYING0.xy * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * clamp(1.0 - _1487, 0.0, 1.0)).xy * CB2[4].w;
    vec3 _1264 = normalize(((VARYING6.xyz * _1565.x) + (cross(VARYING5.xyz, VARYING6.xyz) * _1565.y)) + (VARYING5.xyz * _1604));
    vec3 _1268 = -CB0[11].xyz;
    float _1269 = dot(_1264, _1268);
    vec3 _1292 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, _2299).x * 2.0), VARYING2.w).xyz;
    vec3 _1639 = vec3(CB0[15].x);
    float _1728 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1672 = VARYING3.yzx - (VARYING3.yzx * _1728);
    vec4 _1682 = vec4(clamp(_1728, 0.0, 1.0));
    vec4 _1683 = mix(texture(LightMapTexture, _1672), vec4(0.0), _1682);
    vec4 _1688 = mix(texture(LightGridSkylightTexture, _1672), vec4(1.0), _1682);
    float _1723 = _1688.y;
    vec3 _1805 = VARYING7.xyz - CB0[26].xyz;
    vec3 _1814 = VARYING7.xyz - CB0[27].xyz;
    vec3 _1823 = VARYING7.xyz - CB0[28].xyz;
    vec4 _1867 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(_1805, _1805) < CB0[26].w) ? 0 : ((dot(_1814, _1814) < CB0[27].w) ? 1 : ((dot(_1823, _1823) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1805, _1805) < CB0[26].w) ? 0 : ((dot(_1814, _1814) < CB0[27].w) ? 1 : ((dot(_1823, _1823) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1805, _1805) < CB0[26].w) ? 0 : ((dot(_1814, _1814) < CB0[27].w) ? 1 : ((dot(_1823, _1823) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1805, _1805) < CB0[26].w) ? 0 : ((dot(_1814, _1814) < CB0[27].w) ? 1 : ((dot(_1823, _1823) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _1918 = textureLod(ShadowAtlasTexture, _1867.xy, 0.0);
    vec2 _2334 = vec2(0.0);
    _2334.x = CB0[30].z;
    vec2 _2336 = _2334;
    _2336.y = CB0[30].w;
    float _1965 = (2.0 * _1867.z) - 1.0;
    float _1970 = exp(CB0[30].z * _1965);
    float _1977 = -exp((-CB0[30].w) * _1965);
    vec2 _1934 = (_2336 * CB0[31].y) * vec2(_1970, _1977);
    vec2 _1937 = _1934 * _1934;
    float _1990 = _1918.x;
    float _1997 = max(_1918.y - (_1990 * _1990), _1937.x);
    float _2001 = _1970 - _1990;
    float _2043 = _1918.z;
    float _2050 = max(_1918.w - (_2043 * _2043), _1937.y);
    float _2054 = _1977 - _2043;
    float _1850 = (_1269 > 0.0) ? mix(_1723, mix(min((_1970 <= _1990) ? 1.0 : clamp(((_1997 / (_1997 + (_2001 * _2001))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_1977 <= _2043) ? 1.0 : clamp(((_2050 / (_2050 + (_2054 * _2054))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1723, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _1320 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1264)).xyz;
    vec3 _1369 = ((min(((_1683.xyz * (_1683.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1688.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1269, 0.0, 1.0)) + (CB0[12].xyz * max(-_1269, 0.0))) * _1850)) * mix(mix(_1292, _1292 * _1292, _1639).xyz, mix(_1320, (_1320 * _1320) * CB0[15].w, _1639), vec3(VARYING7.w)).xyz) + (CB0[10].xyz * (((step(0.0, _1269) * CB2[0].y) * _1850) * pow(clamp(dot(_1264, normalize(_1268 + normalize(VARYING4.xyz))), 0.0, 1.0), CB2[0].z)));
    vec4 _2355 = vec4(_1369.x, _1369.y, _1369.z, vec4(0.0).w);
    _2355.w = VARYING2.w;
    vec2 _1394 = min(VARYING0.wz, VARYING1.wz);
    float _1401 = min(_1394.x, _1394.y) / _1487;
    vec3 _1425 = (_2355.xyz * clamp((clamp((_1487 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1401)) + _1401, 0.0, 1.0)).xyz;
    vec3 _2176 = mix(CB0[14].xyz, mix(_1425, sqrt(clamp(_1425 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1639).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_2176.x, _2176.y, _2176.z, _2355.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$EnvironmentMapTexture=s2
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
