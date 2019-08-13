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
uniform sampler2D DiffuseMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING4;
varying vec4 VARYING5;

void main()
{
    vec3 _403 = vec3(CB0[15].x);
    vec4 _353 = texture2D(DiffuseMapTexture, VARYING0.xy);
    float _411 = _353.x;
    float _425 = (_411 > 0.0) ? ((1.0 - clamp(abs(_411 - CB0[14].w) * 13.0, 0.0, 1.0)) * _353.w) : 0.0;
    float _361 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), normalize(VARYING4.xyz))) * 2.0, 0.0, 1.0), 0.0), _425);
    vec4 _376 = vec4(mix(VARYING2.xyz, VARYING2.xyz * VARYING2.xyz, _403), VARYING2.w * max(mix(_425, 1.0, _361) * _361, VARYING1.x));
    vec3 _388 = _376.xyz;
    vec3 _439 = mix(_388, sqrt(clamp(_388 * CB0[15].z, vec3(0.0), vec3(1.0))), _403);
    gl_FragData[0] = mix(vec4(CB0[14].xyz, 1.0), vec4(_439.x, _439.y, _439.z, _376.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
}

//$$DiffuseMapTexture=s3
