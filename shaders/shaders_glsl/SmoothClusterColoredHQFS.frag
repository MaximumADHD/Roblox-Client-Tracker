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
varying vec4 VARYING9;

void main()
{
    vec4 _1100 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 _1110 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 _1115 = VARYING1 * CB3[0].xyxy;
    vec2 _1121 = VARYING3.xy * CB3[0].xy;
    vec2 _1124 = _1100.xy;
    vec2 _1126 = _1115.xy;
    vec2 _1134 = _1100.zw;
    vec2 _1136 = _1115.zw;
    vec4 _1066 = ((texture2DGradARB(AlbedoMapTexture, _1124, dFdx(_1126), dFdy(_1126)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, _1134, dFdx(_1136), dFdy(_1136)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, _1110, dFdx(_1121), dFdy(_1121)).yxzw * VARYING0.z);
    vec2 _1070 = _1066.yz - vec2(0.5);
    float _1163 = VARYING9.x * _1066.x;
    float _1167 = _1070.x;
    float _1171 = _1070.y;
    float _1173 = (VARYING9.y * _1167) - (VARYING9.z * _1171);
    float _1183 = (VARYING9.z * _1167) + (VARYING9.y * _1171);
    float _1200 = _1163 - _1183;
    vec3 _900 = vec4(vec3(_1200, _1163, _1200) + (vec3(_1173, _1183, _1173) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1219 = vec3(CB0[15].x);
    float _1227 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    vec4 _1260 = ((texture2DGradARB(SpecularMapTexture, _1124, dFdx(_1126), dFdy(_1126)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, _1134, dFdx(_1136), dFdy(_1136)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, _1110, dFdx(_1121), dFdy(_1121)) * VARYING0.z);
    vec3 _925 = -CB0[11].xyz;
    float _926 = dot(VARYING6, _925);
    float _1417 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1361 = VARYING4.yzx - (VARYING4.yzx * _1417);
    vec4 _1371 = vec4(clamp(_1417, 0.0, 1.0));
    vec4 _1372 = mix(texture3D(LightMapTexture, _1361), vec4(0.0), _1371);
    vec4 _1377 = mix(texture3D(LightGridSkylightTexture, _1361), vec4(1.0), _1371);
    vec4 _1427 = texture2D(ShadowMapTexture, VARYING5.xy);
    float _1440 = (1.0 - ((step(_1427.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * _1427.y)) * _1377.y;
    vec3 _1006 = (((min(((_1372.xyz * (_1372.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1377.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_926, 0.0, 1.0)) + (CB0[12].xyz * max(-_926, 0.0))) * _1440)) + vec3((_1260.z * 2.0) * _1227)) * mix(_900, _900 * _900, _1219).xyz) + (CB0[10].xyz * (((((step(0.0, _926) * _1260.x) * _1227) * CB3[0].z) * _1440) * pow(clamp(dot(VARYING6, normalize(_925 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_1260.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _1617 = vec4(_1006.x, _1006.y, _1006.z, vec4(0.0).w);
    _1617.w = 1.0;
    vec3 _1505 = mix(CB0[14].xyz, mix(_1617.xyz, sqrt(clamp(_1617.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1219).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1505.x, _1505.y, _1505.z, _1617.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
