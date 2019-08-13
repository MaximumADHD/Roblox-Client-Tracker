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
in vec4 VARYING2;
in vec4 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec3 _698 = vec3(CB0[15].x);
    float _641 = clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0);
    vec3 _660 = mix(VARYING2.xyz, pow(VARYING2.xyz * 1.35000002384185791015625, vec3(4.0)) * 4.0, _698);
    vec4 _960 = vec4(_660.x, _660.y, _660.z, vec4(0.0).w);
    _960.w = _641 * VARYING2.w;
    vec3 _870 = mix(CB0[14].xyz, mix(_960.xyz, sqrt(clamp(_960.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _698).xyz, vec3(_641));
    _entryPointOutput = vec4(_870.x, _870.y, _870.z, _960.w);
}

