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

struct TrailParams
{
    vec4 Params;
};

uniform vec4 CB0[32];
uniform vec4 CB1[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D texTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec3 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec4 _483 = texture(texTexture, VARYING0.xy / vec2(VARYING0.w));
    vec3 _496 = (_483.xyz * VARYING1.xyz).xyz;
    vec3 _571 = vec3(CB0[15].x);
    float _673 = clamp(dot(step(CB0[20].xyz, abs(VARYING2 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _617 = VARYING2.yzx - (VARYING2.yzx * _673);
    vec4 _627 = vec4(clamp(_673, 0.0, 1.0));
    vec4 _628 = mix(texture(LightMapTexture, _617), vec4(0.0), _627);
    vec4 _633 = mix(texture(LightGridSkylightTexture, _617), vec4(1.0), _627);
    vec4 _683 = texture(ShadowMapTexture, VARYING3.xy);
    vec3 _514 = mix(_496, _496 * _496, _571).xyz;
    vec3 _535 = mix(_514, (min(((_628.xyz * (_628.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _633.x), vec3(CB0[17].w)) + (CB0[10].xyz * ((1.0 - ((step(_683.x, VARYING3.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING3.z - 0.5)), 0.0, 1.0)) * _683.y)) * _633.y))) * _514, vec3(CB1[0].z)).xyz;
    float _549 = VARYING1.w * _483.w;
    vec3 _555 = mix(CB0[14].xyz, mix(_535, sqrt(clamp(_535 * CB0[15].z, vec3(0.0), vec3(1.0))), _571).xyz, vec3(clamp((CB0[13].x * length(VARYING4)) + CB0[13].y, 0.0, 1.0))).xyz * _549;
    vec4 _819 = vec4(_555.x, _555.y, _555.z, vec4(0.0).w);
    _819.w = _549 * CB1[0].y;
    _entryPointOutput = _819;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$texTexture=s0
