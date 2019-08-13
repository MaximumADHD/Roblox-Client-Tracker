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
uniform sampler2D GBufferDepthTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec3 _518 = vec3(CB0[15].x);
    vec4 _430 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float _529 = _430.w;
    vec4 _468 = texture(DiffuseMapTexture, VARYING0.xy);
    float _544 = _468.x;
    float _558 = (_544 > 0.0) ? ((1.0 - clamp(abs(_544 - CB0[14].w) * 13.0, 0.0, 1.0)) * _468.w) : 0.0;
    float _476 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), normalize(VARYING4.xyz))) * 2.0, 0.0, 1.0), 1.0 - clamp(((texture(GBufferDepthTexture, ((_430.xy * 0.5) + vec2(0.5 * _529)).xy / vec2(_529)).x * 500.0) - _529) * 3.0, 0.0, 1.0)), _558);
    vec4 _491 = vec4(mix(VARYING2.xyz, VARYING2.xyz * VARYING2.xyz, _518), VARYING2.w * max(mix(_558, 1.0, _476) * _476, VARYING1.x));
    vec3 _503 = _491.xyz;
    vec3 _572 = mix(_503, sqrt(clamp(_503 * CB0[15].z, vec3(0.0), vec3(1.0))), _518);
    _entryPointOutput = mix(vec4(CB0[14].xyz, 1.0), vec4(_572.x, _572.y, _572.z, _491.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
}

//$$GBufferDepthTexture=s10
//$$DiffuseMapTexture=s3
