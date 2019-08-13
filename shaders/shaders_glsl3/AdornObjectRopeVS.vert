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

struct AdornParams
{
    mat4 World;
    vec4 Color;
    vec4 Params;
};

uniform vec4 CB0[32];
uniform vec4 CB1[6];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec3 NORMAL;
out vec2 VARYING0;
out vec4 VARYING1;
out vec3 VARYING2;
out vec4 VARYING3;
out vec3 VARYING4;

void main()
{
    float _356 = ((0.5 * POSITION.x) + 0.5) * CB1[5].x;
    float _362 = exp((_356 - CB1[5].y) / CB1[5].z);
    float _365 = 0.5 / _362;
    float _367 = 0.5 * _362;
    vec3 _567 = vec3(0.0);
    _567.x = _356;
    vec3 _569 = _567;
    _569.y = (CB1[5].z * (_367 + _365)) - CB1[5].z;
    vec3 _571 = _569;
    _571.z = 0.0;
    vec3 _573 = vec3(0.0);
    _573.x = _367 - _365;
    vec3 _575 = _573;
    _575.y = -1.0;
    vec3 _577 = _575;
    _577.z = 0.0;
    vec3 _390 = normalize(_577);
    mat4 _427 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 _428 = vec4((_571 + (vec3(0.0, 0.0, 1.0) * (CB1[5].w * POSITION.z))) + (_390 * ((-CB1[5].w) * POSITION.y)), 1.0) * _427;
    vec3 _429 = _428.xyz;
    vec3 _440 = (((vec3(1.0, 0.0, 0.0) * NORMAL.x) + (vec3(0.0, 0.0, 1.0) * NORMAL.z)) - (_390 * NORMAL.y)) * mat3(_427[0].xyz, _427[1].xyz, _427[2].xyz);
    float _456 = dot(_440, -CB0[11].xyz);
    gl_Position = vec4(_428.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = TEXCOORD0;
    VARYING1 = CB1[4];
    VARYING2 = (CB0[10].xyz * clamp(_456, 0.0, 1.0)) + (CB0[12].xyz * clamp(-_456, 0.0, 1.0));
    VARYING3 = vec4(((_429 + (_440 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = CB0[7].xyz - _429;
}

