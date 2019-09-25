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
    vec3 Exposure;
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
attribute vec4 TEXCOORD2;
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
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v2 = vec4(0.0);
    v2.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v3 = vec4(POSITION.xyz, 1.0);
    vec4 v4 = v3 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v5 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 v6 = vec4(TEXCOORD1, 0.0, 0.0);
    float v7 = v4.w;
    vec4 v8 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * v7) * CB0[24].y);
    vec4 v9 = vec4(dot(CB0[21], v3), dot(CB0[22], v3), dot(CB0[23], v3), 0.0);
    v9.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = v4;
    VARYING0 = vec4(v5.x, v5.y, v8.x, v8.y);
    VARYING1 = vec4(v6.x, v6.y, v8.z, v8.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((POSITION.xyz + (v0 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - POSITION.xyz, v7);
    VARYING5 = vec4(v0, COLOR1.z);
    VARYING6 = vec4(v1.x, v1.y, v1.z, v2.w);
    VARYING7 = v9;
    VARYING8 = NORMAL.w;
}

