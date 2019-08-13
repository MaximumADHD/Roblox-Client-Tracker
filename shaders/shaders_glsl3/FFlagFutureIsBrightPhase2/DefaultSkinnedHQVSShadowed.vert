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
    vec3 _455 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _466 = int(COLOR1.x) * 3;
    int _472 = _466 + 1;
    int _477 = _466 + 2;
    float _482 = dot(CB1[_466 * 1 + 0], POSITION);
    float _485 = dot(CB1[_472 * 1 + 0], POSITION);
    float _488 = dot(CB1[_477 * 1 + 0], POSITION);
    vec3 _489 = vec3(_482, _485, _488);
    float _493 = dot(CB1[_466 * 1 + 0].xyz, _455);
    float _497 = dot(CB1[_472 * 1 + 0].xyz, _455);
    float _501 = dot(CB1[_477 * 1 + 0].xyz, _455);
    vec3 _502 = vec3(_493, _497, _501);
    float _538 = dot(_502, -CB0[11].xyz);
    vec4 _549 = vec4(_482, _485, _488, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _554 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _559 = vec4(TEXCOORD1, 0.0, 0.0);
    float _589 = _549.w;
    vec4 _606 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _589) * CB0[24].y);
    vec4 _752 = vec4(_482, _485, _488, 0.0);
    _752.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = _549;
    VARYING0 = vec4(_554.x, _554.y, _606.x, _606.y);
    VARYING1 = vec4(_559.x, _559.y, _606.z, _606.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((_489 + (_502 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - _489, _589);
    VARYING5 = vec4(_493, _497, _501, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_538, 0.0)) + (CB0[12].xyz * max(-_538, 0.0)), (float(_538 > 0.0) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _752;
    VARYING8 = NORMAL.w;
}

