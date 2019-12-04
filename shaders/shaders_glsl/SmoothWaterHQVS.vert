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

struct Params
{
    vec4 WaveParams;
    vec4 WaterColor;
    vec4 WaterParams;
};

uniform vec4 CB0[47];
uniform vec4 CB3[3];
uniform vec4 CB2[74];
uniform vec4 CB1[1];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec4 TEXCOORD0;
attribute vec4 TEXCOORD1;
varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec3 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying vec4 VARYING8;

void main()
{
    vec3 v0 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 v1 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    bvec3 v2 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    vec3 v3 = vec3(v2.x ? vec3(1.0).x : vec3(0.0).x, v2.y ? vec3(1.0).y : vec3(0.0).y, v2.z ? vec3(1.0).z : vec3(0.0).z);
    float v4 = dot(v3, TEXCOORD0.xyz) * 0.0039215688593685626983642578125;
    float v5 = v0.z;
    float v6 = v0.x;
    float v7 = v0.y + (((sin(((v5 - v6) * CB3[0].x) - CB3[0].y) + sin(((v5 + v6) * CB3[0].x) + CB3[0].y)) * CB3[0].z) * (v4 * clamp(1.0 - (dot(v0 - CB0[7].xyz, -CB0[6].xyz) * CB0[23].y), 0.0, 1.0)));
    vec3 v8 = v0;
    v8.y = v7;
    vec4 v9 = vec4(v6, v7, v5, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v10 = v9;
    v10.z = v9.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 v11 = CB0[7].xyz - v8;
    int v12 = int(TEXCOORD1.x);
    int v13 = int(TEXCOORD1.y);
    int v14 = int(TEXCOORD1.z);
    vec4 v15 = vec4(v3.x, v3.y, v3.z, vec4(0.0).w);
    v15.w = v4;
    float v16 = v9.w;
    bvec3 v17 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    vec2 v18 = (v10.xy * 0.5) + vec2(0.5 * v16);
    gl_Position = v10;
    VARYING0 = v15;
    VARYING1 = vec3(v17.x ? vec3(1.0).x : vec3(0.0).x, v17.y ? vec3(1.0).y : vec3(0.0).y, v17.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING2 = (vec2(dot(v8, CB2[v12 * 1 + 0].xyz), dot(v8, CB2[(18 + v12) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING3 = (vec2(dot(v8, CB2[v13 * 1 + 0].xyz), dot(v8, CB2[(18 + v13) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING4 = (vec2(dot(v8, CB2[v14 * 1 + 0].xyz), dot(v8, CB2[(18 + v14) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING5 = ((v8 + (v1 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING6 = vec4(v1, (CB0[13].x * length(v11)) + CB0[13].y);
    VARYING7 = vec4(v11, v16);
    VARYING8 = vec4(v18.x, v18.y, v10.z, v10.w);
}

