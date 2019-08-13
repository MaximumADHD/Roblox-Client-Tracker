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
    vec2 _2566 = VARYING1.xy;
    _2566.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float _1625 = VARYING4.w * CB0[24].y;
    float _1637 = clamp(1.0 - _1625, 0.0, 1.0);
    vec2 _1816 = VARYING0.xy * CB2[0].x;
    vec2 _1817 = _1816 * 4.0;
    vec2 _1827 = _1817 * 0.25;
    vec4 _1836 = vec4(dFdx(_1827), dFdy(_1827));
    vec2 _1843 = (texture(WangTileMapTexture, _1817 * vec2(0.0078125)).xy * 0.99609375) + (fract(_1817) * 0.25);
    vec2 _1848 = _1836.xy;
    vec2 _1850 = _1836.zw;
    vec4 _1851 = textureGrad(DiffuseMapTexture, _1843, _1848, _1850);
    vec2 _1864 = textureGrad(NormalMapTexture, _1843, _1848, _1850).wy * 2.0;
    vec2 _1866 = _1864 - vec2(1.0);
    float _1874 = sqrt(clamp(1.0 + dot(vec2(1.0) - _1864, _1866), 0.0, 1.0));
    vec2 _1728 = (vec3(_1866, _1874).xy + (vec3((texture(NormalDetailMapTexture, _1816 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * _1637;
    float _1734 = _1728.x;
    vec4 _1903 = textureGrad(SpecularMapTexture, _1843, _1848, _1850);
    vec2 _1791 = mix(vec2(CB2[1].y, CB2[1].z), (_1903.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(_1637));
    vec3 _1405 = normalize(((VARYING6.xyz * _1734) + (cross(VARYING5.xyz, VARYING6.xyz) * _1728.y)) + (VARYING5.xyz * _1874));
    vec3 _1409 = -CB0[11].xyz;
    float _1410 = dot(_1405, _1409);
    vec3 _1433 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(_1851.w + CB2[3].w, 0.0, 1.0))) * _1851.xyz) * (1.0 + (_1734 * CB2[1].x))) * (texture(StudsMapTexture, _2566).x * 2.0), VARYING2.w).xyz;
    vec3 _1914 = vec3(CB0[15].x);
    float _2003 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1947 = VARYING3.yzx - (VARYING3.yzx * _2003);
    vec4 _1957 = vec4(clamp(_2003, 0.0, 1.0));
    vec4 _1958 = mix(texture(LightMapTexture, _1947), vec4(0.0), _1957);
    vec4 _1963 = mix(texture(LightGridSkylightTexture, _1947), vec4(1.0), _1957);
    float _1998 = _1963.y;
    vec3 _2080 = VARYING7.xyz - CB0[26].xyz;
    vec3 _2089 = VARYING7.xyz - CB0[27].xyz;
    vec3 _2098 = VARYING7.xyz - CB0[28].xyz;
    vec4 _2142 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(_2080, _2080) < CB0[26].w) ? 0 : ((dot(_2089, _2089) < CB0[27].w) ? 1 : ((dot(_2098, _2098) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_2080, _2080) < CB0[26].w) ? 0 : ((dot(_2089, _2089) < CB0[27].w) ? 1 : ((dot(_2098, _2098) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_2080, _2080) < CB0[26].w) ? 0 : ((dot(_2089, _2089) < CB0[27].w) ? 1 : ((dot(_2098, _2098) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_2080, _2080) < CB0[26].w) ? 0 : ((dot(_2089, _2089) < CB0[27].w) ? 1 : ((dot(_2098, _2098) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _2193 = textureLod(ShadowAtlasTexture, _2142.xy, 0.0);
    vec2 _2604 = vec2(0.0);
    _2604.x = CB0[30].z;
    vec2 _2606 = _2604;
    _2606.y = CB0[30].w;
    float _2240 = (2.0 * _2142.z) - 1.0;
    float _2245 = exp(CB0[30].z * _2240);
    float _2252 = -exp((-CB0[30].w) * _2240);
    vec2 _2209 = (_2606 * CB0[31].y) * vec2(_2245, _2252);
    vec2 _2212 = _2209 * _2209;
    float _2265 = _2193.x;
    float _2272 = max(_2193.y - (_2265 * _2265), _2212.x);
    float _2276 = _2245 - _2265;
    float _2318 = _2193.z;
    float _2325 = max(_2193.w - (_2318 * _2318), _2212.y);
    float _2329 = _2252 - _2318;
    float _2125 = (_1410 > 0.0) ? mix(_1998, mix(min((_2245 <= _2265) ? 1.0 : clamp(((_2272 / (_2272 + (_2276 * _2276))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_2252 <= _2318) ? 1.0 : clamp(((_2325 / (_2325 + (_2329 * _2329))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1998, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _1461 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, _1405)).xyz;
    vec3 _1510 = ((min(((_1958.xyz * (_1958.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1963.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1410, 0.0, 1.0)) + (CB0[12].xyz * max(-_1410, 0.0))) * _2125)) * mix(mix(_1433, _1433 * _1433, _1914).xyz, mix(_1461, (_1461 * _1461) * CB0[15].w, _1914), vec3((_1903.y * _1637) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, _1410) * _1791.x) * _2125) * pow(clamp(dot(_1405, normalize(_1409 + normalize(VARYING4.xyz))), 0.0, 1.0), _1791.y)));
    vec4 _2625 = vec4(_1510.x, _1510.y, _1510.z, vec4(0.0).w);
    _2625.w = VARYING2.w;
    vec2 _1535 = min(VARYING0.wz, VARYING1.wz);
    float _1542 = min(_1535.x, _1535.y) / _1625;
    vec3 _1566 = (_2625.xyz * clamp((clamp((_1625 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - _1542)) + _1542, 0.0, 1.0)).xyz;
    vec3 _2451 = mix(CB0[14].xyz, mix(_1566, sqrt(clamp(_1566 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1914).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_2451.x, _2451.y, _2451.z, _2625.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$EnvironmentMapTexture=s2
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
