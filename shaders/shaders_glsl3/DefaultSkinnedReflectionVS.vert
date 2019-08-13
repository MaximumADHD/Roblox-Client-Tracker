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
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 COLOR0;
in vec4 COLOR1;
in vec4 TEXCOORD3;
out vec4 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out float VARYING8;

void main()
{
    vec3 _534 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _545 = int(COLOR1.x) * 3;
    int _551 = _545 + 1;
    int _556 = _545 + 2;
    float _561 = dot(CB1[_545 * 1 + 0], POSITION);
    float _564 = dot(CB1[_551 * 1 + 0], POSITION);
    float _567 = dot(CB1[_556 * 1 + 0], POSITION);
    vec3 _568 = vec3(_561, _564, _567);
    float _572 = dot(CB1[_545 * 1 + 0].xyz, _534);
    float _576 = dot(CB1[_551 * 1 + 0].xyz, _534);
    float _580 = dot(CB1[_556 * 1 + 0].xyz, _534);
    vec3 _581 = vec3(_572, _576, _580);
    vec3 _616 = -CB0[11].xyz;
    float _617 = dot(_581, _616);
    vec3 _624 = CB0[7].xyz - _568;
    vec4 _645 = vec4(_561, _564, _567, 1.0);
    vec4 _648 = _645 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _653 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _658 = vec4(TEXCOORD1, 0.0, 0.0);
    float _684 = _648.w;
    vec4 _701 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _684) * CB0[24].y);
    vec4 _876 = vec4(dot(CB0[21], _645), dot(CB0[22], _645), dot(CB0[23], _645), 0.0);
    _876.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = _648;
    VARYING0 = vec4(_653.x, _653.y, _701.x, _701.y);
    VARYING1 = vec4(_658.x, _658.y, _701.z, _701.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((_568 + (_581 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(_624, _684);
    VARYING5 = vec4(_572, _576, _580, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_617, 0.0)) + (CB0[12].xyz * max(-_617, 0.0)), ((float(_617 > 0.0) * pow(clamp(dot(_581, normalize(_616 + normalize(_624))), 0.0, 1.0), COLOR1.z)) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _876;
    VARYING8 = NORMAL.w;
}

