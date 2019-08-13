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
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;

void main()
{
    float _348 = ((POSITION.x + 1.0) * (3.141592502593994140625 * CB1[5].w)) + 1.57079637050628662109375;
    float _350 = sin(_348);
    float _352 = cos(_348);
    vec2 _371 = normalize(vec2(CB1[5].x, (6.28318500518798828125 * CB1[5].y) * CB1[5].w));
    float _376 = _371.y;
    vec3 _386 = vec3(0.0, _350, _352);
    vec3 _398 = (_386 * POSITION.y) - (cross(_386, vec3(_371.x, _352 * _376, (-_350) * _376)) * POSITION.z);
    mat4 _411 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 _412 = vec4(vec3((POSITION.x * CB1[5].x) * 0.5, _350 * CB1[5].y, _352 * CB1[5].y) + (_398 * (0.5 * CB1[5].z)), 1.0) * _411;
    vec3 _413 = _412.xyz;
    vec3 _424 = _398 * mat3(_411[0].xyz, _411[1].xyz, _411[2].xyz);
    float _440 = dot(_424, -CB0[11].xyz);
    gl_Position = vec4(_412.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = TEXCOORD0;
    VARYING1 = CB1[4];
    VARYING2 = (CB0[10].xyz * clamp(_440, 0.0, 1.0)) + (CB0[12].xyz * clamp(-_440, 0.0, 1.0));
    VARYING3 = vec4(((_413 + (_424 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = CB0[7].xyz - _413;
}

