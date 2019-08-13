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

uniform vec4 CB0[32];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec3 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 _1001 = vec3(VARYING1.xy, VARYING2.x);
    vec3 _1010 = vec3(VARYING1.zw, VARYING2.z);
    vec4 _977 = ((texture(AlbedoMapTexture, _1001).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, _1010).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 _981 = _977.yz - vec2(0.5);
    float _1023 = _977.x;
    float _1030 = _1023 - _981.y;
    vec3 _813 = vec4(vec3(_1030, _1023, _1030) + (vec3(_981.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1049 = vec3(CB0[15].x);
    float _1057 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    vec4 _1090 = ((texture(SpecularMapTexture, _1001) * VARYING0.x) + (texture(SpecularMapTexture, _1010) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 _838 = -CB0[11].xyz;
    float _839 = dot(VARYING6, _838);
    float _1209 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1153 = VARYING4.yzx - (VARYING4.yzx * _1209);
    vec4 _1163 = vec4(clamp(_1209, 0.0, 1.0));
    vec4 _1164 = mix(texture(LightMapTexture, _1153), vec4(0.0), _1163);
    vec4 _1169 = mix(texture(LightGridSkylightTexture, _1153), vec4(1.0), _1163);
    vec4 _1219 = texture(ShadowMapTexture, VARYING5.xy);
    float _1232 = (1.0 - ((step(_1219.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * _1219.y)) * _1169.y;
    vec3 _919 = (((min(((_1164.xyz * (_1164.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1169.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_839, 0.0, 1.0)) + (CB0[12].xyz * max(-_839, 0.0))) * _1232)) + vec3((_1090.z * 2.0) * _1057)) * mix(_813, _813 * _813, _1049).xyz) + (CB0[10].xyz * (((((step(0.0, _839) * _1090.x) * _1057) * CB3[0].z) * _1232) * pow(clamp(dot(VARYING6, normalize(_838 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_1090.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _1395 = vec4(_919.x, _919.y, _919.z, vec4(0.0).w);
    _1395.w = 1.0;
    vec3 _1297 = mix(CB0[14].xyz, mix(_1395.xyz, sqrt(clamp(_1395.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1049).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_1297.x, _1297.y, _1297.z, _1395.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
