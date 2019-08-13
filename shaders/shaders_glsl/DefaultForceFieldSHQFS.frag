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

uniform vec4 CB0[32];
uniform sampler2D GBufferDepthTexture;
uniform sampler2D DiffuseMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING4;
varying vec4 VARYING5;

void main()
{
    vec3 _506 = vec3(CB0[15].x);
    vec4 _418 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float _517 = _418.w;
    vec4 _456 = texture2D(DiffuseMapTexture, VARYING0.xy);
    float _532 = _456.x;
    float _546 = (_532 > 0.0) ? ((1.0 - clamp(abs(_532 - CB0[14].w) * 13.0, 0.0, 1.0)) * _456.w) : 0.0;
    float _464 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), normalize(VARYING4.xyz))) * 2.0, 0.0, 1.0), 1.0 - clamp(((texture2D(GBufferDepthTexture, ((_418.xy * 0.5) + vec2(0.5 * _517)).xy / vec2(_517)).x * 500.0) - _517) * 3.0, 0.0, 1.0)), _546);
    vec4 _479 = vec4(mix(VARYING2.xyz, VARYING2.xyz * VARYING2.xyz, _506), VARYING2.w * max(mix(_546, 1.0, _464) * _464, VARYING1.x));
    vec3 _491 = _479.xyz;
    vec3 _560 = mix(_491, sqrt(clamp(_491 * CB0[15].z, vec3(0.0), vec3(1.0))), _506);
    gl_FragData[0] = mix(vec4(CB0[14].xyz, 1.0), vec4(_560.x, _560.y, _560.z, _479.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
}

//$$GBufferDepthTexture=s10
//$$DiffuseMapTexture=s3
