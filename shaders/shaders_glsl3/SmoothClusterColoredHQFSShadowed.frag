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
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 _1073 = vec3(VARYING1.xy, VARYING2.x);
    vec3 _1082 = vec3(VARYING1.zw, VARYING2.z);
    vec4 _1043 = ((texture(AlbedoMapTexture, _1073).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, _1082).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 _1047 = _1043.yz - vec2(0.5);
    float _1102 = VARYING9.x * _1043.x;
    float _1106 = _1047.x;
    float _1110 = _1047.y;
    float _1112 = (VARYING9.y * _1106) - (VARYING9.z * _1110);
    float _1122 = (VARYING9.z * _1106) + (VARYING9.y * _1110);
    float _1139 = _1102 - _1122;
    vec3 _877 = vec4(vec3(_1139, _1102, _1139) + (vec3(_1112, _1122, _1112) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _1158 = vec3(CB0[15].x);
    float _1166 = clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0);
    vec4 _1199 = ((texture(SpecularMapTexture, _1073) * VARYING0.x) + (texture(SpecularMapTexture, _1082) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 _902 = -CB0[11].xyz;
    float _903 = dot(VARYING6, _902);
    float _1318 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1262 = VARYING4.yzx - (VARYING4.yzx * _1318);
    vec4 _1272 = vec4(clamp(_1318, 0.0, 1.0));
    vec4 _1273 = mix(texture(LightMapTexture, _1262), vec4(0.0), _1272);
    vec4 _1278 = mix(texture(LightGridSkylightTexture, _1262), vec4(1.0), _1272);
    vec4 _1328 = texture(ShadowMapTexture, VARYING5.xy);
    float _1341 = (1.0 - ((step(_1328.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * _1328.y)) * _1278.y;
    vec3 _983 = (((min(((_1273.xyz * (_1273.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1278.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(_903, 0.0, 1.0)) + (CB0[12].xyz * max(-_903, 0.0))) * _1341)) + vec3((_1199.z * 2.0) * _1166)) * mix(_877, _877 * _877, _1158).xyz) + (CB0[10].xyz * (((((step(0.0, _903) * _1199.x) * _1166) * CB3[0].z) * _1341) * pow(clamp(dot(VARYING6, normalize(_902 + normalize(VARYING7.xyz))), 0.0, 1.0), (clamp(_1199.y, 0.0, 1.0) * 128.0) + 0.00999999977648258209228515625)));
    vec4 _1522 = vec4(_983.x, _983.y, _983.z, vec4(0.0).w);
    _1522.w = 1.0;
    vec3 _1406 = mix(CB0[14].xyz, mix(_1522.xyz, sqrt(clamp(_1522.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1158).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_1406.x, _1406.y, _1406.z, _1522.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2
