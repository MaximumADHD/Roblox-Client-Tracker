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
attribute vec4 TEXCOORD3;
varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec3 _410 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    float _447 = dot(_410, -CB0[11].xyz);
    vec4 _455 = vec4(POSITION.xyz, 1.0);
    vec4 _458 = _455 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _463 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _677 = vec4(TEXCOORD1, 0.0, 0.0);
    _677.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    float _496 = _458.w;
    vec4 _513 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _496) * CB0[24].y);
    vec4 _682 = vec4(dot(CB0[21], _455), dot(CB0[22], _455), dot(CB0[23], _455), 0.0);
    _682.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = _458;
    VARYING0 = vec4(_463.x, _463.y, _513.x, _513.y);
    VARYING1 = vec4(_677.x, _677.y, _513.z, _513.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((POSITION.xyz + (_410 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - POSITION.xyz, _496);
    VARYING5 = vec4(_410, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_447, 0.0)) + (CB0[12].xyz * max(-_447, 0.0)), (float(_447 > 0.0) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _682;
    VARYING8 = NORMAL.w;
}

