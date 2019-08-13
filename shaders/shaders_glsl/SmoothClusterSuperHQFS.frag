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

uniform vec4 CB0[32];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;
varying vec3 VARYING8;

void main()
{
    vec4 _1212 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 _1222 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 _1227 = VARYING1 * CB3[0].xyxy;
    vec2 _1233 = VARYING3.xy * CB3[0].xy;
    vec2 _1236 = _1212.xy;
    vec2 _1238 = _1227.xy;
    vec2 _1246 = _1212.zw;
    vec2 _1248 = _1227.zw;
    vec4 _1184 = ((texture2DGradARB(AlbedoMapTexture, _1236, dFdx(_1238), dFdy(_1238)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, _1246, dFdx(_1248), dFdy(_1248)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, _1222, dFdx(_1233), dFdy(_1233)).yxzw * VARYING0.z);
    vec2 _1188 = _1184.yz - vec2(0.5);
    float _1268 = _1184.x;
    float _1275 = _1268 - _1188.y;
    vec3 _1009 = vec4(vec3(_1275, _1268, _1275) + (vec3(_1188.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1294 = vec3(CB0[15].x);
    float _1302 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    float _1409 = -VARYING6.x;
    vec2 _1470 = (((texture2DGradARB(NormalMapTexture, _1236, dFdx(_1238), dFdy(_1238)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, _1246, dFdx(_1248), dFdy(_1248)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, _1222, dFdx(_1233), dFdy(_1233)) * VARYING0.z)).wy * 2.0;
    vec2 _1472 = _1470 - vec2(1.0);
    vec3 _1444 = vec3(dot(VARYING8, VARYING0));
    vec3 _1465 = normalize(((mix(vec3(VARYING6.z, 0.0, _1409), vec3(VARYING6.y, _1409, 0.0), _1444) * _1472.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1444) * _1472.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1470, _1472), 0.0, 1.0))));
    vec4 _1516 = ((texture2DGradARB(SpecularMapTexture, _1236, dFdx(_1238), dFdy(_1238)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, _1246, dFdx(_1248), dFdy(_1248)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, _1222, dFdx(_1233), dFdy(_1233)) * VARYING0.z);
    vec3 _1045 = -CB0[11].xyz;
    float _1046 = dot(_1465, _1045);
    float _1673 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1617 = VARYING4.yzx - (VARYING4.yzx * _1673);
    vec4 _1627 = vec4(clamp(_1673, 0.0, 1.0));
    vec4 _1628 = mix(texture3D(LightMapTexture, _1617), vec4(0.0), _1627);
    vec4 _1633 = mix(texture3D(LightGridSkylightTexture, _1617), vec4(1.0), _1627);
    vec4 _1683 = texture2D(ShadowMapTexture, VARYING5.xy);
    float _1696 = (1.0 - ((step(_1683.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * _1683.y)) * _1633.y;
    vec3 _1126 = (((min(((_1628.xyz * (_1628.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1633.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_1046, 0.0, 1.0)) + (CB0[12].xyz * max(-_1046, 0.0))) * _1696)) + vec3((_1516.z * 2.0) * _1302)) * mix(_1009, _1009 * _1009, _1294).xyz) + (CB0[10].xyz * (((((step(0.0, _1046) * _1516.x) * _1302) * CB3[0].z) * _1696) * pow(clamp(dot(_1465, normalize(_1045 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_1516.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _1867 = vec4(_1126.x, _1126.y, _1126.z, vec4(0.0).w);
    _1867.w = 1.0;
    vec3 _1761 = mix(CB0[14].xyz, mix(_1867.xyz, sqrt(clamp(_1867.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1294).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1761.x, _1761.y, _1761.z, _1867.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
