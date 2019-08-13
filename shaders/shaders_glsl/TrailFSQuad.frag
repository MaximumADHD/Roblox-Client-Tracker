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

struct TrailParams
{
    vec4 Params;
};

uniform vec4 CB0[32];
uniform vec4 CB1[1];
uniform sampler2D texTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;

void main()
{
    vec4 _238 = texture2D(texTexture, VARYING0.xy / vec2(VARYING0.w));
    vec3 _251 = (_238.xyz * VARYING1.xyz).xyz;
    vec3 _301 = vec3(CB0[15].x);
    vec3 _265 = mix(_251, _251 * _251, _301).xyz;
    float _279 = VARYING1.w * _238.w;
    vec3 _285 = mix(CB0[14].xyz, mix(_265, sqrt(clamp(_265 * CB0[15].z, vec3(0.0), vec3(1.0))), _301).xyz, vec3(clamp((CB0[13].x * length(VARYING2)) + CB0[13].y, 0.0, 1.0))).xyz * _279;
    vec4 _368 = vec4(_285.x, _285.y, _285.z, vec4(0.0).w);
    _368.w = _279 * CB1[0].y;
    gl_FragData[0] = _368;
}

//$$texTexture=s0
