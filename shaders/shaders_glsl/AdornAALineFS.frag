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

struct AdornParams
{
    mat4 World;
    vec4 Color;
    vec4 Params;
};

uniform vec4 CB0[32];
uniform vec4 CB1[6];
varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;

void main()
{
    vec2 _314 = (VARYING3 / vec4(VARYING3.w)).xy;
    vec2 _317 = (VARYING2 / vec4(VARYING2.w)).xy;
    vec2 _319 = normalize(_314 - _317);
    vec2 _322 = (VARYING0 / vec4(VARYING0.w)).xy;
    vec2 _326 = _322 - _317;
    if ((dot(_319, _326) < 0.0) && (dot(_319, (-_322) + _314) < 0.0))
    {
        discard;
    }
    vec4 _477 = vec4(1.0);
    _477.w = clamp(((CB1[5].w * 0.5) + 0.5) - ((abs(dot(vec2(_319.y, -_319.x), _326)) * 0.5) * CB1[5].y), 0.0, 1.0);
    vec4 _374 = _477 * CB1[4];
    vec4 _483 = _374;
    _483.w = 1.0 - pow(clamp(1.0 - _374.w, 0.0, 1.0), 0.4545454680919647216796875);
    vec3 _446 = mix(CB0[14].xyz, mix(_483.xyz, sqrt(clamp((_483.xyz * _483.xyz) * CB0[15].z, vec3(0.0), vec3(1.0))), vec3(CB0[15].x)).xyz, vec3(clamp((CB0[13].x * length(VARYING1)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_446.x, _446.y, _446.z, _483.w);
}

