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
    vec4 _195 = texture2D(texTexture, VARYING0.xy);
    vec3 _210 = (_195.xyz * CB1[0].xyz).xyz;
    float _224 = (_195.w * VARYING1.w) * clamp(VARYING0.z, 0.0, 1.0);
    vec3 _230 = mix(_210, sqrt(clamp((_210 * _210) * CB0[15].z, vec3(0.0), vec3(1.0))), vec3(CB0[15].x)).xyz * _224;
    vec4 _299 = vec4(_230.x, _230.y, _230.z, vec4(0.0).w);
    _299.w = _224 * CB1[1].y;
    gl_FragData[0] = _299;
}

//$$texTexture=s0
