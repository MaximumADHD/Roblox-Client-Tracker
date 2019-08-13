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
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2DArray AlbedoMapTexture;

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
    vec4 _762 = ((texture(AlbedoMapTexture, vec3(VARYING1.xy, VARYING2.x)).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, vec3(VARYING1.zw, VARYING2.z)).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 _766 = _762.yz - vec2(0.5);
    float _821 = VARYING7.x * _762.x;
    float _825 = _766.x;
    float _829 = _766.y;
    float _831 = (VARYING7.y * _825) - (VARYING7.z * _829);
    float _841 = (VARYING7.z * _825) + (VARYING7.y * _829);
    float _858 = _821 - _841;
    vec3 _679 = vec4(vec3(_858, _821, _858) + (vec3(_831, _841, _831) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _877 = vec3(CB0[15].x);
    float _979 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _923 = VARYING4.yzx - (VARYING4.yzx * _979);
    vec4 _933 = vec4(clamp(_979, 0.0, 1.0));
    vec4 _934 = mix(texture(LightMapTexture, _923), vec4(0.0), _933);
    vec4 _939 = mix(texture(LightGridSkylightTexture, _923), vec4(1.0), _933);
    vec4 _989 = texture(ShadowMapTexture, VARYING5.xy);
    vec3 _699 = (min(((_934.xyz * (_934.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _939.x), vec3(CB0[17].w)) + (VARYING6 * ((1.0 - ((step(_989.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * _989.y)) * _939.y))) * mix(_679, _679 * _679, _877).xyz;
    vec4 _1153 = vec4(_699.x, _699.y, _699.z, vec4(0.0).w);
    _1153.w = 1.0;
    vec3 _1055 = mix(CB0[14].xyz, mix(_1153.xyz, sqrt(clamp(_1153.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _877).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_1055.x, _1055.y, _1055.z, _1153.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
