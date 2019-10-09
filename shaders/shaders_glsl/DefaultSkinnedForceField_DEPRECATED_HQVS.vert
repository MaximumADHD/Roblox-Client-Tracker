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

uniform vec4 CB0[31];
uniform vec4 CB1[216];
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
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v1 = int(COLOR1.x) * 3;
    int v2 = v1 + 1;
    int v3 = v1 + 2;
    float v4 = dot(CB1[v1 * 1 + 0], POSITION);
    float v5 = dot(CB1[v2 * 1 + 0], POSITION);
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    vec3 v7 = vec3(v4, v5, v6);
    float v8 = dot(CB1[v1 * 1 + 0].xyz, v0);
    float v9 = dot(CB1[v2 * 1 + 0].xyz, v0);
    float v10 = dot(CB1[v3 * 1 + 0].xyz, v0);
    vec3 v11 = vec3(v8, v9, v10);
    float v12 = dot(v11, -CB0[11].xyz);
    vec4 v13 = vec4(v4, v5, v6, 1.0);
    vec4 v14 = v13 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v15 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 v16 = vec4(TEXCOORD1, 0.0, 0.0);
    v16.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    float v17 = v14.w;
    vec4 v18 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[23].z) + vec4((0.5 * v17) * CB0[23].y);
    vec4 v19 = vec4(dot(CB0[20], v13), dot(CB0[21], v13), dot(CB0[22], v13), 0.0);
    v19.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = v14;
    VARYING0 = vec4(v15.x, v15.y, v18.x, v18.y);
    VARYING1 = vec4(v16.x, v16.y, v18.z, v18.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((v7 + (v11 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - v7, v17);
    VARYING5 = vec4(v8, v9, v10, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(v12, 0.0)) + (CB0[12].xyz * max(-v12, 0.0)), (float(v12 > 0.0) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[23].w);
    VARYING7 = v19;
    VARYING8 = NORMAL.w;
}

