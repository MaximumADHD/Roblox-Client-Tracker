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
uniform sampler2D SpecularMapTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec4 _1028 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 _1038 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 _1043 = VARYING1 * CB3[0].xyxy;
    vec2 _1049 = VARYING3.xy * CB3[0].xy;
    vec2 _1052 = _1028.xy;
    vec2 _1054 = _1043.xy;
    vec2 _1062 = _1028.zw;
    vec2 _1064 = _1043.zw;
    vec4 _1000 = ((texture2DGradARB(AlbedoMapTexture, _1052, dFdx(_1054), dFdy(_1054)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, _1062, dFdx(_1064), dFdy(_1064)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, _1038, dFdx(_1049), dFdy(_1049)).yxzw * VARYING0.z);
    vec2 _1004 = _1000.yz - vec2(0.5);
    float _1084 = _1000.x;
    float _1091 = _1084 - _1004.y;
    vec3 _836 = vec4(vec3(_1091, _1084, _1091) + (vec3(_1004.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1110 = vec3(CB0[15].x);
    float _1118 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    vec4 _1151 = ((texture2DGradARB(SpecularMapTexture, _1052, dFdx(_1054), dFdy(_1054)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, _1062, dFdx(_1064), dFdy(_1064)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, _1038, dFdx(_1049), dFdy(_1049)) * VARYING0.z);
    vec3 _861 = -CB0[11].xyz;
    float _862 = dot(VARYING6, _861);
    float _1308 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1252 = VARYING4.yzx - (VARYING4.yzx * _1308);
    vec4 _1262 = vec4(clamp(_1308, 0.0, 1.0));
    vec4 _1263 = mix(texture3D(LightMapTexture, _1252), vec4(0.0), _1262);
    vec4 _1268 = mix(texture3D(LightGridSkylightTexture, _1252), vec4(1.0), _1262);
    vec4 _1318 = texture2D(ShadowMapTexture, VARYING5.xy);
    float _1331 = (1.0 - ((step(_1318.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * _1318.y)) * _1268.y;
    vec3 _942 = (((min(((_1263.xyz * (_1263.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1268.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_862, 0.0, 1.0)) + (CB0[12].xyz * max(-_862, 0.0))) * _1331)) + vec3((_1151.z * 2.0) * _1118)) * mix(_836, _836 * _836, _1110).xyz) + (CB0[10].xyz * (((((step(0.0, _862) * _1151.x) * _1118) * CB3[0].z) * _1331) * pow(clamp(dot(VARYING6, normalize(_861 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_1151.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _1490 = vec4(_942.x, _942.y, _942.z, vec4(0.0).w);
    _1490.w = 1.0;
    vec3 _1396 = mix(CB0[14].xyz, mix(_1490.xyz, sqrt(clamp(_1490.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1110).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1396.x, _1396.y, _1396.z, _1490.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
