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
    vec3 _509 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _520 = int(COLOR1.x) * 3;
    int _526 = _520 + 1;
    int _531 = _520 + 2;
    float _536 = dot(CB1[_520 * 1 + 0], POSITION);
    float _539 = dot(CB1[_526 * 1 + 0], POSITION);
    float _542 = dot(CB1[_531 * 1 + 0], POSITION);
    vec3 _543 = vec3(_536, _539, _542);
    float _547 = dot(CB1[_520 * 1 + 0].xyz, _509);
    float _551 = dot(CB1[_526 * 1 + 0].xyz, _509);
    float _555 = dot(CB1[_531 * 1 + 0].xyz, _509);
    vec3 _556 = vec3(_547, _551, _555);
    vec3 _591 = -CB0[11].xyz;
    float _592 = dot(_556, _591);
    vec3 _599 = CB0[7].xyz - _543;
    vec4 _623 = vec4(_536, _539, _542, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _628 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _633 = vec4(TEXCOORD1, 0.0, 0.0);
    float _663 = _623.w;
    vec4 _680 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _663) * CB0[24].y);
    vec4 _835 = vec4(_536, _539, _542, 0.0);
    _835.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = _623;
    VARYING0 = vec4(_628.x, _628.y, _680.x, _680.y);
    VARYING1 = vec4(_633.x, _633.y, _680.z, _680.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((_543 + (_556 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(_599, _663);
    VARYING5 = vec4(_547, _551, _555, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_592, 0.0)) + (CB0[12].xyz * max(-_592, 0.0)), ((float(_592 > 0.0) * pow(clamp(dot(_556, normalize(_591 + normalize(_599))), 0.0, 1.0), COLOR1.z)) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _835;
    VARYING8 = NORMAL.w;
}

