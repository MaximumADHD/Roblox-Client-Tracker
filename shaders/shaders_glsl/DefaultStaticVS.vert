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
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying float VARYING7;

void main()
{
    vec3 _418 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 _450 = -CB0[11].xyz;
    float _451 = dot(_418, _450);
    vec3 _458 = CB0[7].xyz - POSITION.xyz;
    vec4 _479 = vec4(POSITION.xyz, 1.0);
    vec4 _482 = _479 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    gl_Position = _482;
    VARYING0 = vec4(TEXCOORD0, 0.0, 0.0);
    VARYING1 = vec4(TEXCOORD1, 0.0, 0.0);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((POSITION.xyz + (_418 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(_458, _482.w);
    VARYING5 = vec4((CB0[10].xyz * max(_451, 0.0)) + (CB0[12].xyz * max(-_451, 0.0)), ((float(_451 > 0.0) * pow(clamp(dot(_418, normalize(_450 + normalize(_458))), 0.0, 1.0), COLOR1.z)) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING6 = vec4(dot(CB0[21], _479), dot(CB0[22], _479), dot(CB0[23], _479), 0.0);
    VARYING7 = NORMAL.w;
}

