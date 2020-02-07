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
out vec3 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out float VARYING7;

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
    vec4 v11 = vec4(v4, v5, v6, 1.0);
    vec4 v12 = v11 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v13 = vec4(TEXCOORD1.x, TEXCOORD1.y, vec4(0.0).z, vec4(0.0).w);
    v13.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    float v14 = v12.w;
    vec4 v15 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[23].z) + vec4((0.5 * v14) * CB0[23].y);
    vec4 v16 = vec4(dot(CB0[20], v11), dot(CB0[21], v11), dot(CB0[22], v11), 0.0);
    v16.w = COLOR1.z * 0.0039215688593685626983642578125;
    vec4 v17 = vec4(v8, v9, v10, 0.0);
    v17.w = inversesqrt(0.1745329201221466064453125 * COLOR1.y);
    gl_Position = v12;
    VARYING0 = vec4(TEXCOORD0.x, TEXCOORD0.y, v15.x, v15.y);
    VARYING1 = vec4(v13.x, v13.y, v15.z, v15.w);
    VARYING2 = COLOR0;
    VARYING3 = ((v7 + (vec3(v8, v9, v10) * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING4 = vec4(CB0[7].xyz - v7, v14);
    VARYING5 = v17;
    VARYING6 = v16;
    VARYING7 = NORMAL.w;
}

