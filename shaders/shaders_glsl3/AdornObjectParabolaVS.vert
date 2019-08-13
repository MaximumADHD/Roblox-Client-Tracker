#version 150

struct AdornParams
{
    mat4 World;
    vec4 Color;
    vec4 Params;
};

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

uniform vec4 CB1[6];
uniform vec4 CB0[32];
in vec4 POSITION;
out vec4 VARYING0;
out vec3 VARYING1;

void main()
{
    float _201 = POSITION.x * 0.5;
    float _207 = (_201 + 0.5) * CB1[5].z;
    float _227 = atan(((2.0 * CB1[5].x) * _207) + CB1[5].y);
    vec2 _237 = POSITION.yz * CB1[5].w;
    float _238 = _237.x;
    vec4 _263 = vec4(((-_238) * sin(_227)) + _207, (_238 * cos(_227)) + (((CB1[5].x * _207) * _207) + (CB1[5].y * _207)), _237.y, 1.0) * mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    gl_Position = vec4(_263.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec4(CB1[4].xyz, 0.5 - _201);
    VARYING1 = CB0[7].xyz - _263.xyz;
}

