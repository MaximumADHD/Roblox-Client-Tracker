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
    vec3 _515 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 _547 = -CB0[11].xyz;
    float _548 = dot(_515, _547);
    vec3 _555 = CB0[7].xyz - POSITION.xyz;
    vec4 _576 = vec4(POSITION.xyz, 1.0);
    vec4 _579 = _576 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _584 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _589 = vec4(TEXCOORD1, 0.0, 0.0);
    float _615 = _579.w;
    vec4 _619 = vec4(_555, _615);
    vec4 _632 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _615) * CB0[24].y);
    float _652 = COLOR0.w * 2.0;
    float _654 = clamp(_652 - 1.0, 0.0, 1.0);
    float _658 = clamp(_652, 0.0, 1.0);
    float _676 = (clamp(2.0 - (dot(_515, normalize(_619.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * _658;
    vec4 _847 = COLOR0;
    _847.w = mix(_654, 1.0, _676);
    vec4 _849 = vec4(dot(CB0[21], _576), dot(CB0[22], _576), dot(CB0[23], _576), 0.0);
    _849.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * _654, 1.0, _676);
    gl_Position = _579;
    VARYING0 = vec4(_584.x, _584.y, _632.x, _632.y);
    VARYING1 = vec4(_589.x, _589.y, _632.z, _632.w);
    VARYING2 = _847;
    VARYING3 = vec4(((POSITION.xyz + (_515 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = _619;
    VARYING5 = vec4(_515, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_548, 0.0)) + (CB0[12].xyz * max(-_548, 0.0)), (((float(_548 > 0.0) * pow(clamp(dot(_515, normalize(_547 + normalize(_555))), 0.0, 1.0), COLOR1.z)) * _658) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _849;
    VARYING8 = NORMAL.w;
}

