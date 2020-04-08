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
    vec4 Exposure_DoFDistance;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
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
    float debugFlags;
};

uniform vec4 CB0[47];
uniform vec4 CB2[74];
uniform vec4 CB1[1];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec4 TEXCOORD0;
attribute vec4 TEXCOORD1;
varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;
varying vec3 VARYING8;

void main()
{
    vec3 v0 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 v1 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v2 = vec4(v0, 1.0);
    vec4 v3 = v2 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v4 = v3;
    v4.z = v3.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 v5 = CB0[7].xyz - v0;
    int v6 = int(TEXCOORD1.x);
    int v7 = 36 + int(TEXCOORD0.x);
    int v8 = int(TEXCOORD1.y);
    int v9 = 36 + int(TEXCOORD0.y);
    int v10 = int(TEXCOORD1.z);
    int v11 = 36 + int(TEXCOORD0.z);
    vec4 v12 = vec4(0.0);
    v12.w = (abs(POSITION.w) > 3.0) ? 0.0 : 1.0;
    bvec3 v13 = equal(mod(abs(POSITION.www), vec3(4.0)), vec3(1.0, 2.0, 3.0));
    vec3 v14 = vec3(v13.x ? vec3(1.0).x : vec3(0.0).x, v13.y ? vec3(1.0).y : vec3(0.0).y, v13.z ? vec3(1.0).z : vec3(0.0).z);
    bvec3 v15 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = v4;
    VARYING0 = vec4(v14.x, v14.y, v14.z, v12.w);
    VARYING1 = vec4((vec2(dot(v0, CB2[v6 * 1 + 0].xyz), dot(v0, CB2[(18 + v6) * 1 + 0].xyz)) * CB2[v7 * 1 + 0].x) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[v7 * 1 + 0].y), (vec2(dot(v0, CB2[v8 * 1 + 0].xyz), dot(v0, CB2[(18 + v8) * 1 + 0].xyz)) * CB2[v9 * 1 + 0].x) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[v9 * 1 + 0].y));
    VARYING2 = vec4(CB2[v7 * 1 + 0].zw, CB2[v9 * 1 + 0].zw);
    VARYING3 = vec4((vec2(dot(v0, CB2[v10 * 1 + 0].xyz), dot(v0, CB2[(18 + v10) * 1 + 0].xyz)) * CB2[v11 * 1 + 0].x) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[v11 * 1 + 0].y), CB2[v11 * 1 + 0].zw);
    VARYING4 = ((v0 + (v1 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING5 = vec4(dot(CB0[20], v2), dot(CB0[21], v2), dot(CB0[22], v2), (CB0[13].x * length(v5)) + CB0[13].y);
    VARYING6 = v1;
    VARYING7 = vec4(v5, v3.w);
    VARYING8 = vec3(v15.x ? vec3(1.0).x : vec3(0.0).x, v15.y ? vec3(1.0).y : vec3(0.0).y, v15.z ? vec3(1.0).z : vec3(0.0).z);
}

