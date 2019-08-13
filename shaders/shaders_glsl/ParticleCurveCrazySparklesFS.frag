#version 110

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

struct EmitterParams
{
    vec4 ModulateColor;
    vec4 Params;
    vec4 AtlasParams;
};

uniform vec4 CB0[32];
uniform vec4 CB1[3];
uniform sampler2D texTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 _222 = texture2D(texTexture, VARYING0.xy);
    vec3 _232 = VARYING1.xyz * CB1[0].xyz;
    float _234 = _222.w;
    float _235 = _234 * 2.0;
    vec3 _241 = _232 * _235;
    vec3 _248 = mix(_232, _222.xyz, vec3(_235 - 1.0));
    bvec3 _249 = bvec3(_234 < 0.5);
    vec3 _261 = (vec3(_249.x ? _241.x : _248.x, _249.y ? _241.y : _248.y, _249.z ? _241.z : _248.z).xyz * VARYING1.w).xyz;
    vec3 _300 = mix(_261, sqrt(clamp((_261 * _261) * CB0[15].z, vec3(0.0), vec3(1.0))), vec3(CB0[15].x));
    float _267 = clamp(VARYING0.z, 0.0, 1.0);
    vec4 _342 = vec4(_300.x, _300.y, _300.z, vec4(0.0).w);
    _342.w = (CB1[1].y * _234) * (VARYING1.w * _267);
    vec3 _281 = _342.xyz * _267;
    gl_FragData[0] = vec4(_281.x, _281.y, _281.z, _342.w);
}

//$$texTexture=s0
