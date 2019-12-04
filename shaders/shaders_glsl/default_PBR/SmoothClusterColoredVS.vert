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
uniform vec4 CB3[1];
uniform vec4 CB4[36];
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

void main()
{
    vec3 v0 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 v1 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v2 = vec4(v0, 1.0);
    vec4 v3 = v2 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v4 = v3;
    v4.z = v3.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    int v5 = int(TEXCOORD1.x);
    int v6 = 36 + int(TEXCOORD0.x);
    int v7 = int(TEXCOORD1.y);
    int v8 = 36 + int(TEXCOORD0.y);
    int v9 = int(TEXCOORD1.z);
    int v10 = 36 + int(TEXCOORD0.z);
    vec4 v11 = vec4(0.0);
    v11.w = CB3[0].z;
    bvec3 v12 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    vec3 v13 = vec3(v12.x ? vec3(1.0).x : vec3(0.0).x, v12.y ? vec3(1.0).y : vec3(0.0).y, v12.z ? vec3(1.0).z : vec3(0.0).z);
    float v14 = dot(v1, -CB0[11].xyz);
    gl_Position = v4;
    VARYING0 = vec4(v13.x, v13.y, v13.z, v11.w);
    VARYING1 = vec4((vec2(dot(v0, CB2[v5 * 1 + 0].xyz), dot(v0, CB2[(18 + v5) * 1 + 0].xyz)) * CB2[v6 * 1 + 0].x) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[v6 * 1 + 0].y), (vec2(dot(v0, CB2[v7 * 1 + 0].xyz), dot(v0, CB2[(18 + v7) * 1 + 0].xyz)) * CB2[v8 * 1 + 0].x) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[v8 * 1 + 0].y));
    VARYING2 = vec4(CB2[v6 * 1 + 0].zw, CB2[v8 * 1 + 0].zw);
    VARYING3 = vec4((vec2(dot(v0, CB2[v9 * 1 + 0].xyz), dot(v0, CB2[(18 + v9) * 1 + 0].xyz)) * CB2[v10 * 1 + 0].x) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[v10 * 1 + 0].y), CB2[v10 * 1 + 0].zw);
    VARYING4 = ((v0 + (v1 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING5 = vec4(dot(CB0[20], v2), dot(CB0[21], v2), dot(CB0[22], v2), (CB0[13].x * length(CB0[7].xyz - v0)) + CB0[13].y);
    VARYING6 = (CB0[10].xyz * max(v14, 0.0)) + (CB0[12].xyz * max(-v14, 0.0));
    VARYING7 = ((CB4[int(TEXCOORD0.x + 0.5) * 1 + 0] * v13.x) + (CB4[int(TEXCOORD0.y + 0.5) * 1 + 0] * v13.y)) + (CB4[int(TEXCOORD0.z + 0.5) * 1 + 0] * v13.z);
}

